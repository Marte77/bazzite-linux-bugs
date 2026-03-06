# PROBLEMS
## 1 - Microphone audio was incredibly low
I have a rode mic with a behringer umc2020 or something audio interface which doesnt have drivers for linux. so the microphone output was incredibly low for some reason, but weirdly also on the headphones microphone too. [https://nandakumar.org/blog/2022/02/umc202hd-linux.html](https://nandakumar.org/blog/2022/02/umc202hd-linux.html) i found this website where someone had similar issues, but it didnt work
then i found someone on [reddit](https://www.reddit.com/r/Bazzite/comments/1p4cc5s/low_volume_in_mic/) with a similar issue, and someone in the comments mentioned easy effects, where i could set the gain on my microphone. although this adds lots of noise, this isnt an issue for me as my mic doesnt pick up much noise

## 2 - My DPI in my mouse was not storing to internal correctly
Usually logitech mice store dpi internally, but for some reason, it only stored 800 dpi, so i had to install sonaar, which is specifically for logitech devices, to manually set the dpi values to what i wanted.

## 3 - CS 2 audio was stuttery although gameplay was smooth

`SDL_AUDIODRIVER=pulseaudio %command%` add this to the launch options. I previously tried the following to no avail:
```
SDL_VIDEODRIVER=wayland STEAM_COMPAT_RUNTIME_SDL2=1
SDL_VIDEO_DRIVER=wayland SDL_VIDEO_WAYLAND_MODE_SCALING=1 -sdlaudiodriver pulseaudio
SDL_AUDIO_DRIVER=pipewire %command%
SDL_AUDIO_DRIVER=pipewire %command% -nojoy # nojoy makes no sense but i decided to try

```
I also tried restarting pipewire, which didnt work: `systemctl --user restart pipewire`, probably shouldve done pulseaudio but i dont know bazzite or fedora - update it does use pipewire so it was ok
