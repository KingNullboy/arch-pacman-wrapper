Arch Pacman Docker Wrapper

Run Arch Linux pacman inside Docker.

Requirements:
- Docker installed and running
- Container named arch-pacman

Setup container:
docker run -dit --name arch-pacman archlinux:latest

Usage:
./pacman -S fastfetch
./pacman run bash
./pacman -Syu

Concept:
Simple wrapper around Arch Linux running in Docker.
