@echo off

if %1==testbuild (
    lime test neko
)

if %1==release (
    lime build windows
    lime build macos
    lime build linux
)