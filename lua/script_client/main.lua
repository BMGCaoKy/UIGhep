print('script_client:hello world')
World.Timer(10, function()
    UI:openWindow("ghep")
    --local guiMgr = GUIManager:Instance()
	--local window = UI:openWindow("")
  if UI:isOpenWindow("ghep")==false then 
    UI:openWindow("ghep")
  end

end)
