﻿ # nslookup b132-2.upb.pitt.edu 136.142.57.10

 # 136.142.57.10 -> Pittsburgh's DNS Server
 # 136.142.188.73 ->
 # 136.142.188.76 ->

 function FindComputer {

    $all = $null

    if (Test-Path $env:userprofile\Desktop\FreeMachines.txt)
    {
        Remove-Item $env:userprofile\Desktop\FreeMachines.txt
        New-Item $env:userprofile\Desktop\FreeMachines.txt -ItemType File
        Write-Output "Free machines found between 150.212.132.1 - 150.121.133.255" | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
        Get-Date | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
        $env:username | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
    }
    else 
    {
        New-Item $env:userprofile\Desktop\FreeMachines.txt -ItemType File
        write-Output "Free machines found between 150.212.132.1 - 150.121.133.255" | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
        Get-Date | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
    }


    $x = 132
                    $brad = Resolve-DnsName -Name 150.212.$x.$y -Server 150.212.138.69,150.212.138.70 -ErrorAction SilentlyContinue
                    Write-Output ("Potential machine 150.212.$x.$y (no ping response)") | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
                    Write-Output ("No ARP entries found for 150.212.$x.$y") | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
                    Write-Output "" | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
                    if ([string]::IsNullOrWhiteSpace($pitt))
                    {
                        Write-Output ("150.212.$x.$y has no DNS records from Pittsburgh`'s DNS server (136.142.57.10)") | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
                        Write-Output ("150.212.$x.$y has no DNS records from Bradford`'s DNS server (150.212.138.69)") | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append
                        Write-Output "" | Out-File $env:userprofile\Desktop\FreeMachines.txt -Append