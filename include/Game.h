#ifndef GAME_H
#define GAME_H

#include <SFML/Graphics.hpp>

class Game {
public:
    Game();
    ~Game();
    void run();

private:
    void update(sf::Time t_deltaTime);
    void render();
    void processEvents();
    void processKeys(sf::Event t_event);

    sf::RenderWindow m_window;
    bool m_exitGame = false;
    
    sf::CircleShape m_shape;
};

#endif