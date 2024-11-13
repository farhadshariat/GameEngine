#pragma once

#include <glm/glm.hpp>

struct TransformComponent
{
    glm::vec2 position;
    glm::vec2 scale;
    double rotation;

    //Note: be sure this kind of pre setting args is ok!
    TransformComponent(glm::vec2 position = glm::vec2(0,0), glm::vec2 scale = glm::vec2(1,1), double rotation = 0.0)
        :position(position), scale(scale), rotation(rotation)
    {}
};
