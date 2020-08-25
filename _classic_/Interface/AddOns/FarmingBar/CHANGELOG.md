# Farming Bar
## Version 2.0.7
- Removed extra code from me being lazy copy/pasting a fix

## Version 2.0.6
- Fixed a bug where button text wouldn't save its position when using a Masque skin
- Made anchor quick size buttons slightly larger and bar number slightly smaller so the buttons would be easier to click on

## Version 2.0.5
- Added a delay when moving items from shopping list from bank to bags to fix bags full error
- Adjusted the default alert format for has objective to only say objective complete when the objective is first met and to say farming progress above the objective
- Added buttons to reset has objective and no objective alert formats to default
- Changed message when clearing objectives to make sense in multiple scenarios

## Version 2.0.4
- Fixed counts for shopping lists
- Fixed sound files for classic
- Fixed issue where no sound alert played when gaining progress toward an objective
- Changed alerts while moving items so that screen alerts are shown on the moving progress window and chat/sound alerts are no longer suppressed

## Version 2.0.3
- Minor code cleanup
- Fixed an issue where open settings do not refresh when changes are made via slash commands.
- Revised the functionality of the broker icon:
-- Left-click toggles settings
-- Right-click toggles configuration
-- Alt+right-click toggles mouseover
-- Alt+ctrl+right-click toggles anchor mouseover
-- Ctrl+right-click toggles visibility
-- Shift+right-click toggles movability
- Added a new command alias: /fb
- Added the ability to toggle main command aliases off or on, in case of conflict with another addon
- Added alias for /farmingbar buttons: /farmingbar btns
- Added alias for /farmingbar template: /farmingbar tpl

## Version 2.0.2
- Fixed packaging issue.

## Version 2.0.1
- Attempt to fix error with GetFileDataClassic in retail version; it's a packager issue, so trying to work around that.

## Version 2.0
- Complete addon rewrite
- Added more options to customize the look and feel of your bars:
-- Change the color of your count text to indicate bank inclusion, item quality, or a custom color
-- Hide the four-point golden bank inclusion border
-- Show a border indicating item quality
-- Show a cooldown swipe on items
-- Mouseover capability, including anchor mouseover only
-- Toggle the visibility of empty buttons
-- Change the number of buttons per row/column
-- Change the size of buttons
-- Change the padding between buttons
-- Change the font of bars' text
-- Change the position of count and objective texts
-- Give your bar a name or description
-- Masque skins support
- Added Objective Builder to create custom objectives beyond items:
-- Currencies
-- Mixed items (a combination of various items to complete one common objective)
-- Shopping lists (a group of several item objectives required to complete the main objective)
- Shortcuts on bars and buttons have been added or changed:
-- Added ability to open the Objective Builder from bar anchor and button (ctrl+right-click)
-- Toggle bank inclusion has changed to alt+left-click; shift+left-click now moves an item as shift+drag support has been added
-- Move items between your bags and bank via Alt+right-click (with additional shift and ctrl modifiers to customize behavior)
- Quality of life changes:
-- Track and move items by drag and drop
-- Configure all bars at once via the GUI
-- Access commands via /farmingbar, /farmbar, /farm, /fbar
-- Additional buttons to clear or tidy up bars
-- Hide bar/button tips at the bottom of tooltips
- Commands have been completely revamped. See documentation in game.
- You can now customize alert messages
- Option to change alert sounds has been added
- Profile support added
- Templates for Mechagon items added