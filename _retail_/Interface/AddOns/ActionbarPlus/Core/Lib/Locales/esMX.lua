--[[-----------------------------------------------------------------------------
Local Vars
-------------------------------------------------------------------------------]]
--- @type Namespace
local _, ns = ...

local LocUtil = ns.O.LocalizationUtil

---@type AceLocale
local L = LibStub("AceLocale-3.0"):NewLocale(ns.name, "esMX");
if not L then return end

--[[-----------------------------------------------------------------------------
Localization Keys That need to be defined for Bindings.xml
-------------------------------------------------------------------------------]]
local actionBarText = 'Barra'
local buttonBarText = 'Botón'

L['ABP_ACTIONBAR_BASE_NAME']                             = actionBarText
L['ABP_BUTTON_BASE_NAME']                                = buttonBarText

LocUtil:SetupKeybindNames(L, actionBarText, buttonBarText)

--[[-----------------------------------------------------------------------------
Keybinding Localization
The contents below this block will be generated automatically.
-------------------------------------------------------------------------------]]

L["Addon Info"] = "Información"
L["Addon Initialized Text Format"] = "%s Inicializado. Escriba %s en la consola para ver los comandos disponibles."
L["Alpha"] = "Alpha"
L["Alpha::Description"] = "Establecer la opacidad del controlador de marco."
L["ALT"] = "ALT"
L["Always"] = "Siempre"
L["Available console commands"] = "Comandos de consola disponibles"
L["Character Specific Frame Positions"] = "Posiciones de marco específicas del personaje"
L["Character Specific Frame Positions::Description"] = "Por defecto, todas las posiciones de marco (o anclajes) son globales para todos los personajes. Si se selecciona, las posiciones de marco se guardarán a nivel de personaje."
L["Columns"] = "Columnas"
L["Columns::Description"] = "El número de columnas para los botones"
L["Combat Override Key"] = "Tecla de anulación de combate"
L["Combat Override Key::Description"] = "Elige cuándo quieres que se muestre la información sobre herramientas durante el combate. Si se elige un modificador, tendrás que mantener pulsado ese modificador para que se muestre la información sobre herramientas."
L["CTRL"] = "CTRL"
L["Debugging"] = "Depuración"
L["Debugging Configuration"] = "Configuración de Depuración"
L["Debugging::Description"] = "Ajustes de depuración para solucionar problemas"
L["Enable"] = "Habilitar"
L["Frame Handle Settings"] = "Ajustes del controlador de marco"
L["General"] = "General"
L["General Configuration"] = "Configuración General"
L["Hide"] = "Ocultar"
L["Hide countdown numbers on cooldowns"] = "Ocultar los números de cuenta atrás en los tiempos de reutilización"
L["Hide countdown numbers on cooldowns::Description"] = "Cuando se selecciona, esta opción oculta los números de cuenta atrás de un hechizo, objeto, macro, etc."
L["Hide during taxi"] = "Ocultar durante el vuelo"
L["Hide during taxi::Description"] = "Oculta las barras de acción mientras el jugador está en taxi; volando de un punto a otro."
L["Hide text for smaller buttons"] = "Ocultar texto en botones más pequeños"
L["Hide text for smaller buttons::Description"] = "Cuando se selecciona, esta opción oculta el texto de cantidad, tecla de acceso rápido e índice cuando los botones tienen un tamaño inferior a 35."
L["In-Combat"] = "En combate"
L["Info Console Command Text"] = "Muestra información adicional sobre el add-on en esta consola"
L["Lock Actionbar"] = "Bloquear la barra de acción"
L["Lock Actionbar::Description"] = [=[
Opciones:

- Siempre: bloquea el marco en todo momento.
- En combate: bloquea el marco durante el combate

Nota: esta opción solo evita que el marco se mueva y no bloquea los elementos de acción individuales.]=]
L["Log Level"] = "Nivel de registro"
L["Log Level::Description"] = "Los niveles de registro más altos generan más registros"
L["Mouseover"] = "Pasar el ratón por encima"
L["Mouseover Glow"] = "Resplandor al pasar el ratón por encima"
L["Mouseover Glow::Description"] = "Permite el resplandor al pasar el ratón por encima en los botones de acción"
L["Mouseover::Description"] = "Oculta el controlador de marco en la parte superior de la barra de acción de forma predeterminada. Pasa el ratón por encima para hacerlo visible y mover el marco."
L["No"] = "No"
L["options"] = "opciones"
L["Options Dialog"] = "Cuadro de Diálogo de Opciones"
L["Reset Anchor"] = "Restablecer anclaje"
L["Reset Anchor::Description"] = "Restablece el anclaje (posición) del grupo de barras de acción al centro de la pantalla. Esto puede ser útil cuando el controlador de arrastre de la barra de acción se sale de la pantalla."
L["Right-click to open config UI"] = "Haz clic derecho para abrir la interfaz de configuración"
L["Rows"] = "Filas"
L["Rows::Description"] = "El número de filas para los botones"
L["Settings"] = "Ajustes"
L["SHIFT"] = "SHIFT"
L["Show"] = "Muestra"
L["Show Button Numbers"] = "Muestra los Números de los Botones"
L["Show Button Numbers::Description"] = "Muestra el índice de cada botón en %s"
L["Show empty buttons"] = "Muestra botones vacíos"
L["Show empty buttons::Description"] = "Marca esta opción para mostrar siempre los botones en la barra de acción, incluso cuando estén vacíos."
L["Show Keybind Text"] = "Mostrar Texto de Tecla de Acceso Rápido"
L["Show Keybind Text::Description"] = "Mostrar el texto de las teclas en cada botón en %s"
L["Shows the config UI (default)"] = "Muestra la interfaz de usuario de configuración (predeterminada)"
L["Shows this help"] = "Muestra esta ayuda."
L["Size (Width & Height)"] = "Tamaño (Ancho y Altura)"
L["Size (Width & Height)::Description"] = "El ancho y la altura de un botón"
L["Tooltip Anchor"] = "Anclaje del Tooltip"
L["Tooltip Anchor::Description"] = "Selecciona cómo y dónde se debe mostrar el tooltip del juego al pasar el cursor sobre un botón de acción"
L["Tooltip Options"] = "Opciones del Tooltip"
L["Tooltip Visibility"] = "Visibilidad del Tooltip"
L["Tooltip Visibility::Description"] = "Selecciona cuándo deseas que se muestre el tooltip cuando no estás en combate. Si se elige un modificador, entonces es necesario mantener presionado ese modificador para mostrar el tooltip."
L["usage"] = "uso"

