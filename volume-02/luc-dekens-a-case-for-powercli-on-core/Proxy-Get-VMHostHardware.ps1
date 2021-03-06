[CmdletBinding(DefaultParameterSetName='Default')]
param(
    [Parameter(ParameterSetName='GetById')]
    [string[]]
    ${Id},

    [Parameter(ParameterSetName='Default', ValueFromPipeline=$true)]
    [VMware.VimAutomation.ViCore.Types.V1.Inventory.VMHost[]]
    ${VMHost},

    [switch]
    ${WaitForAllData},

    [switch]
    ${SkipCACheck},

    [switch]
    ${SkipCNCheck},

    [switch]
    ${SkipRevocationCheck},

    [switch]
    ${SkipAllSslCertificateChecks},

    [VMware.VimAutomation.ViCore.Types.V1.VIServer[]]
    ${Server})

begin
{
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer))
        {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand('VMware.VimAutomation.Core\Get-VMHostHardware', [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters }
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($myInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process
{
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end
{
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
<#

.ForwardHelpTargetName VMware.VimAutomation.Core\Get-VMHostHardware
.ForwardHelpCategory Cmdlet

#>

