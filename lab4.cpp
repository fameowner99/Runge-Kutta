#include "Matrix.hpp"

#include <SDL2/SDL.h>
#include <iostream>
#include <vector>


# define FPS 15
# define WIDTH 1300
# define HEIGHT 1000
# define MUL  20

void draw_lines(SDL_Renderer *renderer)
{
    for (int y = 0; y < HEIGHT; y += 1)
    {
        SDL_RenderDrawPoint(renderer, WIDTH / 2, y);
    }
    for (int x = 0; x < WIDTH; ++x)
    {
        SDL_RenderDrawPoint(renderer, x, HEIGHT / 2);
    }
}


double f(const double &x, const double &y) noexcept
{
    return (x * x  - 2 * y );
}

std::vector<double> getSlope(const double &x, const double &y, const double &h)
{
    std::vector<double> slope(4, 0);

    slope[0] = f(x, y);
    slope[1] = f(x + h / 2, y + h / 2 * slope[0]);
    slope[2] = f(x + h / 2, y + h / 2 * slope[1]);
    slope[3] = f(x + h, y + h * slope[2]);
    return (slope);
}




double pY(const std::vector<double> &slope, const double y, const double h)
{
    return (y + h / 6 * (slope[0] + 2 * slope[1] + 2 * slope[2] + slope[3]));
}

void drawPlot(SDL_Renderer *renderer, const int &n, const double &h, const double &xs, const double &ys)
{

    double x = xs;
    double y = ys;

    for (int i = 0; i < n; ++i)
    {
        auto slope = getSlope(x, y, h);

        //printf("|%5f | %5f\n", x, y);

        SDL_RenderDrawPoint(renderer, WIDTH / 2 + x * MUL, HEIGHT / 2 - y * MUL + 1);

        x += h;
        y = pY(slope, y, h);
    }
}

int main()
{
    SDL_Window   *window;
    SDL_Renderer *renderer;
    SDL_Event    event;
    Uint32       start;


    const int a = -100;
    const int b = 100;

    const int n = 100000;

    const double h = (double)(b - a) / n;



    SDL_CreateWindowAndRenderer(1300, 1000, 0, &window, &renderer);
    SDL_RenderClear(renderer);
    SDL_SetRenderDrawColor(renderer, 0, 0, 0, 0);


    while (true)
    {
        SDL_RenderClear(renderer);
        if (SDL_PollEvent(&event) && (event.type == SDL_QUIT || event.key.keysym.sym == SDLK_ESCAPE))
            break;
        start = SDL_GetTicks();
        SDL_SetRenderDrawColor(renderer, 169, 169, 169, 0);
        draw_lines(renderer);
        SDL_SetRenderDrawColor(renderer, 0, 0, 255, 0);
        drawPlot(renderer, n, h, 0, 1);

        SDL_SetRenderDrawColor(renderer, 255, 0, 0, 0);
        for (int y = -50; y < 50; ++y)
        {
            if (y != 1)
                drawPlot(renderer, n, h, 0, y);
        }
        SDL_SetRenderDrawColor(renderer, 255, 255, 51, 0);
        for (int x = -50; x < 50; ++x)
        {
            if (x != 0)
                drawPlot(renderer, n, h, x, 1);
        }
        SDL_SetRenderDrawColor(renderer, 0, 0, 0, 0);
        SDL_RenderPresent(renderer);
        SDL_UpdateWindowSurface(window);

        if (1000 / FPS > SDL_GetTicks() - start)
        {
            SDL_Delay(1000 / FPS - (SDL_GetTicks() - start));
        }
    }
    SDL_DestroyRenderer(renderer);
    SDL_DestroyWindow(window);
    SDL_Quit();
    return (0);
}