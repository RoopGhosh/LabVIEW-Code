// GetAsyncKeyState.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"


#ifdef _MANAGED
#pragma managed(push, off)
#endif

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
					 )
{
    return TRUE;
}

_declspec (dllexport) void GUIGetKeyState (int vKeys[105],char KeyState[105],int *NKeysPressed)
{
	//int vKeys[]={ 48 ,49 ,50 ,51 ,52 ,53 ,54 ,55 ,56 ,57 ,65 ,66 ,67 ,68 ,69 ,70 ,71 ,72 ,73 ,74 ,75 ,76 ,77 ,78 ,79 ,80 ,81 ,82 ,83 ,84 ,85 ,86 ,87 ,88 ,89 ,90 ,112 ,113 ,114 ,115 ,116 ,117 ,118 ,119 ,120 ,121 ,122 ,123 ,124 ,125 ,126 ,107 ,8 ,220 ,20 ,188 ,110 ,46 ,111 ,40 ,35 ,187 ,27 ,192 ,36 ,45 ,219 ,162 ,37 ,18 ,16 ,91 ,189 ,106 ,34 ,144 ,96 ,97 ,98 ,99 ,100 ,101 ,102 ,103 ,104 ,105 ,19 ,190 ,33 ,221 ,163 ,13 ,39 ,165 ,161 ,92 ,145 ,186 ,191 ,32 ,109 ,9 ,38 ,13 ,222 };
	unsigned short pressed;
	*NKeysPressed=0;
	//int pressedKeys[105];
	int shift = (sizeof(unsigned short)*8)-1;
	for (int i=0;i<=104;i++)
	{
		pressed = GetAsyncKeyState(vKeys[i]);  
		pressed = pressed >> shift;
		if (pressed)
			//*NKeysPressed = pressed;
			KeyState[(*NKeysPressed)++]= i ;
	}
	
	return; 
}


#ifdef _MANAGED
#pragma managed(pop)
#endif

