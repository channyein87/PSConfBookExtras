# Define three values that are not a proper integers (but are valid strings)
$BadInteger1 = '      '     # full of whitespace
$BadInteger2 = ''           # empty
$BadInteger2 = $Null        # null

# Validate them
$Valid1 = [System.String]::IsNullOrWhiteSpace($BadInteger1)
$Valid2 = [System.String]::IsNullOrEmpty($BadInteger2)
$Valid3 = [System.String]::IsNullOrEmpty($BadInteger3)

# Display results
Write-Output "[$BadInteger1] is Null/Empty/Whitespace: [$Valid1]"
Write-Output ["$BadInteger2] is Null/Empty: [$Valid2]"
Write-Output ["$BadInteger3] is Null/Empty: [$Valid3]"

#  Expected output from this fragment:
#
#  [      ] is Null/Empty/Whitespace: [True]
#  [] is Null/Empty: [True]
#  [] is Null/Empty: [True]

