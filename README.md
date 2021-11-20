<p>[<br>
  {<br>
    &quot;Constant&quot; : [</p>

<pre><code>],
&quot;submodules&quot; : [

],
&quot;Function&quot; : [

],
&quot;Variable&quot; : [

],
&quot;stripped_doc&quot; : [

],
&quot;Deprecated&quot; : [

],
&quot;type&quot; : &quot;Module&quot;,
&quot;desc&quot; : &quot;Set the system&#39;s Dark Mode status.&quot;,
&quot;Constructor&quot; : [

],
&quot;doc&quot; : &quot;Set the system&#39;s Dark Mode status.\n\nIncludes an optional menubar icon and a Hammerspoon console toolbar item.\n\nSample implementation(s):\n```\nhs.loadSpoon(\&quot;DarkModeToggle\&quot;)\nspoon.DarkModeToggle:statusMenuIcon(true)      -- show icon in status menu\nspoon.DarkModeToggle:consoleToolbarItem(true)  -- show toolbar item in HS console\n```\n\n```\nhs.loadSpoon(\&quot;DarkModeToggle\&quot;)\n-- Toggle Dark Mode with ⌘ + ⌥ + ^ + D\nspoon.DarkModeToggle:bindHotkeys({toggle = {{\&quot;ctrl\&quot;,\&quot;option\&quot;,\&quot;command\&quot;},\&quot;d\&quot;}})\n```&quot;,
&quot;Method&quot; : [
  {
    &quot;doc&quot; : &quot;Binds hotkeys for DarkModeToggle\n\nParameters:\n * `mapping` - A table containing hotkey modifier\/key details for one or more of the following commands:\n   * \&quot;enable\&quot;   - Enable System Dark Mode (including Hammerspoon&#39;s console and preferences window)\n   * \&quot;disable\&quot;  - Disable Dark Mode\n   * \&quot;toggle\&quot;   - Toggle Dark Mode\n\nReturns:\n * None\n\nNotes:\n * The action performed by the toggle Dark Mode binding is based on the curent setting of the system, which is the same as the value returned by systemDarkMode()\n * The `mapping` table is a table of one or more key-value pairs of the format:\n   ```\n   command = { { modifiers }, key }\n   ```\n  where:\n   * `command`   - is one of the commands listed above\n   * `modifiers` - is a table containing keyboard modifiers, as specified in `hs.hotkey.bind()`\n   * `key`       - is a string containing the name of a keyboard key, as specified in `hs.hotkey.bind()`&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Binds hotkeys for DarkModeToggle&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:bindHotkeys(mapping) -&gt; nil&quot;,
    &quot;desc&quot; : &quot;Binds hotkeys for DarkModeToggle&quot;,
    &quot;notes&quot; : [
      &quot; * The action performed by the toggle Dark Mode binding is based on the curent setting of the system, which is the same as the value returned by systemDarkMode()&quot;,
      &quot; * The `mapping` table is a table of one or more key-value pairs of the format:&quot;,
      &quot;   ```&quot;,
      &quot;   command = { { modifiers }, key }&quot;,
      &quot;   ```&quot;,
      &quot;  where:&quot;,
      &quot;   * `command`   - is one of the commands listed above&quot;,
      &quot;   * `modifiers` - is a table containing keyboard modifiers, as specified in `hs.hotkey.bind()`&quot;,
      &quot;   * `key`       - is a string containing the name of a keyboard key, as specified in `hs.hotkey.bind()`&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:bindHotkeys(mapping) -&gt; nil&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * None&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;bindHotkeys&quot;,
    &quot;parameters&quot; : [
      &quot; * `mapping` - A table containing hotkey modifier\/key details for one or more of the following commands:&quot;,
      &quot;   * \&quot;enable\&quot;   - Enable System Dark Mode (including Hammerspoon&#39;s console and preferences window)&quot;,
      &quot;   * \&quot;disable\&quot;  - Disable Dark Mode&quot;,
      &quot;   * \&quot;toggle\&quot;   - Toggle Dark Mode&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Query or enable the visibility of this spoon&#39;s toolbar item in the Hammerspoon console.\n\nParameters:\n * An optional boolean indicating the state of the toolbar item&#39;s visibility.\n * If the visibility parameter passed is true, an optional index specifying the position where the toolbar item should be placed.\n\nReturns:\n * If no parameters are sent, a boolean indicating the current visibility of the toolbar item.\n * If the visibility parameter is specified, returns the spoon object itself or nil if an error occurred.\n\nNotes:\n * If the visibility parameter is set to true and an index is not specified, the spoon&#39;s toolbar item will be placed at the beginning (leftmost) position of the Hammerspoon console&#39;s toolbar items.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Query or enable the visibility of this spoon&#39;s toolbar item in the Hammerspoon console.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:consoleToolbarItem( [visible, [index] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;desc&quot; : &quot;Query or enable the visibility of this spoon&#39;s toolbar item in the Hammerspoon console.&quot;,
    &quot;notes&quot; : [
      &quot; * If the visibility parameter is set to true and an index is not specified, the spoon&#39;s toolbar item will be placed at the beginning (leftmost) position of the Hammerspoon console&#39;s toolbar items.&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:consoleToolbarItem( [visible, [index] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If no parameters are sent, a boolean indicating the current visibility of the toolbar item.&quot;,
      &quot; * If the visibility parameter is specified, returns the spoon object itself or nil if an error occurred.&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;consoleToolbarItem&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean indicating the state of the toolbar item&#39;s visibility.&quot;,
      &quot; * If the visibility parameter passed is true, an optional index specifying the position where the toolbar item should be placed.&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Get or set the current state of the Dark Mode theme for following three targets simultaneously:\n* The macOS system for the current user.\n* The Hammerspoon console.\n* The Hammerspoon preferences panel.\n\nParameters:\n * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).\n\nReturns:\n * If a mode is specified, the method will return the DarkModeToggle spoon object.\n * If no mode parameter is passed, this method will return three booleans indicating respectively the Dark Mode status for each of the three targets listed previously.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Get or set the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
      &quot;* The macOS system for the current user.&quot;,
      &quot;* The Hammerspoon console.&quot;,
      &quot;* The Hammerspoon preferences panel.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:darkMode([mode]) -&gt; boolean(s) or spoon object&quot;,
    &quot;desc&quot; : &quot;Get or set the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
    &quot;notes&quot; : [

    ],
    &quot;signature&quot; : &quot;DarkModeToggle:darkMode([mode]) -&gt; boolean(s) or spoon object&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If a mode is specified, the method will return the DarkModeToggle spoon object.&quot;,
      &quot; * If no mode parameter is passed, this method will return three booleans indicating respectively the Dark Mode status for each of the three targets listed previously.&quot;
    ],
    &quot;name&quot; : &quot;darkMode&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Get the current state of the system&#39;s Dark Mode theme.\n\nParameters:\n * None\n\nReturns:\n * True if the system is currently set to Dark Mode, false otherwise.\n\nNotes:\n * This method is a simply a wrapper of `hs.host.interfaceStyle()` except it returns a boolean instead of \&quot;Dark\&quot;\/nil&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Get the current state of the system&#39;s Dark Mode theme.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:isSystemDark() -&gt; boolean&quot;,
    &quot;desc&quot; : &quot;Get the current state of the system&#39;s Dark Mode theme.&quot;,
    &quot;notes&quot; : [
      &quot; * This method is a simply a wrapper of `hs.host.interfaceStyle()` except it returns a boolean instead of \&quot;Dark\&quot;\/nil&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:isSystemDark() -&gt; boolean&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * True if the system is currently set to Dark Mode, false otherwise.&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;isSystemDark&quot;,
    &quot;parameters&quot; : [
      &quot; * None&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Query or set the visibility of this spoon&#39;s status menubar icon.\n\nParameters:\n * An optional boolean indicating the state of the status menubar icon&#39;s visibility.\n * If the visibility parameter passed is true, an optional booolean indicating if dropdown menu functionality should be enabled (true). Default value is false.\n\nReturns:\n * If no parameters are sent, a boolean indicating the current visibility of the menubar item.\n   If the visibility parameter was specified, the spoon object itself or nil if an error occurred.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Query or set the visibility of this spoon&#39;s status menubar icon.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:statusMenuIcon( [visible, [enableDropdown] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;desc&quot; : &quot;Query or set the visibility of this spoon&#39;s status menubar icon.&quot;,
    &quot;notes&quot; : [

    ],
    &quot;signature&quot; : &quot;DarkModeToggle:statusMenuIcon( [visible, [enableDropdown] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If no parameters are sent, a boolean indicating the current visibility of the menubar item.&quot;,
      &quot;   If the visibility parameter was specified, the spoon object itself or nil if an error occurred.&quot;
    ],
    &quot;name&quot; : &quot;statusMenuIcon&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean indicating the state of the status menubar icon&#39;s visibility.&quot;,
      &quot; * If the visibility parameter passed is true, an optional booolean indicating if dropdown menu functionality should be enabled (true). Default value is false.&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Get or set the current state of the Dark Mode theme for the current user of the macOS system.\n\nParameters:\n * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).\n\nReturns:\n * If no mode parameter is passed, this method will return a boolean indicating if the system&#39;s Dark Mode theme is enabled.\n * If a mode is specified, this method will return the DarkModeToggle spoon object.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Get or set the current state of the Dark Mode theme for the current user of the macOS system.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:systemDarkMode([mode]) -&gt; boolean or spoon object&quot;,
    &quot;desc&quot; : &quot;Get or set the current state of the Dark Mode theme for the current user of the macOS system.&quot;,
    &quot;notes&quot; : [

    ],
    &quot;signature&quot; : &quot;DarkModeToggle:systemDarkMode([mode]) -&gt; boolean or spoon object&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If no mode parameter is passed, this method will return a boolean indicating if the system&#39;s Dark Mode theme is enabled.&quot;,
      &quot; * If a mode is specified, this method will return the DarkModeToggle spoon object.&quot;
    ],
    &quot;name&quot; : &quot;systemDarkMode&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Toggle the current state of the Dark Mode theme for following three targets simultaneously:\n* The macOS system for the current user,\n* The Hammerspoon console.\n* The Hammerspoon preferences panel.\n\nParameters:\n * None\n\nReturns:\n * The DarkModeToggle object.\n\nNotes:\n * The target mode of the toggle action is based on the current Dark Mode state of the operating system.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Toggle the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
      &quot;* The macOS system for the current user,&quot;,
      &quot;* The Hammerspoon console.&quot;,
      &quot;* The Hammerspoon preferences panel.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:toggleDarkMode() -&gt; spoon object&quot;,
    &quot;desc&quot; : &quot;Toggle the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
    &quot;notes&quot; : [
      &quot; * The target mode of the toggle action is based on the current Dark Mode state of the operating system.&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:toggleDarkMode() -&gt; spoon object&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * The DarkModeToggle object.&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;toggleDarkMode&quot;,
    &quot;parameters&quot; : [
      &quot; * None&quot;,
      &quot;&quot;
    ]
  }
],
&quot;Command&quot; : [

],
&quot;Field&quot; : [

],
&quot;items&quot; : [
  {
    &quot;doc&quot; : &quot;Binds hotkeys for DarkModeToggle\n\nParameters:\n * `mapping` - A table containing hotkey modifier\/key details for one or more of the following commands:\n   * \&quot;enable\&quot;   - Enable System Dark Mode (including Hammerspoon&#39;s console and preferences window)\n   * \&quot;disable\&quot;  - Disable Dark Mode\n   * \&quot;toggle\&quot;   - Toggle Dark Mode\n\nReturns:\n * None\n\nNotes:\n * The action performed by the toggle Dark Mode binding is based on the curent setting of the system, which is the same as the value returned by systemDarkMode()\n * The `mapping` table is a table of one or more key-value pairs of the format:\n   ```\n   command = { { modifiers }, key }\n   ```\n  where:\n   * `command`   - is one of the commands listed above\n   * `modifiers` - is a table containing keyboard modifiers, as specified in `hs.hotkey.bind()`\n   * `key`       - is a string containing the name of a keyboard key, as specified in `hs.hotkey.bind()`&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Binds hotkeys for DarkModeToggle&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:bindHotkeys(mapping) -&gt; nil&quot;,
    &quot;desc&quot; : &quot;Binds hotkeys for DarkModeToggle&quot;,
    &quot;notes&quot; : [
      &quot; * The action performed by the toggle Dark Mode binding is based on the curent setting of the system, which is the same as the value returned by systemDarkMode()&quot;,
      &quot; * The `mapping` table is a table of one or more key-value pairs of the format:&quot;,
      &quot;   ```&quot;,
      &quot;   command = { { modifiers }, key }&quot;,
      &quot;   ```&quot;,
      &quot;  where:&quot;,
      &quot;   * `command`   - is one of the commands listed above&quot;,
      &quot;   * `modifiers` - is a table containing keyboard modifiers, as specified in `hs.hotkey.bind()`&quot;,
      &quot;   * `key`       - is a string containing the name of a keyboard key, as specified in `hs.hotkey.bind()`&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:bindHotkeys(mapping) -&gt; nil&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * None&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;bindHotkeys&quot;,
    &quot;parameters&quot; : [
      &quot; * `mapping` - A table containing hotkey modifier\/key details for one or more of the following commands:&quot;,
      &quot;   * \&quot;enable\&quot;   - Enable System Dark Mode (including Hammerspoon&#39;s console and preferences window)&quot;,
      &quot;   * \&quot;disable\&quot;  - Disable Dark Mode&quot;,
      &quot;   * \&quot;toggle\&quot;   - Toggle Dark Mode&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Query or enable the visibility of this spoon&#39;s toolbar item in the Hammerspoon console.\n\nParameters:\n * An optional boolean indicating the state of the toolbar item&#39;s visibility.\n * If the visibility parameter passed is true, an optional index specifying the position where the toolbar item should be placed.\n\nReturns:\n * If no parameters are sent, a boolean indicating the current visibility of the toolbar item.\n * If the visibility parameter is specified, returns the spoon object itself or nil if an error occurred.\n\nNotes:\n * If the visibility parameter is set to true and an index is not specified, the spoon&#39;s toolbar item will be placed at the beginning (leftmost) position of the Hammerspoon console&#39;s toolbar items.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Query or enable the visibility of this spoon&#39;s toolbar item in the Hammerspoon console.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:consoleToolbarItem( [visible, [index] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;desc&quot; : &quot;Query or enable the visibility of this spoon&#39;s toolbar item in the Hammerspoon console.&quot;,
    &quot;notes&quot; : [
      &quot; * If the visibility parameter is set to true and an index is not specified, the spoon&#39;s toolbar item will be placed at the beginning (leftmost) position of the Hammerspoon console&#39;s toolbar items.&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:consoleToolbarItem( [visible, [index] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If no parameters are sent, a boolean indicating the current visibility of the toolbar item.&quot;,
      &quot; * If the visibility parameter is specified, returns the spoon object itself or nil if an error occurred.&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;consoleToolbarItem&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean indicating the state of the toolbar item&#39;s visibility.&quot;,
      &quot; * If the visibility parameter passed is true, an optional index specifying the position where the toolbar item should be placed.&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Get or set the current state of the Dark Mode theme for following three targets simultaneously:\n* The macOS system for the current user.\n* The Hammerspoon console.\n* The Hammerspoon preferences panel.\n\nParameters:\n * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).\n\nReturns:\n * If a mode is specified, the method will return the DarkModeToggle spoon object.\n * If no mode parameter is passed, this method will return three booleans indicating respectively the Dark Mode status for each of the three targets listed previously.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Get or set the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
      &quot;* The macOS system for the current user.&quot;,
      &quot;* The Hammerspoon console.&quot;,
      &quot;* The Hammerspoon preferences panel.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:darkMode([mode]) -&gt; boolean(s) or spoon object&quot;,
    &quot;desc&quot; : &quot;Get or set the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
    &quot;notes&quot; : [

    ],
    &quot;signature&quot; : &quot;DarkModeToggle:darkMode([mode]) -&gt; boolean(s) or spoon object&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If a mode is specified, the method will return the DarkModeToggle spoon object.&quot;,
      &quot; * If no mode parameter is passed, this method will return three booleans indicating respectively the Dark Mode status for each of the three targets listed previously.&quot;
    ],
    &quot;name&quot; : &quot;darkMode&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Get the current state of the system&#39;s Dark Mode theme.\n\nParameters:\n * None\n\nReturns:\n * True if the system is currently set to Dark Mode, false otherwise.\n\nNotes:\n * This method is a simply a wrapper of `hs.host.interfaceStyle()` except it returns a boolean instead of \&quot;Dark\&quot;\/nil&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Get the current state of the system&#39;s Dark Mode theme.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:isSystemDark() -&gt; boolean&quot;,
    &quot;desc&quot; : &quot;Get the current state of the system&#39;s Dark Mode theme.&quot;,
    &quot;notes&quot; : [
      &quot; * This method is a simply a wrapper of `hs.host.interfaceStyle()` except it returns a boolean instead of \&quot;Dark\&quot;\/nil&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:isSystemDark() -&gt; boolean&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * True if the system is currently set to Dark Mode, false otherwise.&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;isSystemDark&quot;,
    &quot;parameters&quot; : [
      &quot; * None&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Query or set the visibility of this spoon&#39;s status menubar icon.\n\nParameters:\n * An optional boolean indicating the state of the status menubar icon&#39;s visibility.\n * If the visibility parameter passed is true, an optional booolean indicating if dropdown menu functionality should be enabled (true). Default value is false.\n\nReturns:\n * If no parameters are sent, a boolean indicating the current visibility of the menubar item.\n   If the visibility parameter was specified, the spoon object itself or nil if an error occurred.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Query or set the visibility of this spoon&#39;s status menubar icon.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:statusMenuIcon( [visible, [enableDropdown] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;desc&quot; : &quot;Query or set the visibility of this spoon&#39;s status menubar icon.&quot;,
    &quot;notes&quot; : [

    ],
    &quot;signature&quot; : &quot;DarkModeToggle:statusMenuIcon( [visible, [enableDropdown] ] ) -&gt; boolean or spoon object or nil&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If no parameters are sent, a boolean indicating the current visibility of the menubar item.&quot;,
      &quot;   If the visibility parameter was specified, the spoon object itself or nil if an error occurred.&quot;
    ],
    &quot;name&quot; : &quot;statusMenuIcon&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean indicating the state of the status menubar icon&#39;s visibility.&quot;,
      &quot; * If the visibility parameter passed is true, an optional booolean indicating if dropdown menu functionality should be enabled (true). Default value is false.&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Get or set the current state of the Dark Mode theme for the current user of the macOS system.\n\nParameters:\n * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).\n\nReturns:\n * If no mode parameter is passed, this method will return a boolean indicating if the system&#39;s Dark Mode theme is enabled.\n * If a mode is specified, this method will return the DarkModeToggle spoon object.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Get or set the current state of the Dark Mode theme for the current user of the macOS system.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:systemDarkMode([mode]) -&gt; boolean or spoon object&quot;,
    &quot;desc&quot; : &quot;Get or set the current state of the Dark Mode theme for the current user of the macOS system.&quot;,
    &quot;notes&quot; : [

    ],
    &quot;signature&quot; : &quot;DarkModeToggle:systemDarkMode([mode]) -&gt; boolean or spoon object&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * If no mode parameter is passed, this method will return a boolean indicating if the system&#39;s Dark Mode theme is enabled.&quot;,
      &quot; * If a mode is specified, this method will return the DarkModeToggle spoon object.&quot;
    ],
    &quot;name&quot; : &quot;systemDarkMode&quot;,
    &quot;parameters&quot; : [
      &quot; * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).&quot;,
      &quot;&quot;
    ]
  },
  {
    &quot;doc&quot; : &quot;Toggle the current state of the Dark Mode theme for following three targets simultaneously:\n* The macOS system for the current user,\n* The Hammerspoon console.\n* The Hammerspoon preferences panel.\n\nParameters:\n * None\n\nReturns:\n * The DarkModeToggle object.\n\nNotes:\n * The target mode of the toggle action is based on the current Dark Mode state of the operating system.&quot;,
    &quot;stripped_doc&quot; : [
      &quot;Toggle the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
      &quot;* The macOS system for the current user,&quot;,
      &quot;* The Hammerspoon console.&quot;,
      &quot;* The Hammerspoon preferences panel.&quot;,
      &quot;&quot;
    ],
    &quot;def&quot; : &quot;DarkModeToggle:toggleDarkMode() -&gt; spoon object&quot;,
    &quot;desc&quot; : &quot;Toggle the current state of the Dark Mode theme for following three targets simultaneously:&quot;,
    &quot;notes&quot; : [
      &quot; * The target mode of the toggle action is based on the current Dark Mode state of the operating system.&quot;
    ],
    &quot;signature&quot; : &quot;DarkModeToggle:toggleDarkMode() -&gt; spoon object&quot;,
    &quot;type&quot; : &quot;Method&quot;,
    &quot;returns&quot; : [
      &quot; * The DarkModeToggle object.&quot;,
      &quot;&quot;
    ],
    &quot;name&quot; : &quot;toggleDarkMode&quot;,
    &quot;parameters&quot; : [
      &quot; * None&quot;,
      &quot;&quot;
    ]
  }
],
&quot;name&quot; : &quot;DarkModeToggle&quot;
</code></pre>

<p>}<br>
]</p>

