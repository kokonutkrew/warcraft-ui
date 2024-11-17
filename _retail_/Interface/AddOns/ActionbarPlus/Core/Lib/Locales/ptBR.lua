--[[-----------------------------------------------------------------------------
Local Vars
-------------------------------------------------------------------------------]]
--- @type Namespace
local _, ns = ...

local LocUtil = ns.O.LocalizationUtil

---@type AceLocale
local L = LibStub("AceLocale-3.0"):NewLocale(ns.name, "ptBR");
if not L then return end

--[[-----------------------------------------------------------------------------
Localization Keys That need to be defined for Bindings.xml
-------------------------------------------------------------------------------]]
local actionBarText = 'Barra'
local buttonBarText = 'Botão'

L['ABP_ACTIONBAR_BASE_NAME']                             = actionBarText
L['ABP_BUTTON_BASE_NAME']                                = buttonBarText

LocUtil:SetupKeybindNames(L, actionBarText, buttonBarText)

--[[-----------------------------------------------------------------------------
Keybinding Localization
The contents below this block will be generated automatically.
-------------------------------------------------------------------------------]]

L["Addon Info"] = "Add-on informação"
L["Addon Initialized Text Format"] = "%s Inicializado. Digite %s no console para ver os comandos disponíveis."
L["Alpha"] = "Alfa"
L["Alpha::Description"] = "Defina a opacidade da alça da moldura."
L["ALT"] = "ALT"
L["Always"] = "Sempre"
L["Available console commands"] = "Comandos disponíveis no console"
L["Character Specific Frame Positions"] = "Posições de moldura específicas para personagens."
L["Character Specific Frame Positions::Description"] = "Por padrão, todas as posições de moldura (ou âncoras) são globais entre os personagens. Se selecionado, as posições de moldura serão salvas no nível do personagem."
L["Columns"] = "Colunas"
L["Columns::Description"] = "O número de colunas para os botões"
L["Combat Override Key"] = "Chave de substituição de combate"
L["Combat Override Key::Description"] = "Escolha quando deseja que a dica de ferramenta seja exibida durante o combate. Se um modificador for selecionado, será necessário mantê-lo pressionado para exibir a dica de ferramenta."
L["CTRL"] = "CTRL"
L["Debugging"] = "Depuração"
L["Debugging Configuration"] = "Configuração de depuração"
L["Debugging::Description"] = "Configurações de depuração para solução de problemas"
L["Enable"] = "Ativar"
L["Frame Handle Settings"] = "Configurações da alça de moldura"
L["General"] = "Geral"
L["General Configuration"] = "Configuração geral."
L["Hide"] = "Ocultar"
L["Hide countdown numbers on cooldowns"] = "Ocultar os números de contagem regressiva das habilidades em tempo de recarga"
L["Hide countdown numbers on cooldowns::Description"] = "Quando selecionada, esta opção oculta os números de contagem regressiva de uma habilidade, item, macro, etc"
L["Hide during taxi"] = "Ocultar durante o voo"
L["Hide during taxi::Description"] = "Oculta as barras de ação enquanto o jogador está em um táxi; voando de um ponto a outro."
L["Hide text for smaller buttons"] = "Ocultar texto para botões menores"
L["Hide text for smaller buttons::Description"] = "Quando selecionada, esta opção oculta o texto de contagem de itens, teclas de atalho e índice quando os botões são menores que 35 em tamanho"
L["In-Combat"] = "Em Combate"
L["Info Console Command Text"] = "Exibe informações adicionais sobre o addon no console."
L["Lock Actionbar"] = "Bloquear barra de ação"
L["Lock Actionbar::Description"] = [=[Opções:

- Sempre: bloqueia o quadro o tempo todo.
- Em Combate: bloqueia o quadro durante o combate.

Observação: esta opção apenas impede que o quadro seja movido e não bloqueia os itens de ação individuais.]=]
L["Log Level"] = "Nível de registro"
L["Log Level::Description"] = "Níveis de registro mais altos geram mais registros"
L["Mouseover"] = "Passar o Mouse"
L["Mouseover Glow"] = "Brilho ao passar o mouse."
L["Mouseover Glow::Description"] = "Ativa o brilho ao passar o mouse sobre o botão de ação"
L["Mouseover::Description"] = "Oculta o mover do quadro no topo da barra de ação por padrão. Passe o mouse sobre ele para torná-lo visível e mover o quadro."
L["No"] = "Não"
L["options"] = "opções"
L["Options Dialog"] = "Diálogo de Opções."
L["Reset Anchor"] = "Redefinir Âncora"
L["Reset Anchor::Description"] = "Redefine a âncora (posição) do grupo da barra de ação para o centro da tela. Isso pode ser útil quando o quadro de arraste da barra de ação sai da tela."
L["Right-click to open config UI"] = "Clique com o botão direito para abrir a interface de configuração"
L["Rows"] = "Linhas"
L["Rows::Description"] = "O número de linhas para os botões."
L["Settings"] = "Configurações"
L["SHIFT"] = "SHIFT"
L["Show"] = "Mostrar"
L["Show Button Numbers"] = "Mostrar números dos botões."
L["Show Button Numbers::Description"] = "Mostrar o índice de cada botão em %s"
L["Show empty buttons"] = "Mostrar botões vazios"
L["Show empty buttons::Description"] = "Marque esta opção para sempre mostrar os botões na barra de ação, mesmo quando eles estiverem vazios."
L["Show Keybind Text"] = "Mostrar texto de atalhos de teclado"
L["Show Keybind Text::Description"] = "Mostrar o texto de atalho de teclado de cada botão em %s."
L["Shows the config UI (default)"] = "Mostra a interface de configuração (padrão)"
L["Shows this help"] = "Mostra esta ajuda"
L["Size (Width & Height)"] = "Tamanho (Largura e Altura)"
L["Size (Width & Height)::Description"] = "A largura e altura de um botão"
L["Tooltip Anchor"] = "Âncora da dica de ferramenta"
L["Tooltip Anchor::Description"] = "Selecione como e onde a dica de ferramenta do jogo deve ser exibida ao pairar sobre um botão de ação"
L["Tooltip Options"] = "Opções de dica de ferramenta"
L["Tooltip Visibility"] = "Visibilidade da dica de ferramenta"
L["Tooltip Visibility::Description"] = "Escolha quando deseja que a dica de ferramenta seja exibida quando não estiver em combate. Se um modificador for escolhido, você precisará mantê-lo pressionado para exibir a dica de ferramenta."
L["usage"] = "utilização"

