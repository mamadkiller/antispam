local function pre_process(msg)
local to = msg.to.type
local service = msg.service
	if to == 'user' and msg.fwd_from then
		if not is_support(msg.from.id) and not is_admin1(msg) then
			return
		end
		local user = 'user#id'..msg.from.id
		local from_id = msg.fwd_from.peer_id
		if msg.fwd_from.first_name then
			from_first_name = msg.fwd_from.first_name:gsub("_", " ")
		else
			from_first_name = "None"
		end
		if msg.fwd_from.last_name then
			from_last_name = msg.fwd_from.last_name:gsub("_", " ")
		else
			from_last_name = "None"
		end
		if msg.fwd_from.username then
			from_username = "@"..msg.fwd_from.username
		else
			from_username = "@[none]"
		end
		text = "<i>✨مشخصات✨:\n\n✨ایدی✨ > "..from_id.."\n✨نام✨ > "..from_first_name.."\n✨نام خانوادگی✨ > "..from_last_name.."\n✨نام کاربری✨ > </i>"..from_username
		send_large_msg(user, text)
	end
	return msg
end



return {
    patterns = {

	"^[#!/](pmhelp)$",
	"^[#!/](join) (.*) (support)$",
    "^[#!/](kickme) (.*)$",
	"^([Hh]elp)$",
	"^([Pp]mhelp)$",
	"^([Jj]oin) (.*) (support)$",
    "^([Kk]ickme) (.*)$",
    "^!!tgservice (chat_add_user)$",
    },
    run = run,
	pre_process = pre_process
}
