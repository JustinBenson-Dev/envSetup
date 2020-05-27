# install Chocolatey
# powershell -executionpolicy bypass -file 

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# set variables 
  $apps = @(
    '7zip'
    'brave'
    'chromium'
    'chrome-remote-desktop-host'
    #'cygwin'
    'dotnetfx'
    'etcher'
    'everything'
    'git'
    'keybase'
    'kindle' #fix pop up/not silent
    'microsoft-edge'
    'microsoft-windows-terminal'
    'mpc-hc'
    'netfx-4.7.1-devpack'
    'notepadplusplus'
    'plex' # fix pop up/not silent
    'rsat' # -params '"/AD /GP /RD /FS"'' ##W10 1809+ (flags not working, probably use of '' in foreach loop.)
    'rufus'
    'sendtokindle' #fix pop up/not silent
    'slack'
    #'sysinternals'
    'treesizefree'
    'unifying'
    'vlc'
    'vscode'
    #'wget'
    #'windirstat'
    'youtube-dl'
    'zoom'
     )

# foreach loop to install each app via calls to chocolatey
  foreach ($item in $apps)
    {
      choco install $item -y
    }

# install powershell 7 #https://github.com/PowerShell/PowerShell/blob/master/tools/install-powershell.ps1#
  iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"  #fix pop up/not silent

# other common things to install 
  # 'crystaldiskmark'
  # 'hdhomerun-view'
  # 'docker-cli'
  # 'docker-desktop'
  # 'caprine'
  # 'picard'
  
  # reference: #https://github.com/PowerShell/PowerShell/blob/master/tools/install-powershell.ps1#
