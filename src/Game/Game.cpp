#include "Game.h"
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <glm/glm.hpp>
#include <iostream>
#include "../ECS/ECS.h"
#include "../Components/TransformComponent.h"
#include "../Components/RigidBodyComponent.h"
#include "../Logger/Logger.h"

Game::Game()
{
    isRunning = false;

    registry = std::make_unique<Registry>();

    Logger::Log("Game constructor is called");
}

Game::~Game()
{
    Logger::Log("Game destructor is called");
}


void Game::Initialize()
{
    if(SDL_Init(SDL_INIT_EVERYTHING) != 0)
    {
        Logger::Log("Error initializing SDL");
        return;
    }

    SDL_DisplayMode displayMode;
    SDL_GetCurrentDisplayMode(0, &displayMode);
    WindowWidth = displayMode.w;
    WindowHeight = displayMode.h;

    window = SDL_CreateWindow(
        NULL,
        SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,
        WindowWidth,
        WindowHeight,
        SDL_WINDOW_BORDERLESS
    );
    if (!window)
    {
        Logger::Log("Error creating SDL window");
        return;
    }

    renderer = SDL_CreateRenderer(window, -1, 0);

    if(!renderer)
    {
        Logger::Log("Error creating SDL renderer");
        return;
    }

    SDL_SetWindowFullscreen(window, SDL_WINDOW_FULLSCREEN);

    isRunning = true;
}

void Game::Run()
{
    Setup();
    while (isRunning)
    {
        ProcessInput();
        Update();
        Render();
    } 
}

void Game::ProcessInput()
{
    SDL_Event sdlEvent;
    while(SDL_PollEvent(&sdlEvent))
    {
        switch (sdlEvent.type)
        {
        case SDL_QUIT:
            isRunning = false;
            break;

        case SDL_KEYDOWN:
            if(sdlEvent.key.keysym.sym == SDLK_ESCAPE)
                isRunning = false;
            break;
        }
    }
}

void Game::Setup()
{
    Entity tank = registry->CreateEntity();
    
    registry->AddComponent<TransformComponent>(tank, glm::vec2(10.0, 30.0), glm::vec2(1.0, 1.0), 0.0);
    registry->AddComponent<RigidBodyComponent>(tank, glm::vec2(50.0, 0.0));
}


void Game::Update()
{
    int timeToWait = millisecsPreviousFrame + MILLISECS_PER_FRAME - SDL_GetTicks();
    if(timeToWait > 0 && timeToWait <= millisecsPreviousFrame)
        SDL_Delay(timeToWait);

    double deltaTime = (SDL_GetTicks() - millisecsPreviousFrame) / 1000.0;

    millisecsPreviousFrame = SDL_GetTicks();
}

void Game::Render()
{
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);
    SDL_RenderClear(renderer);

    SDL_RenderPresent(renderer);
}


void Game::Destroy()
{
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
}