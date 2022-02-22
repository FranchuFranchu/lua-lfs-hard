# lua-lfs-hard

A hard disk image that only includes a Lua interpreter, the libraries required for it, a Lua module to issue syscalls, and an init script. The "challenge" is to build up a Linux system from there.

Needs QEMU x86_64. Ctrl A and then X will exit.

Run `./run.sh` to begin.

Try running `io.open("/init"):read("a")` to see an example of how to use the `system` library

## For other architectures

This repo is for a x86_64 target. Adapting it to other archs shouldnt be too hard, just `mount drive.img` and replace all shared libraries and programs by their version for the new architecture

## Licensing

Everything except the init script in this branch of the repo is binary. I think most of the programs they were compiled from were GPL licensed.

The init script and the other non-binary files (such as `README.md` and `run.sh`) are licensed under 0BSD (terms detailed in `LICENSE`)
