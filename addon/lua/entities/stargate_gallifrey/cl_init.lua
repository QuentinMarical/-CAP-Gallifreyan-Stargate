include("shared.lua");
ENT.ChevronColor = Color(0,0,255);
if (SGLanguage!=nil and SGLanguage.GetMessage!=nil) then
ENT.Category = SGLanguage.GetMessage("stargate_category");
ENT.PrintName = SGLanguage.GetMessage("stargate_gallifrey");
end