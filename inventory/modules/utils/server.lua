if not lib then return end

local Utils = {}

local webHook = GetConvar('ox_inventory:webhook', '')
if webHook == '' then
	local w = GetConvar('w2f_logs_default_webhook', '')
	if type(w) == 'string' then
		w = (w:match('^%s*(.-)%s*$')) or ''
		if w ~= '' then webHook = w end
	end
end

if webHook ~= '' then
	local validHosts = {
		['i.imgur.com'] = true,
	}

	local validExtensions = {
		['png'] = true,
		['apng'] = true,
		['webp'] = true,
	}

	local headers = { ['Content-Type'] = 'application/json' }

	function Utils.IsValidImageUrl(url)
		local host, extension = url:match('^https?://([^/]+).+%.([%l]+)')
		return host and extension and validHosts[host] and validExtensions[extension]
	end

	---@param title string
	---@param message string
	---@param image string
	function Utils.DiscordEmbed(title, message, image, color)
		PerformHttpRequest(webHook, function() end, 'POST', json.encode({
			username = 'ox_inventory', embeds = {
				{
					title = title,
					color = color,
					footer = {
						text = os.date('%c'),
					},
					description = message,
					thumbnail = {
						url = image,
						width = 100,
					}
				}
			}
		}), headers)
	end
end

return Utils
