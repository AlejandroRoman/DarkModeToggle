# DarkModeToggle  🌙
<img align="right" width="256" height="160" src="https://raw.githubusercontent.com/AlejandroRoman/DarkModeToggle/Master/Demo.gif">
Set the system's Dark Mode status.
<br>
<br>
Includes an optional menubar icon and a Hammerspoon console toolbar item.
<br>
<br>

Installation
-------

**1) Download & Install [Hammerspoon](https://github.com/Hammerspoon/hammerspoon/releases)**
* Homepage: [https://www.hammerspoon.org](https://www.hammerspoon.org)

**2) Download & Install the DarkModeToggle Spoon:**
* Download: [https://github.com/AlejandroRoman/DarkModeToggle/raw/Master/DarkModeToggle.spoon.zip](https://github.com/AlejandroRoman/DarkModeToggle/raw/Master/DarkModeToggle.spoon.zip)
* Installation: Simply double-click to unzip and then double-click the resulting DarkModeToggle.spoon file to move it to your Spoons directory

**3) Edit the \~/.hammerspoon/init.lua configuration file**
* Copy/paste the text of one of the sample implementation scripts (below) into your init.lua configuration file.
* For more elaborate implementations, the API for this spoon is fully documented in detail below.

## Example/Sample implementation(s):

**Toggle Dark Mode by clicking on icons in status menu or HS console toolbar:**
```
hs.loadSpoon("DarkModeToggle")
spoon.DarkModeToggle:statusMenuIcon(true)     -- show icon in status menu
spoon.DarkModeToggle:consoleToolbarItem(true) -- show toolbar item in HS console
```
**Configure key binding to toggle Dark Mode:**
```
hs.loadSpoon("DarkModeToggle")
-- Toggle Dark Mode with ⌘ + ⌥ + ^ + D
spoon.DarkModeToggle:bindHotkeys({toggle = {{"ctrl","option","command"},"d"}})
```

## API Overview

* Methods - API calls which can only be made on an object returned by a constructor
    * [bindHotkeys](#bindHotkeys)
    * [consoleToolbarItem](#consoleToolbarItem)
    * [darkMode](#darkMode)
    * [isSystemDark](#isSystemDark)
    * [statusMenuIcon](#statusMenuIcon)
    * [systemDarkMode](#systemDarkMode)
    * [toggleDarkMode](#toggleDarkMode)

## API Documentation
### Methods
#### [bindHotkeys](#bindHotkeys)
| **Signature**               | `DarkModeToggle:bindHotkeys(mapping) -> nil` |
| :----------------------------| :---------------------------------|
| **Type**                    | Method                          |
| **Description**             | Binds hotkeys for DarkModeToggle|
| **Parameters**              | * `mapping` - A table containing hotkey modifier/key details for one or more of the following key value pairs:<br>- *enable* - Enable System Dark Mode<br>- *disable* - Disable Dark Mode<br>- *toggle* - Toggle Dark Mode<br>|
| **Returns**                 | * None                             |
| **Notes**                   | * The action performed by the toggle Dark Mode binding is based on the curent setting of the system, which is the same as the value returned by systemDarkMode()<br> * The mapping table is a table of one or more key-value pairs of the format:<br>`command = { { modifiers }, key }` where:<br> - `command` is one of the commands listed above<br> - `modifiers` is a table containing keyboard modifiers, as specified in hs.hotkey.bind()<br> - `key` is a string containing the name of a keyboard key, as specified in hs.hotkey.bind()                            |

#### [consoleToolbarItem](#consoleToolbarItem)
| **Signature**               | `DarkModeToggle:consoleToolbarItem([visible, [index]]) -> boolean/spoon/nil` |
| :----------------------------| :---------------------------------|
| **Type**                    | Method                          |
| **Description**             | Query or enable the visibility of this spoon's toolbar item in the Hammerspoon console.                             |
| **Parameters**              | * An optional boolean indicating the state of the toolbar item's visibility.<br>* If the visibility parameter passed is true, an optional index specifying the position where the toolbar item should be placed.                             |
| **Returns**                 | * If no parameters are sent, a boolean indicating the current visibility of the toolbar item.<br> * If the visibility parameter is specified, returns the spoon object itself or nil if an error occurred.                             |
| **Notes**                   | * If the visibility parameter is set to true and an index is not specified, the spoon's toolbar item will be placed at the beginning (leftmost) position of the Hammerspoon console's toolbar items.                             |

#### [darkMode](#darkMode)
| **Signature**               | `DarkModeToggle:darkMode([mode]) -> boolean(s) or spoon object` |
| :----------------------------| :---------------------------------|
| **Type**                    | Method                          |
| **Description**             | Get or set the current state of the Dark Mode theme for following three targets simultaneously:<br>* The macOS system for the current user.<br>* The Hammerspoon console.<br>* The Hammerspoon preferences panel.                             |
| **Parameters**              | * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).                             |
| **Returns**                 | * If a mode is specified, the method will return the DarkModeToggle spoon object.<br> * If no mode parameter is passed, this method will return three booleans indicating respectively the Dark Mode status for each of the three targets listed previously.                             |

#### [isSystemDark](#isSystemDark)
| **Signature**               | `DarkModeToggle:isSystemDark() -> boolean` |
| :----------------------------| :---------------------------------|
| **Type**                    | Method                          |
| **Description**             | Get the current state of the system's Dark Mode theme.                             |
| **Parameters**              | * None                             |
| **Returns**                 | * True if the system is currently set to Dark Mode, false otherwise.                             |
| **Notes**                   | * This method is a simply a wrapper of hs.host.interfaceStyle() except it returns a boolean instead of "Dark"/nil.                             |

#### [statusMenuIcon](#statusMenuIcon)
| **Signature**               | `DarkModeToggle:statusMenuIcon([visible, [enableDropdown]]) -> boolean/spoon/nil` |
| :----------------------------| :---------------------------------|
| **Type**                    | Method                          |
| **Description**             | Query or set the visibility of this spoon's status menubar icon.                             |
| **Parameters**              | * An optional boolean indicating the state of the status menubar icon's visibility.<br> * If the visibility parameter passed is true, an optional booolean indicating if dropdown menu functionality should be enabled (true). Default value is false.                            |
| **Returns**                 | * If no parameters are sent, a boolean indicating the current visibility of the menubar item. If the visibility parameter was specified, the spoon object itself or nil if an error occurred.                             |

#### [systemDarkMode](#systemDarkMode)
| **Signature**               | `DarkModeToggle:systemDarkMode([mode]) -> boolean or spoon object` |
| :----------------------------| :---------------------------------|
| **Type**                    | Method                          |
| **Description**             | Get or set the current state of the Dark Mode theme for the current user of the macOS system.                             |
| **Parameters**              | * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).                             |
| **Returns**                 | * If no mode parameter is passed, this method will return a boolean indicating if the system's Dark Mode theme is enabled.<br> * If a mode is specified, this method will return the DarkModeToggle spoon object.                             |

#### [toggleDarkMode](#toggleDarkMode)
| **Signature**               | `DarkModeToggle:toggleDarkMode() -> spoon object` |
| :----------------------------| :---------------------------------|
| **Type**                    | Method                          |
| **Description**             | Toggle the current state of the Dark Mode theme for following three targets simultaneously:<br>* The macOS system for the current user.<br>* The Hammerspoon console.<br>* The Hammerspoon preferences panel.                             |
| **Parameters**              | * None                            |
| **Returns**                 | * The DarkModeToggle object.      |
| **Notes**                   | * The target mode of the toggle action is based on the current Dark Mode state of the operating system.                             |



