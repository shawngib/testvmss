Invoke-WebRequest "https://go.microsoft.com/fwlink/?linkid=517856" -UseBasicParsing -OutFile appinsights.msi 
Start-Process -filepath "appinsights.msi" -ArgumentList "/quiet" -PassThru | Wait-Process Import-Module 'C:\Program Files\Microsoft Application Insights\Status Monitor\PowerShell\Microsoft.Diagnostics.Agent.StatusMonitor.PowerShell.dll'
Start-ApplicationInsightsMonitoring -Name 'default web site' -InstrumentationKey '32a9d3ce-95a1-428c-bf09-9d33d7983fe9'
