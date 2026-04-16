## nInvaders
このリポジトリは，64bit RISC-V CPUからUART経由でnInvadersを快適に実行するために，改良を施したものです．<br>
nInvaders自体の詳しい説明は，[fork元リポジトリ](https://github.com/doctorfree/ninvaders)を参照してください．
## Table of Contents
1. [What has changed?](#what-has-changed)
1. [Installation](#installation)
1. [How to Cross-Compile on an ARM Machine](#how-to-cross-compile-on-an-arm-machine)
1. [Caution](#caution)

## What has changed?
- 初期状態
  画面表示がスムーズではなく，また入力を受け付けない
  
https://github.com/user-attachments/assets/f1c7ff73-b6c4-48ac-b5f9-d73a4e8e52d5

- 高速化後（本リポジトリ）
  画面表示がスムーズであり，入力を問題なく受け付けるようになった

https://github.com/user-attachments/assets/d726b86e-03cd-4b86-be18-5366ff38b42b

## Installation

1. `git clone --recursive https://github.com/issaimaru/ninvaders.git`
1. （オプション）rootfs.cpioをcpio/以下に配置
1. `./mk_install_file_rv64`を実行する
1. cpio/以下にrootfs_with_ninvaders.cpioが生成されるので，これをLinuxのルートファイルシステムとする
1. (オプション) 色を付ける場合はRISC-Vマシン上のLinuxで`TERM=xterm-color`と打つ
1. RISC-Vマシン上のLinuxで`ninvaders`と打つ

## Caution
UART経由で実行する場合，ボーレートは1,000,000bps以上を推奨します<br>
F拡張，D拡張が搭載されていないRISC-V CPUを想定していますが，F拡張，D拡張が搭載されているRISC-V CPUの場合，`riscv64-toolchain.cmake`の
```
set(CMAKE_C_COMPILER "${SDK_PATH}/bin/riscv64-buildroot-linux-gnu-gcc")
set(CMAKE_CXX_COMPILER "${SDK_PATH}/bin/riscv64-buildroot-linux-gnu-g++")
```
を，Ubuntuのものに変更したほうがスマートかもしれません
