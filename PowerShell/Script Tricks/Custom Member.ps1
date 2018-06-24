#Use custom Members
$Runtime =  @{name="Runtime";Expression={(get-date) - $_.StartTime}}  Creates variable containing the custom member
get-process | Select-Object Name,$Runtime                                    Applying the custom member