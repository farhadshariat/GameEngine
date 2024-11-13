#include <iostream>
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2/SDL_ttf.h>
#include <SDL2/SDL_mixer.h>
#include <glm/glm.hpp>
#include <lua/lua_all_header.h>
#include <sol/sol.hpp>
#include <imgui/imgui.h>
#include "src/Game/Game.h"

int main()
{
    Game game;
    game.Initialize();
    game.Run();
    game.Destroy();

    return 0;
}