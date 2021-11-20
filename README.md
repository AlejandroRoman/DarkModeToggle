# DarkModeToggler
---

Set the system's Dark Mode status.

<img align="right" width="100" height="100" src="http://www.fillmurray.com/100/100">

Includes an optional menubar icon and a Hammerspoon console toolbar item.

Sample implementation(s):

```
hs.loadSpoon("DarkModeToggle")
spoon.DarkModeToggle:statusMenuIcon(true)      -- show icon in status menu
spoon.DarkModeToggle:consoleToolbarItem(true)  -- show toolbar item in HS console
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
| **Signature**               | `DarkModeToggler:bindHotkeys()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Notes**                   | ...                             |

| [consoleToolbarItem](#consoleToolbarItem)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggler:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Notes**                   | ...                             |

| [darkMode](#darkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggler:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Notes**                   | ...                             |

| [isSystemDark](#isSystemDark)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggler:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Notes**                   | ...                             |

| [statusMenuIcon](#statusMenuIcon)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggler:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Notes**                   | ...                             |

| [systemDarkMode](#systemDarkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggler:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Notes**                   | ...                             |

| [toggleDarkMode](#toggleDarkMode)  |                  |
| ----------------------------|---------------------------------|
| **Signature**               | `DarkModeToggler:()` |
| **Type**                    | Method                          |
| **Description**             | ...                             |
| **Notes**                   | ...                             |



