#include <a_samp>
#include <zcmd>
#include <mSelection>

new SKIN_CUSTOM;
public OnFilterScriptInit() 
{
    print("Loading Skins Custom...");
    return SKIN_CUSTOM = LoadModelSelectionMenu("skins_custom.txt");
}

public OnPlayerModelSelection(playerid, response, listid, modelid) {
	if((listid == SKIN_CUSTOM) && response) return SetPlayerSkin(playerid, modelid);
	return 1;
}

CMD:skinscustom(playerid, params[]) {
	if(!isnull(params)) return SetPlayerSkin(playerid, strval(params));
	return ShowModelSelectionMenu(playerid, SKIN_CUSTOM, "Skins Custom");
}
