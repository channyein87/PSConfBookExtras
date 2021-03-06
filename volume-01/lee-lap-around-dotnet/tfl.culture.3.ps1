# First create the value
$MyValue = 420042.21

# Now create several CultureInfo objects
$Args =  @{}
$Args.TypeName = 'System.Globalization.CultureInfo'
$Args.ArgumentList  = 'En-GB'

# British culture
$UKCulture = New-Object @Args

# US Culture
$Args.ArgumentList = 'En-US'
$USCulture = New-Object @Args

# Norwegian Culture
$Args.ArgumentList = 'nn-NO'
$NorwayCulture = New-Object @Args

# Now format the value using these culture objects
$MyValue.ToString('C2', $UKCulture)
$MyValue.ToString('C2', $USCulture)
$MyValue.ToString('C2', $NorwayCulture)

# This produces the following output:
#
#  Â£420,042.21
#  $420,042.21
#  420Â 042,21 kr
