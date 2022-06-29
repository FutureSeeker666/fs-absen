ESX = nil

local polisidc = "Discord Webhook"
local emsdc = ""
local mekanikdc = ""
local pedagangdc = ""
local taksidcdc = ""
local pdmdc = ""


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('fs-absen:polisi')
AddEventHandler('fs-absen:polisi', function(data)
    local nama = GetPlayerName(source)
    local now = os.date("%H:%M")
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "ABSENSI POLISI | Steam : "..nama,
            ["description"] = "PANGKAT : **"..data.plate.."** \n\n NAMA :  **"..data.lastname.."** \n\n JENIS KELAMIN : **"..data.gender.."**\n\n KOTA : **"..data.why.."**\n\n JAM: **"..now.."**",
	        ["footer"] = {
                ["text"] = "Formulir Absensi",
            },
        }
    }
    PerformHttpRequest(polisidc, function(err, text, headers) end, 'POST', json.encode({username = "Formulir Absensi",  avatar_url = "",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('fs-absen:ems')
AddEventHandler('fs-absen:ems', function(data)
    local nama = GetPlayerName(source)
    local now = os.date( "%H:%M")
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "ABSENSI EMS | Steam : "..nama,
            ["description"] = "JABATAN : **"..data.plate.."** \n\n NAMA :  **"..data.lastname.."** \n\n JENIS KELAMIN : **"..data.gender.."**\n\n KOTA : **"..data.why.."**\n\n JAM: **"..now.."**",
	        ["footer"] = {
                ["text"] = "Formulir Absensi",
            },
        }
    }
    PerformHttpRequest(emsdc, function(err, text, headers) end, 'POST', json.encode({username = "Formulir Absensi",  avatar_url = "",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('fs-absen:mekanik')
AddEventHandler('fs-absen:mekanik', function(data)
    local nama = GetPlayerName(source)
    local now = os.date( "%H:%M")
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "ABSENSI MEKANIK | Steam : "..nama,
            ["description"] = "JABATAN : **"..data.plate.."** \n\n NAMA :  **"..data.lastname.."** \n\n JENIS KELAMIN : **"..data.gender.."**\n\n KOTA : **"..data.why.."**\n\n JAM: **"..now.."**",
	        ["footer"] = {
                ["text"] = "Formulir Absensi",
            },
        }
    }
    PerformHttpRequest(mekanikdc, function(err, text, headers) end, 'POST', json.encode({username = "Formulir Absensi",  avatar_url = "",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('fs-absen:pedagang')
AddEventHandler('fs-absen:pedagang', function(data)
    local nama = GetPlayerName(source)
    local now = os.date( "%H:%M")
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "ABSENSI PEDAGANG | Steam : "..nama,
            ["description"] = "JABATAN : **"..data.plate.."** \n\n NAMA :  **"..data.lastname.."** \n\n JENIS KELAMIN : **"..data.gender.."**\n\n KOTA : **"..data.why.."**\n\n JAM: **"..now.."**",
	        ["footer"] = {
                ["text"] = "Formulir Absensi",
            },
        }
    }
    PerformHttpRequest(pedagangdc, function(err, text, headers) end, 'POST', json.encode({username = "Formulir Absensi",  avatar_url = "",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('fs-absen:taxi')
AddEventHandler('fs-absen:taxi', function(data)
    local nama = GetPlayerName(source)
    local now = os.date( "%H:%M")
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "ABSENSI TAKSI | Steam : "..nama,
            ["description"] = "JABATAN : **"..data.plate.."** \n\n NAMA :  **"..data.lastname.."** \n\n JENIS KELAMIN : **"..data.gender.."**\n\n KOTA : **"..data.why.."**\n\n JAM: **"..now.."**",
	        ["footer"] = {
                ["text"] = "Formulir Absensi",
            },
        }
    }
    PerformHttpRequest(taksidc, function(err, text, headers) end, 'POST', json.encode({username = "Formulir Absensi",  avatar_url = "",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('fs-absen:dealer')
AddEventHandler('fs-absen:dealer', function(data)
    local nama = GetPlayerName(source)
    local now = os.date( "%H:%M")
    local connect = {
        {
            ["color"] = "255",
            ["title"] = "ABSENSI PDM | Steam : "..nama,
            ["description"] = "JABATAN : **"..data.plate.."** \n\n NAMA :  **"..data.lastname.."** \n\n JENIS KELAMIN : **"..data.gender.."**\n\n KOTA : **"..data.why.."**\n\n JAM: **"..now.."**",
	        ["footer"] = {
                ["text"] = "Formulir Absensi",
            },
        }
    }
    PerformHttpRequest(pdmdc, function(err, text, headers) end, 'POST', json.encode({username = "Formulir Absensi",  avatar_url = "",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

