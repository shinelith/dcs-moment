-- Moment - DCS menu wallpaper customize tools 1.0.1
-- Author : LITH

local function getFileName(str)
  local idx = str:match(".+()%.%w+$")
  if(idx) then
    return str:sub(1, idx-1)
  else
    return str
  end
end

local function getExtension(str)
  return str:match(".+%.(%w+)$")
end

local function getPngFilepath(rootpath)
  pngs = {}
  for entry in lfs.dir(rootpath) do
    if entry ~= '.' and entry ~= '..' then
      local path = rootpath .. '\\' .. entry
      local attr = lfs.attributes(path)
      if attr.mode ~= 'directory' then
        local ext = getExtension(entry)
        if ext == 'png' then
          image = {
            ["path"] = path,
            ["fileName"] = getFileName(entry),
            ["ext"] = ext
          }
          table.insert(pngs,image)
        end
      end
    end
  end
  return pngs
end

local function readRandomValueInTable(Table)
    math.randomseed(tostring(os.time()):reverse():sub(1, 6))  
    return Table[math.random(1,#Table)]
end

local function copyfile(src, dst)
  os.execute(string.format('copy "%s" "%s"', src, dst))
end

local function showPngs(pngs)
  for k,v in pairs (pngs) do
   log.write('Moment',log.INFO,v.path)
  end
end

log.write('Moment',log.INFO,'Moment Start')
local pngs = getPngFilepath(lfs.writedir()..'ScreenShots')
--showPngs(pngs)
local png = readRandomValueInTable(pngs)
if png then
  copyfile(png.path,lfs.writedir()..'Mods\\tech\\Moment\\Theme\\ME\\base-menu-window.png')
  log.write('Moment',log.INFO,'Set new wallpaper '..png.path)
end
log.write('Moment',log.INFO,'Moment Finish')