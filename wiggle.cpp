#include <Windows.h>
#include <iostream>
#include <mmsystem.h>
#include <fstream>
#pragma comment(lib, "winmm.lib")
#pragma comment(lib, "User32.lib")
#pragma comment(lib, "Advapi32.lib")

RECT pos;
int num= 10;
std::ofstream logFile("log.txt");

void wiggle(){
    HWND name=GetForegroundWindow();
    if (name == NULL) {
        logFile << "Failed to get foreground window." << std::endl;
        return;
    }

    GetWindowRect(name, &pos);
    SetWindowPos(name, NULL, pos.left-num, pos.top, NULL, NULL, SWP_NOSIZE);

    switch (num)
    {
    case 10:
        num = -10;
        break;
    case -10:
        num = 10;
        break;
    }
        Sleep(50);
}

int main() {



    Sleep(50000);
    ShowWindow(GetConsoleWindow(), SW_HIDE);
    PlaySound("sound.wav", NULL, SND_FILENAME | SND_ASYNC | SND_LOOP);

    while(true){
        wiggle();
    }
    
    return 0;
}