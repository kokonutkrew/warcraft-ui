# AllTheThings

## [4.1.6](https://github.com/DFortun81/AllTheThings/tree/4.1.6) (2024-11-05)
[Full Changelog](https://github.com/DFortun81/AllTheThings/compare/4.1.5...4.1.6) [Previous Releases](https://github.com/DFortun81/AllTheThings/releases)

- Had a string of unexpected issues in the classic version of att/wow, hopefully they should all be fixed now and att work correctly in every version of wow  
- Fixed Currency statistic text not updating when your currency amounts change  
- Add new Guest Relations quest, input Mtn Dew pet species ids  
- Re-duplicated the BRD raid drops so that we can accurately list their respective key costs... maybe eventually another way to handle this organization without duplicating the Items...  
- Set Achievement Criteria as 'Trackable' as this can be used to allow incomplete Criteria to be shown in lists even if their Achievement is already earned (relates to #1782)  
- Achievement Criteria only show 'saved' indicator if the criteria has specifically been completed (they continue to be considered collected if the Achievement itself has been earned) (relates to #1782)  
- Fixed variants setup for Breadcrumb-type Quests  
- Removed pre-registration of the LOOT\_CLOSED event (relates to #1792)  
- Fixed possibility of Lua error for minilist tooltip when in a Location that fails to return a mapID (fixes #1707)  
- Classic: Fixed Item cost logic on gold-cost Items (fixed #1833)  
- Parser: Fixed tabel reference for non-en FlightPathNames  
- Add Mtn Dew promo itemids, start adding some 11.0.7 meta achievements, fix some reported errors  
