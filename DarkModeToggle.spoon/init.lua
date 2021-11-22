-- ╦ ╦╔═╗╔╦╗╔╦╗╔═╗╦═╗╔═╗╔═╗╔═╗╔═╗╔╗╔
-- ╠═╣╠═╣║║║║║║║╣ ╠╦╝╚═╗╠═╝║ ║║ ║║║║
-- ╩ ╩╩ ╩╩ ╩╩ ╩╚═╝╩╚═╚═╝╩  ╚═╝╚═╝╝╚╝
-- 
-- ████████  ██████   ██████   ██████  ██      ███████ 
--    ██    ██    ██ ██       ██       ██      ██      
--    ██    ██    ██ ██   ███ ██   ███ ██      █████   
--    ██    ██    ██ ██    ██ ██    ██ ██      ██      
--    ██     ██████   ██████   ██████  ███████ ███████ 
-- 
-- ██████   █████  ██████  ██   ██      ███    ███  ██████  ██████  ███████ 
-- ██   ██ ██   ██ ██   ██ ██  ██       ████  ████ ██    ██ ██   ██ ██      
-- ██   ██ ███████ ██████  █████        ██ ████ ██ ██    ██ ██   ██ █████   
-- ██   ██ ██   ██ ██   ██ ██  ██       ██  ██  ██ ██    ██ ██   ██ ██      
-- ██████  ██   ██ ██   ██ ██   ██      ██      ██  ██████  ██████  ███████ 
-- 
-- ███████ ██████   ██████   ██████  ███    ██ 
-- ██      ██   ██ ██    ██ ██    ██ ████   ██ 
-- ███████ ██████  ██    ██ ██    ██ ██ ██  ██ 
--      ██ ██      ██    ██ ██    ██ ██  ██ ██ 
-- ███████ ██       ██████   ██████  ██   ████ 

--- === DarkModeToggle ===
---
--- Set the system's Dark Mode status.
---
--- Includes an optional menubar icon and a Hammerspoon console toolbar item.
---
--- Sample implementation(s):
--- ```
--- hs.loadSpoon("DarkModeToggle")
--- spoon.DarkModeToggle:statusMenuIcon(true)      -- show icon in status menu
--- spoon.DarkModeToggle:consoleToolbarItem(true)  -- show toolbar item in HS console
--- ```
---
--- ```
--- hs.loadSpoon("DarkModeToggle")
--- -- Toggle Dark Mode with ⌘ + ⌥ + ^ + D
--- spoon.DarkModeToggle:bindHotkeys({toggle = {{"ctrl","option","command"},"d"}})
--- ```
local styledtext = require("hs.styledtext")
local osascript  = require("hs.osascript")
local console    = require("hs.console")
local menubar    = require("hs.menubar")
local fnutils    = require("hs.fnutils")

local obj   = {}
obj.__index = obj

-- Metadata
obj.name    = "DarkModeToggle"
obj.version = "1.0"
obj.author  = "Alejandro Roman"
obj.license = "MIT - https://opensource.org/licenses/MIT"

obj.toolbarItem = nil
obj.toolbarIcon = nil
obj.menubar     = nil
obj.menubarIcon = nil


function obj:init()
	obj.menubarIcon = dofile(hs.spoons.resourcePath("genIconImage.lua"))

	obj.toolbarIcon = obj.menubarIcon:copy():template(true)

	if nil == obj.menubar then
		obj.menubar = menubar.new(false)
	end

	if nil == obj.toolbarItem then
		obj.toolbarItem = {}
		obj.toolbarItem.id = "DarkModeToggleHSConsoleToolbarItem"
		obj.toolbarItem.label="Dark Mode"
		obj.toolbarItem.image = obj.toolbarIcon
		obj.toolbarItem.fn = function() obj:toggleDarkMode() end
	end
end

function obj:toggleSystemlDarkMode()
	local bool = obj:isSystemDark()
	obj:systemDarkMode(not bool)
	obj:localDarkMode(not bool)
	return obj
end

function obj:localDarkMode(mode)
	if nil == mode then
		return console.darkMode(), hs.preferencesDarkMode()
	elseif "boolean" == type(mode) then
		console.darkMode(mode)
		hs.preferencesDarkMode(mode)
	end
	return obj
end














--- DarkModeToggle:bindHotkeys(mapping) -> nil
--- Method
--- Binds hotkeys for DarkModeToggle
---
--- Parameters:
---  * `mapping` - A table containing hotkey modifier/key details for one or more of the following commands:
---    * "enable"   - Enable System Dark Mode (including Hammerspoon's console and preferences window)
---    * "disable"  - Disable Dark Mode
---    * "toggle"   - Toggle Dark Mode
---
--- Returns:
---  * None
---
--- Notes:
---  * The action performed by the toggle Dark Mode binding is based on the curent setting of the system, which is the same as the value returned by systemDarkMode()
---  * The `mapping` table is a table of one or more key-value pairs of the format:
---    ```
---    command = { { modifiers }, key }
---    ```
---   where:
---    * `command`   - is one of the commands listed above
---    * `modifiers` - is a table containing keyboard modifiers, as specified in `hs.hotkey.bind()`
---    * `key`       - is a string containing the name of a keyboard key, as specified in `hs.hotkey.bind()`
function obj:bindHotkeys(mapping)
	local def = {
		enable = function() obj:darkMode(true) end,
		disable = function() obj:darkMode(false) end,
		toggle = function() obj:toggleDarkMode() end
	}
	hs.spoons.bindHotkeysToSpec(def, mapping)
end

--- DarkModeToggle:consoleToolbarItem( [visible, [index] ] ) -> boolean or spoon object or nil
--- Method
--- Query or enable the visibility of this spoon's toolbar item in the Hammerspoon console.
---
--- Parameters:
---  * An optional boolean indicating the state of the toolbar item's visibility.
---  * If the visibility parameter passed is true, an optional index specifying the position where the toolbar item should be placed.
---
--- Returns:
---  * If no parameters are sent, a boolean indicating the current visibility of the toolbar item.
---  * If the visibility parameter is specified, returns the spoon object itself or nil if an error occurred.
---
--- Notes:
---  * If the visibility parameter is set to true and an index is not specified, the spoon's toolbar item will be placed at the beginning (leftmost) position of the Hammerspoon console's toolbar items.
function obj:consoleToolbarItem(mode,index)

	local index = index
	if obj.toolbarItem then
		if nil == mode then
			local tbItemIDTable = hs.console.toolbar():visibleItems()
			return fnutils.contains(tbItemIDTable,obj.toolbarItem.id)
		elseif mode then -- mode is true

			-- if its not customizable, make it so
			if not hs.console.toolbar():canCustomize() then
				hs.console.toolbar():canCustomize(true)
			end


			-- if it is not a valid toolbar item
			local tbItemIDTable = hs.console.toolbar():allowedItems()
			if not fnutils.contains(tbItemIDTable, obj.toolbarItem.id) then
				-- make it a valid toolbar item
				hs.console.toolbar():addItems(obj.toolbarItem)
			end


			local tbVisibleItemIDTable = hs.console.toolbar():visibleItems()
			local isAlreadyVisible = fnutils.contains(tbVisibleItemIDTable, obj.toolbarItem.id)

			if index then

				local index = index

				local numOfItems = #tbVisibleItemIDTable

				-- if its visible,  remove it

				if isAlreadyVisible then
					hs.console.toolbar():removeItem(obj.toolbarItem.id)
					--index = index

					numOfItems = numOfItems - 1
				end

				if index > numOfItems + 1 then
					index = numOfItems + 1
				end
				if index < 1 then
					index = 1
				end

				hs.console.toolbar():insertItem(obj.toolbarItem.id, math.max(index,1))

			else
				-- only insert the item if its not already visible
				if not isAlreadyVisible then
					if addConsoleToolbarItemToEnd then
						index = #tbVisibleItemIDTable + 1
						if index < 1 then
							index = 1
						end
						hs.console.toolbar():insertItem(obj.toolbarItem.id, math.max(index,1))
					else
						hs.console.toolbar():insertItem(obj.toolbarItem.id, 1)
					end
				end
			end

			return self
		else -- mode is false
			local tbVisibleItemIDTable = hs.console.toolbar():visibleItems()

			--print(hs.inspect(tbVisibleItemIDTable))

			local isVisible = fnutils.contains(tbVisibleItemIDTable, obj.toolbarItem.id)
			if isVisible then

				hs.console.toolbar():removeItem(obj.toolbarItem.id)

				--print("item found, removing...")
				hs.console.toolbar():removeItem(obj.toolbarItem.id)
			end

			return self
		end
	end
	return false
end

--- DarkModeToggle:darkMode([mode]) -> boolean(s) or spoon object
--- Method
--- Get or set the current state of the Dark Mode theme for following three targets simultaneously:
--- * The macOS system for the current user.
--- * The Hammerspoon console.
--- * The Hammerspoon preferences panel.
---
--- Parameters:
---  * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).
---
--- Returns:
---  * If a mode is specified, the method will return the DarkModeToggle spoon object.
---  * If no mode parameter is passed, this method will return three booleans indicating respectively the Dark Mode status for each of the three targets listed previously.
function obj:darkMode(mode)
	if nil == mode then
		return obj:isSystemDark(), console.darkMode(), hs.preferencesDarkMode()
	elseif "boolean" == type(mode) then
		obj:systemDarkMode(mode)
		obj:localDarkMode(mode)
	end
	return obj
end 

--- DarkModeToggle:isSystemDark() -> boolean
--- Method
--- Get the current state of the system's Dark Mode theme.
---
--- Parameters:
---  * None
---
--- Returns:
---  * True if the system is currently set to Dark Mode, false otherwise.
---
--- Notes:
---  * This method is a simply a wrapper of `hs.host.interfaceStyle()` except it returns a boolean instead of "Dark"/nil
function obj:isSystemDark()
	if "Dark" == hs.host.interfaceStyle() then
		return true
	end
	return false
end

--- DarkModeToggle:statusMenuIcon( [visible, [enableDropdown] ] ) -> boolean or spoon object or nil
--- Method
--- Query or set the visibility of this spoon's status menubar icon.
---
--- Parameters:
---  * An optional boolean indicating the state of the status menubar icon's visibility.
---  * If the visibility parameter passed is true, an optional booolean indicating if dropdown menu functionality should be enabled (true). Default value is false.
---
--- Returns:
---  * If no parameters are sent, a boolean indicating the current visibility of the menubar item.
---    If the visibility parameter was specified, the spoon object itself or nil if an error occurred.
function obj:statusMenuIcon(mode, enableDropdown)
	if obj.menubar then
		if nil == mode then
			return obj.menubar:isInMenuBar()
		elseif mode then -- mode is true
			if obj.menubar then			
				local function cb()
					obj:toggleDarkMode()
				end
				obj.menubar:returnToMenuBar()
				obj.menubar:setIcon(obj.menubarIcon)
				obj.menubar:setClickCallback(cb)
				return self
			end
		else -- mode is false
			if obj.menubar then
				obj.menubar:removeFromMenuBar()
				return self
			else
				return self
			end
		end
	end
	return false
end

--- DarkModeToggle:systemDarkMode([mode]) -> boolean or spoon object
--- Method
--- Get or set the current state of the Dark Mode theme for the current user of the macOS system.
---
--- Parameters:
---  * An optional boolean, specifying whether Dark Mode should be enabled (true) or disabled (false).
---
--- Returns:
---  * If no mode parameter is passed, this method will return a boolean indicating if the system's Dark Mode theme is enabled.
---  * If a mode is specified, this method will return the DarkModeToggle spoon object.
function obj:systemDarkMode(mode)

	if nil == mode then
		return obj:isSystemDark()
	elseif "boolean" == type(mode) then
		local setSystemModeAppleScriptString =
		[[tell application "System Events"]].."\n" ..
		[[tell appearance preferences]].."\n" ..
		[[set dark mode to ]]..tostring(mode).."\n" ..
		[[end tell]].."\n" ..
		[[end tell]]
		hs.osascript.applescript(setSystemModeAppleScriptString)
		return obj
	end
	return nil
end

--- DarkModeToggle:toggleDarkMode() -> spoon object
--- Method
--- Toggle the current state of the Dark Mode theme for following three targets simultaneously:
--- * The macOS system for the current user,
--- * The Hammerspoon console.
--- * The Hammerspoon preferences panel.
---
--- Parameters:
---  * None
---
--- Returns:
---  * The DarkModeToggle object.
---
--- Notes:
---  * The target mode of the toggle action is based on the current Dark Mode state of the operating system.
function obj:toggleDarkMode()
	obj:darkMode(not obj:isSystemDark())
	return obj
end

return obj