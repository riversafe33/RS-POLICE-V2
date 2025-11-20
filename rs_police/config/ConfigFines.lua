ConfigFines = {}

ConfigFines.Prompt = 0x760A9C6F -- G

ConfigFines.Align = "top-right"  -- Align Menu Fines Pay Station

ConfigFines.ItemName = "fine_book" 

ConfigFines.jobRequiredItem = true 
ConfigFines.allowedJobsItem = {
    sheriff = {minGrade = 3},    -- If minGrade is 3, only players with the police job grade 3 or higher can use the item.
    marshal = {minGrade = 2},    -- Only marshals grade 2 or higher can use it.
    lawmen  = {minGrade = false}  -- If minGrade is false and ConfigFines.jobRequiredItem = true, any player with the lawmen job can create fines.
} -- You can remove or add as many as you want

ConfigFines.jobRequiredCollect = true 
ConfigFines.allowedJobsCollect = {
    sheriff = {minGrade = 3},    -- This job can open the View Fines menu, but can only collect paid fines or delete pending fines if their grade is 3 or higher.
    lawmen  = {minGrade = 2},    -- This job can open the View Fines menu, but can only collect paid fines or delete pending fines if their grade is 2 or higher.
    marshal = {minGrade = false} -- If minGrade = false, anyone with this job can open the View Fines menu and collect paid fines or delete pending fines regardless of grade.
} -- You can remove or add as many jobs as you want.

-- Payment locations on the map where fines can be paid.
-- You can add as many as you want.
ConfigFines.puntosPago = {
    vector3(-810.59, -1277.49, 43.64), -- Blackwater Bank
    vector3(-305.08, 775.3, 118.7),    -- Valentine Bank
    vector3(2648.49, -1294.21, 52.25), -- Sain Denist Bank
    vector3(1292.35, -1301.57, 77.04), -- Rhodes Bank
    vector3(2939.54, 1288.55, 44.65),  -- Annesburg Train Station
}

-- Toggle whether blips should be created on the map
ConfigFines.EnableBlips = true -- true = blips will be created / false = no blips

-- List of blips to display on the map if EnableBlips is true
ConfigFines.BlipsFines = {
    -- Each entry represents a fines station with its position, name, and blip sprite
    { pos = vector3(-810.59, -1277.49, 43.64), name = "Blackwater Fines Pay Station", sprite = 587827268 },
    { pos = vector3(-305.08, 775.3, 118.7), name = "Valentine Fines Pay Station", sprite = 587827268 },
    { pos = vector3(2648.49, -1294.21, 52.25), name = "Saint Denis Fines Pay Station", sprite = 587827268 },
    { pos = vector3(1292.35, -1301.57, 77.04), name = "Rhodes Fines Pay Station", sprite = 587827268 },
    { pos = vector3(2939.54, 1288.55, 44.65), name = "Annesburg Fines Pay Station", sprite = 587827268 },
}

-- Toggle whether NPCs should be spawned at the stations
ConfigFines.EnableNPCs = true -- true = NPCs will be spawned / false = no NPCs

-- NPC configuration
ConfigFines.NPC = {
    model = "A_M_M_RHDOBESEMEN_01", -- Model name of the NPC to be used

    -- List of coordinates where NPCs will be placed if EnableNPCs is true
    -- Each entry is a vector4 with position (x, y, z) and heading (w)
    coords = {
        vector4(-810.51, -1275.36, 43.64, 193.4),  -- Blackwater NPC
        vector4(-306.18, 773.53, 118.7, 327.32),   -- Valentine NPC
        vector4(2646.99, -1294.75, 52.25, 310.81), -- Saint Denis NPC
        vector4(1291.23, -1303.29, 77.04, 325.85), -- Rhodes NPC
        vector4(2939.02, 1286.95, 44.65, 350.03),  -- Annesburg NPC
    }
}

ConfigFines.Textos = {
    tituloPagina = "Fine System",
    formularioTitulo = "Fine Book",
    panelTitulo = "Sheriff Panel",
    labelNombre = "First Name:",
    labelApellido = "Last Name:",
    labelPanelID = "Offender ID:",
    labelPanelMotivo = "Reason for Fine:",
    labelPanelMonto = "Fine Amount $:",
    botonRegistrar = "Register Fine",
    buscadorPlaceholder = "Search by first or last name...",
    botonRecolectar = "Collect Paid Fines",
    estadoPagada = "Paid",
    estadoPendiente = "Unpaid",
    promptTitulo = "Ticket System",
    press = "Press [G] to pay your fines",
    labelID = "ID:",
    labelMotivo = "Reason:",
    labelMonto = "Amount:",
    autorLabel = "Author:",
    estadoLabel = "Status:",
    menuamount = "Fine in the amount of ",
    menureason = "Pending´s fines",
    botonEliminar = "Delete",
    estadoRecolectada = "Collected",
    multadoLabel = "Fined:",
    labelImagen = "Image",
    botonEliminarPendiente = "Remove pending fine",
    menuCollectFines = "View Fines",
    Notify = {
        collect = "Fine System",
        notpermisitem = "You don't have permission to use this item.",
        notid = "No player found with that ID.",
        correctfine = "Fine successfully registered.",
        notfine = "You have no pending fines.",
        corectpay = "Fine successfully paid.",
        notmoney = "You don't have enough money.",
        notpermismenu = "You don't have permission to use this menu",
        received = "You have collected ",
        amount = " in paid fines.",
        notfinetocollect = "There are no paid fines to collect.",
        notpermistocollect = "You don't have permission to collect fines.",
        multaEliminada = "Fine successfully removed",
        recivefine =  "You have received a fine of",
        notrankpermis = "You do not have the required rank to perform this action.",
    }
}