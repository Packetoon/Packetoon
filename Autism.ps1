Add-Type -AssemblyName PresentationFramework
$result = [System.Windows.MessageBox]::Show('You have Autism', 'Daily Reminder', 'YesNo', 'Information')

switch ($result){
    'Yes'{
        [System.Windows.MessageBox]::Show('Thank you for your survey, sending results to Hot Girls on campus.', 'Thank You!!','OK','Information')
    }
    'No'{
        do{
            $Result = [System.Windows.MessageBox]::Show('Admit it, you have autism!!', 'Daily Reminder','YesNo','Information')
            if ($Result -eq 'Yes'){
                [System.Windows.MessageBox]::Show('Thank you for your submission, sending results to Hot Girls on campus.', 'Thank You!!','OK','Information')
                break
            }
        } while ($True)
    }
}

