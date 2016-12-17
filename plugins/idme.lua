
do

function run(msg, matches)
	if msg.to.type == 'chat' or msg.to.type == 'channel' then
  return " اسم شما : "..msg.from.first_name.."\nایدی شما : "..msg.from.id.."\n---------------------------------------\nنام کاربری شما : @"..(msg.from.username or '').."---------------------------------------\n لینک شما : telegram.me/"..(msg.from.username or '').."\n---------------------------------------\n اسم گروه : "..msg.to.title.."\n ایدی گروه : "..msg.to.id
end
end
return {
  description = "Info Group And User", 
  usage = "id: Information",
  patterns = {
    "^id",
    "^[#!/]id$"
    }, 
  run = run 
}

end
