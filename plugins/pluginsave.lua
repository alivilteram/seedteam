do
 local function save_file(name, text)
    local file = io.open("./plugins/"..name, "w")
    file:write(text)
    file:flush()
    file:close() 
    return "New Plug-In Added."
end   
function run(msg, matches)
  if matches[1] == "saveit" and is_sudo(msg) then
  
         local name = matches[2]
        local text = matches[3]
        return save_file(name, text)
        
  end
end
return {
  patterns = {
  "^[/!](saveit) ([^%s]+) (.+)$"
  },
  run = run
}
end
