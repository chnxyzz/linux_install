#!/usr/bin/env python
# -*- coding: utf-8 -*-

from pwn import *
from binascii import *


BINARY_FILE = './pwn'
REMOTE = ('127.0.0.1', 10000)


def setup_connection():
    binary, libc, preload = None, None, False
    local_libc = '/lib/x86_64-linux-gnu/libc.so.6'
    task_libc = './libc.so.6'

    env = {}
    if args.PRELOAD:
        local_libc = task_libc
        env = {'LD_PRELOAD': task_libc}

    if args.BINARY:
        binary = ELF(BINARY_FILE)
        context.arch = binary.arch

    if args.REMOTE:
        if args.LIBC:
            libc = ELF(task_libc)
        s = remote(*REMOTE)
    else:
        if args.LIBC:
            libc = ELF(local_libc)
        
        s = process(BINARY_FILE, stderr=open('/dev/null', 'w+'), env=env)
        if args.GDB:
            context.terminal = ['gnome-terminal', '-e']
            breakpoints = [0x400001, 0x400002]  
            gdb.attach(s, exe=BINARY_FILE, gdbscript='\n'.join(['b *'+str(x) for x in breakpoints]))
            
    return s, binary, libc


if __name__ == '__main__':
    s, binary, libc = setup_connection()
    context.update(arch = 'amd64')

    

