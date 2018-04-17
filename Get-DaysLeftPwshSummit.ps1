function Get-DaysLeftPwshSummit {
 
  <#
      Created By: Bill Kindle
      Twitter: @BillKindle

      Description:
      This is just a simple function you can add to your PowerShell profile
      as a reminder to register for PowerShell+DevOps Summit.

  #>

  $Year = (Get-Date).Year
  $Today = (get-date).DayOfYear
  # When this script was created in 2018, next registration day was November 1st.
  $RegDay = (get-date -Month 11 -Day 1 -Year $Year)

  $Days = ($RegDay.DayOfYear  - $Today)

  # write-Host is terrible, but hey, you are supposed to be looking at this. 
  Write-Host -ForegroundColor Black -Backgroundcolor White `
    "The next PowerShell + DevOps Summit is April 29th 2019"

  Write-Host -ForegroundColor White -BackgroundColor Blue `
    "There are $Days days left until PowerShell Summit 2019 Registration opens on $(Get-Date -date $RegDay.Date -Format MM/dd/yyyy)!"    
}
