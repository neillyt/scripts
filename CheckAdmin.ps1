﻿

function maketarget {


if (([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
    MakeTarget
}
else 
{
    Add-Type -AssemblyName System.Windows.Forms