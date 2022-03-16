
function self:onOpen(packet)
  
  local data_ghep=require "script_common.ghep_json"
  local data_material=require "script_common.Material"
  self.BG.Image:setImage(data_ghep[packet.id].image)
  self.BG.Button.onMouseClick = function()
    UI:closeWindow(self)
  end
  for i=1,5 do
    if i>#data_ghep[packet.id].materia then
      self.BG.HorizontalLayout:child("item"..i):setVisible(false)
    else
      self.BG.HorizontalLayout:child("item"..i).btn:setNormalImage(data_material[data_ghep[packet.id].materia[i].id+1].image)
      self.BG.HorizontalLayout:child("item"..i).Text:setText(data_material[data_ghep[packet.id].materia[i].id+1].name)
    end
  end
  
end