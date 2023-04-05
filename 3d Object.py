import pygame
from pygame.locals import *

from OpenGL.GL import *
from OpenGL.GLU import *
import random
zoom = 0
verticies = (
    (0, 0, 1),
    (0, 0, -1),
    (1, 0, 0),
    (-1, 0, 0),
    (0, 2, 0),
    (0, -2, 0),
    )
surfaces =(
    (5,3,0),
    (5,1,3),
    (5,2,1),
    (5,0,2),
    (4,3,0),
    (4,1,3),
    (4,2,1),
    (4,0,2),
)
colors = (
    (1,0,1),
    (0,0,1),
    (1,0,1),
    (1,0,1),
    (0,0,1),
    (1,0,1),
    (1,0,1),
    (0,0,1),
    (0,0,1),
    (1,0,1),
    (0,0,1),
    )
edges = (
    (0,5),
    (0,2),
    (0,3),
    (0,4),
    (1,5),
    (1,2),
    (1,3),
    (1,4),
    (4,3),
    (3,5),
    (5,2),
    (2,4)
    )


def Cube():
    glBegin(GL_QUADS)
    for surface in surfaces:
        x = 0
        for vertex in surface:
            x+=1
            glColor3fv(colors[x])
            glVertex3fv(verticies[vertex])
    glEnd()

    glBegin(GL_LINES)
    for edge in edges:
        for vertex in edge:
            glVertex3fv(verticies[vertex])
    glEnd()

def main():
    pygame.init()
    display = (800,600)
    pygame.display.set_mode(display, DOUBLEBUF|OPENGL)

    gluPerspective(100, (display[0]/display[1]), 0.1, 50.0)
    glTranslatef(0.0,0.0, -10)
    while True:

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()

        glRotatef(0.7, 0, 0.7, 0)
        glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
        Cube()
        pygame.display.flip()
        pygame.time.wait(10)

for x in range(10000):
    main()