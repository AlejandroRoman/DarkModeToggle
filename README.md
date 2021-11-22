# DarkModeToggle
---
<img align="right" width="210" height="210" src="https://raw.githubusercontent.com/AlejandroRoman/DarkModeToggle/Master/Demo.jpeg">
Set the system's Dark Mode status.
<br>
<br>
Includes an optional menubar icon and a Hammerspoon console toolbar item.
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
| **Description**             | ...                             |
| **Parameters                | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [darkMode](#darkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Parameters                | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [isSystemDark](#isSystemDark)|             |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Parameters                | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [statusMenuIcon](#statusMenuIcon)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Parameters                | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [systemDarkMode](#systemDarkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Parameters                | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |

| [toggleDarkMode](#toggleDarkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggle:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Parameters                | ...                             |
| **Returns**                 | ...                             |
| **Notes**                   | ...                             |



