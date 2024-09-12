cls

$websites = @("google.com","facebook.com","youtube.com","instagram.com","flipkart.com")

foreach ( $w in $websites){
    
    Test-Connection $w -Count 1 -ea SilentlyContinue

}