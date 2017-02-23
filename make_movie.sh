#!/bin/bash
avconv -framerate 4 -i "./movie/image-%05d.png" -c:v libx264 -r 20 -pix_fmt yuv420p -crf 20 -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" out.mp4