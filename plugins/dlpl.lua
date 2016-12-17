local function run(msg, matches)
    if matches[1] == "delplugin" and is_sudo(msg) then
text = io.popen("cd plugins && rm "..matches[2]..".lua")
return " پلاگین ["..matches[2].."] توسط ["..msg.from.id.."] با موفقست حذف شد"
end 
end
return { 
patterns = {
'^[!/](deleteplugin) (.*)$' 
},
run = run,
}
