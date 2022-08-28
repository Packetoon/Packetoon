<#File Destination C:\Users\Public\Documents #>
<#This script will constantly display a message box that wont go away until the person accepts the fact that they have autism. #>
Add-Type -AssemblyName PresentationFramework
$result = [System.Windows.MessageBox]::Show('You have Autism', 'Daily Reminder', 'YesNo', 'Information')

switch ($result){
    'Yes'{
        [System.Windows.MessageBox]::Show('Thank you for your survey, sending results to Hot Girls on campus.', 'Thank You!!','OK','Information')
    }
    'No'{
        do{
            $Result = [System.Windows.MessageBox]::Show('Stop lying to yourself', 'Daily Reminder','YesNo','Information')
            if ($Result -eq 'Yes'){
                [System.Windows.MessageBox]::Show('Thank you for your submission, sending results to Hot Girls on campus.', 'Thank You!!','OK','Information')
                break
            }
        } while ($True)
    }
}
