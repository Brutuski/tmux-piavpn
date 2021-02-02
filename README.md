<h2 align="center"> Private Internet Access Tmux Plugin</h2>
<p align="center"><img src="https://raw.githubusercontent.com/Brutuski/tmux-piavpn/c4b5c5b8a01e0e81d8bc86bcb76cd72c4490e57c/assets/Logo.svg" width="200" height="200"><p>
<p align="center">
        <img alt="Status" src="https://img.shields.io/badge/Maintained-Yes-44B273.svg">
        <img alt="License" src="https://img.shields.io/badge/LICENSE-MIT-1D918B.svg">
</p>

### Index
* [Getting Started](#getting-started)
* [Screenshots & Demo](#screenshots)
* [Requirements](#requirements)
* [Installation](#installation)
* [Usage](#usage)
* [Options](#options)
* [Example](#example)
* [Changelog](#changelog)
* [Issues](#issues)
* [License](#license)
* [Logo Credit](#logo-credit)

#### Getting Started
Monitor the status of your [Private Internet Access](https://www.privateinternetaccess.com/) VPN from your [Tmux](https://github.com/tmux/tmux) statusbar.
With this plugin, you can display the following information:
* Status of your VPN connection : `#{pia_status}`
* VPN IP Address : `#{pia_ip}`
* Connected server's country-name : `#{pia_region}`
* Connected server's region-flag : `#{pia_flag}`
* Status of Port Forwarding : `#{pia_port}`

#### Screenshots
<p align="center"><img src="https://raw.githubusercontent.com/Brutuski/tmux-piavpn/main/assets/demo.gif"><p>
<p align="center"><img src="https://raw.githubusercontent.com/Brutuski/tmux-piavpn/main/assets/screenshot2.png"><p>
<p align="center"><img src="https://raw.githubusercontent.com/Brutuski/tmux-piavpn/main/assets/screenshot1.png"><p>
<p align="center"><img src="https://raw.githubusercontent.com/Brutuski/tmux-piavpn/main/assets/screenshot3.png"><p>

Format strings can be edited to show as much informaion as the user wants.
Terminal and Tmux theme shown here is [Lighthaus](https://github.com/lighthaus-theme)

_Tmux Lighthaus theme coming soon_

#### Requirements
- [Private Internet Access](https://www.privateinternetaccess.com/) VPN
- This plugin relies on `piactl`to work.
  For `piactl` to fully work, the PIA client must be running, this is a requirment of the VPN service itself. For more information refer to the official [helpdesk source](https://www.privateinternetaccess.com/helpdesk/kb/articles/pia-desktop-command-line-interface).
- [TPM](https://github.com/tmux-plugins/tpm) is the recommended method of installing this plugin

#### Installation
**Recommended method:**
- Add plugin to your [TPM]() plugins in your `.tmux.conf`
    * ``` vim
        set -g @plugin 'Brutuski/tmux-piavpn'
      ```
- While inside a tmux session press `prefix + I` to reload and install the plugin.
- Add the desired _format strings_ to your status as such
    * ``` vim
        #{pia_status} #{pia_flag}
      ```
- Reload the tmux config and the changes should take effect.

**Manual Installation:**
- Clone this repo
    * ``` vim
        git clone https://github.com/Brutuski/tmux-piavpn.git ~/.tmux/tmux-piavpn
      ```
- Add the following line to the bottom of your tmux config
    * ``` vim
        run-shell ~/.tmux/tmux-piavpn/pia.tmux
      ```
- Save the file and reload your tmux session.

#### Usage
- Add the desired _format strings_ to your status as such. All supported format strings listed below in [options](#options)
    * ``` vim
        #{pia_status} #{pia_region}
      ```
- Reload the tmux config and the changes should take effect.

#### Options
Options available for changing the status text:
``` vim
# Format string for connected status
# Default text `Connected`
set -g @piavpn_text_connected "Con"

# Format string for disconnected status
# Default text `Disconnected`
set -g @piavpn_text_disconnected "Dis"

# Format string for connecting status
# Default text `Connecting...`
set -g @piavpn_text_connecting "Con..."

# Format string for disconnecting status
# Default text `Disconnecting...`
set -g @piavpn_text_disconnecting "Dis..."

# Format string for interrupted status
# Default text `Interrupted`
set -g @piavpn_text_interrupted "Intr."

# Format string for reconnecting status
# Default text `Reconnecting`
set -g @piavpn_text_reconnecting "Recon..."

# Format string for disconnecting to reconnect status
# Default text `Connecting again...`
set -g @piavpn_text_disconnecting_reconnecting "Con. again..."

# Format string for still connecting status
# Default text `Reconnecting...`
set -g @piavpn_text_still_reconnecting "Recon. again..."
```

#### Example
Format strings can be edited to what the user needs.
_fg_ and _bg_ colors can be defined by the user as well.
``` vim
# PIA VPN
set -g @piavpn_text_connected "Conn."
set -g @piavpn_text_disconnected "Dis."
set -g @piavpn_text_connecting "Conn..."
set -g @piavpn_text_disconnecting "Dis..."
set -g @piavpn_text_interrupted "Interr."
set -g @piavpn_text_reconnecting "Reconn..."
set -g @piavpn_text_disconnecting_reconnecting "Conn. again..."
set -g @piavpn_text_still_reconnecting "Reconn. again..."

set -g status-left "......#[fg=#21252D,bg=#50C16E] PIA: #{pia_status} #{pia_flag}  "
```

#### Changelog
``` vim
v1.0.0
```
Changes can be tracked in the [CHANGELOG](https://github.com/Brutuski/tmux-piavpn/blob/main/CHANGELOG.md)

#### Issues
Please report any bugs or issues [here](https://github.com/Brutuski/tmux-piavpn/issues)

#### License
[MIT](https://github.com/Brutuski/tmux-piavpn/blob/main/LICENSE)

_Copyright (c) 2021 Adhiraj Sirohi_ 

#### Logo Credit
Logo was made by [Vasundhara Sharma](https://vasdesigns.de/) 
<a href="https://www.behance.net/vasundhsharma" target="blank"><img align="center" src="https://raw.githubusercontent.com/detain/svg-logos/780f25886640cef088af994181646db2f6b1a3f8/svg/behance-1.svg" alt="https://www.behance.net/vasundhsharma" height="40" width="40"/></a> <a href="https://keybase.io/vas_sharma" target="blank"><img align="center" src="https://www.vectorlogo.zone/logos/keybase/keybase-icon.svg" alt="https://keybase.io/vas_sharma" height="40" width="40"/></a>
