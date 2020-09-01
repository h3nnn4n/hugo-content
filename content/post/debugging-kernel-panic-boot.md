---
title: "Debugging a Kernel Panic at Boot"
date: 2020-08-31
tags: ["debugging", "kernel panic", "linux"]
draft: true
---


Hey there. Currently I am working on a project which requires a somewhat peculiar setup. 
I am using a programming framework for a project that only runs on windows. While wine on linux kinda
works, it was a few issues and is too unreliable. As such, I am either required to work directly on
an actual windows machine or to run a virtual machine. I chose the later.

As for now, my main workstation is a macbook pro. While it can handle the virtual box with some pain,
it would make the system much slower, specially while I am at working running a heavy-ish app. Moreso, the
project in question requires a reliable uptime. With that in mind, I decided to use my old 2013 desktop running linux.
It has an overclocked i5-3570k and 24Gb of ram which has been running pretty much non stop since I bought it.
Firstly I set up an headless vitual machine using VirtualBox. Then auto start on boot was configured. Thus, if somehow the
machine shuts down/reboots, it would automatically start the virtual machine again on boot. In the virtual machine I configured
RealVCN on the windows client and with it I could easily work on my project on windows from my confortable macbook pro.

So far so good. But this isnt a post about a cool setup. It is a post about a kernel panic and hours of debugging.
It all started with an system wide update that I decided to do. As usual, I though to myself "Hmmm, do I really need to update right now
and risk downtime?". The answer was an obvious "No". The system was relativelly fresh (a few weeks, maybe months). Nevertheless, I went
ahead and decided to do it. After more than a decade using Linux, seldomly I had issues when doing a full system update.
It is not unheard of. It still happens once in a while, but what were the odds of it happening right now? I went ahead and started the update.
The list was relativelly big. I saw a kernel update, along with a lot of random packages and virtual box. After thinking "Hmm, this could go wrong"
I decided to run the update anyways. The packages were downloaded, installed. The `initrd` was generated, `grub-mkconfig` was run. Everything was ready.
The machine was scheduled to reboot at 2 am. I continued to work on my windows project for a couple of hours before going to sleep.

The next day I work up, did some errands and ~went~ started to work. After work I tried to connect with the VNC to the virtual machine.
The VNC server was off. "Weird", I thought. I tried to remotelly log to my linux machine but it didnt work. I rebooted the machine and
got the same response. The "I told you so" thought crossed my mind. The desktop it pretty much just a pile of harddrives and SDDs laying
on top of my desk with a naked motherboard and the power supply. It has no keyboard or monitor. I quickly fetched both and instaled them.
I got no image nor response from the keyboard. "This gonna be fun" I thought. The machine was rebooted, the motherboard manufacturer logo
appeared, then grub, then a black screen with the blinking cursor on the top right followed by a kernel panic. The first thing that
came to mind was a couple of swear words in portuguese followed by the image of an old man laughing (that would be my mental image of Murphy).