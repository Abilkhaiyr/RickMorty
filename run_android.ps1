param(
    [string]$Device = 'emulator-5554',
    [string]$JavaHome = "$env:ProgramFiles/Android/Android Studio/jbr"
)

$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
$previousJavaOptions = $env:JAVA_TOOL_OPTIONS
try {
    # Keep the SDK and system truststores unchanged. Trust only the network CA
    # that is already installed in this computer's Windows root store.
    $certificate = Get-ChildItem Cert:/LocalMachine/Root |
        Where-Object Subject -Like '*Unified State Internet Access Gateway*' |
        Select-Object -First 1
    if ($certificate) {
        $directory = Join-Path $PSScriptRoot '.dart_tool/local-certificates'
        New-Item -ItemType Directory -Force $directory | Out-Null
        $truststore = Join-Path $directory 'cacerts'
        $certificatePath = Join-Path $directory 'network-root.cer'
        Copy-Item (Join-Path $JavaHome 'lib/security/cacerts') $truststore -Force
        [IO.File]::WriteAllBytes($certificatePath, $certificate.RawData)
        & "$JavaHome/bin/keytool.exe" -importcert -noprompt `
            -alias windows-network-root -file $certificatePath `
            -keystore $truststore -storepass changeit
        if ($LASTEXITCODE -ne 0) { throw 'Could not prepare the local Java truststore.' }
        $env:JAVA_TOOL_OPTIONS = "$previousJavaOptions -Djavax.net.ssl.trustStore=`"$truststore`" -Djavax.net.ssl.trustStorePassword=changeit"
    }
    flutter run -d $Device
    $runExitCode = $LASTEXITCODE
} finally {
    $env:JAVA_TOOL_OPTIONS = $previousJavaOptions
    Pop-Location
}
exit $runExitCode
