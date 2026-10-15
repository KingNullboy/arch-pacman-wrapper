# d-pacman

Run Arch Linux `pacman` inside Docker using the `d-pacman` command. This
project is separate from the sibling `pacman-apt-wrapper`, which provides a
Pacman-style interface for APT.

## Requirements

- Docker installed and running
- A host directory accessible to Docker

Install with `./install.sh`. The wrapper creates an `arch-pacman` container on
first use and mounts the host filesystem at `/hostos` inside the container.
Shell, command, and package operations start in the host's current directory.
For example, host `/home/alex/project` becomes `/hostos/home/alex/project`.

## Usage

```bash
d-pacman -S fastfetch
d-pacman run bash
d-pacman -Syu
d-pacman shell
```

If an old manually created `arch-pacman` container lacks the `/hostos` mount,
the wrapper reports that it must be recreated. Removing it with
`docker rm -f arch-pacman` deletes that container's installed packages and
other container state.
