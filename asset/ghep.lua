function self:onOpen(packet)
  local data_ghep=require "script_common.ghep_json"
  for i=1,self.BG.ScrollableView.itemList:getChildCount() do
    if i>#data_ghep then
      self.BG.ScrollableView.itemList:child("item"..i):setVisible(false)
    else
      self.BG.ScrollableView.itemList:child("item"..i):setNormalImage(data_ghep[i].image)
      self.BG.ScrollableView.itemList:child("item"..i).Text:setText(data_ghep[i].name)
    end
    self.BG.ScrollableView.itemList:child("item"..i).onMouseClick = function()
      for j=1,#data_ghep do
        if data_ghep[j].id==i then
          UI:openWindow("ghep_1","ghep_1","layouts",{id=i})
          print("OPEN "..i)
        end
      end
    end
  end
end