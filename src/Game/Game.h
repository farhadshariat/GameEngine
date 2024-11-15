#pragma once

#include <SDL2/SDL.h>
#include "../ECS/ECS.h"

const int FPS = 60;
const int MILLISECS_PER_FRAME = 1000 / FPS;

class Game
{
private:
    bool isRunning;
    int millisecsPreviousFrame = 0;
    SDL_Window* window;
    SDL_Renderer* renderer;

    std::unique_ptr<Registry> registry;

public:
    Game();
    ~Game();
    void Initialize();
    void Run();
    void ProcessInput();
    void Setup();
    void Update();
    void Render();
    void Destroy();

    int WindowWidth;
    int WindowHeight;
};