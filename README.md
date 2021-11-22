# DarkModeToggle
---
<img align="right" width="256" height="160" src="https://raw.githubusercontent.com/AlejandroRoman/DarkModeToggle/Master/Demo.gif">
Set the system's Dark Mode status.
<br>
<br>
Includes an optional menubar icon and a Hammerspoon console toolbar item.
<br>
<br>

Download: [https://github.com/AlejandroRoman/DarkModeToggle/raw/Master/DarkModeToggle.spoon.zip](https://github.com/AlejandroRoman/DarkModeToggle/raw/Master/DarkModeToggle.spoon.zip)
<br>
<br>

Sample implementation(s):

<br>
<br>

```
hs.loadSpoon("DarkModeToggle")
-- show icon in status menu
spoon.DarkModeToggle:statusMenuIcon(true)
-- show toolbar item in HS console
spoon.DarkModeToggle:consoleToolbarItem(true)
```
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

| [bindHotkeys](#bindHotkeys) |                                 |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:bindHotkeys(mapping) -> nil` |
| **Type**                    | Method                          |
| **Description**             | Binds hotkeys for DarkModeToggle|
| **Parameters**              | `mapping` - A table containing hotkey modifier/key details for one or more of the following key value pairs:<br>* *enable* - Enable System Dark Mode<br>* *disable* - Disable Dark Mode<br>* *toggle* - Toggle Dark Mode<br>|
| **Returns**                 | None                             |
| **Notes**                   | ...                             |

| [consoleToolbarItem](#consoleToolbarItem)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:consoleToolbarItem([visible, [index]]) -> boolean/spoon/nil` |
| **Type**                    | Method                          |
| **Description**             | Query or enable the visibility of this spoon's toolbar item in the Hammerspoon console.                             |
| **Parameters**              | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [darkMode](#darkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:darkMode([mode]) -> boolean(s) or spoon object` |
| **Type**                    | Method                          |
| **Description**             | Get or set the current state of the Dark Mode theme for following three targets simultaneously:                             |
| **Parameters**              | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [isSystemDark](#isSystemDark)|                                |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:isSystemDark() -> boolean` |
| **Type**                    | Method                          |
| **Description**             | Get the current state of the system's Dark Mode theme.                             |
| **Parameters**              | None                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [statusMenuIcon](#statusMenuIcon)|                            |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:statusMenuIcon( [visible, [enableDropdown] ] ) -> boolean or spoon object or nil` |
| **Type**                    | Method                          |
| **Description**             | Query or set the visibility of this spoon's status menubar icon.                             |
| **Parameters**              | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [systemDarkMode](#systemDarkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:systemDarkMode([mode]) -> boolean or spoon object` |
| **Type**                    | Method                          |
| **Description**             | Get or set the current state of the Dark Mode theme for the current user of the macOS system.                             |
| **Parameters**              | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [toggleDarkMode](#toggleDarkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:toggleDarkMode() -> spoon object` |
| **Type**                    | Method                          |
| **Description**             | Toggle the current state of the Dark Mode theme for following three targets simultaneously:                             |
| **Parameters**              | None                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |



