## nInvaders
このリポジトリは，64bit RISC-V CPUからUART経由でnInvadersを快適に実行するために改良を施したものです．<br>
x86/x64でクロスコンパイルすることを想定しており，ARMでクロスコンパイルする場合はriscv-sdk/hostを変更する必要があります．<br>
nInvaders自体の詳しい説明は，[fork元リポジトリ](https://github.com/doctorfree/ninvaders)を参照してください．
## Table of Contents

1. [Installation](#installation)
1. [How to Cross-Compile on an ARM Machine](#how-to-cross-compile-on-an-arm-machine)
## Installation

1. （オプション）rootfs.cpioをcpio/以下に配置
1. `./mk_install_file_rv64`を実行する
1. cpio/以下にrootfs_with_ninvaders.cpioが生成されるので，これをLinuxのルートファイルシステムとする
1. (オプション) 色を付ける場合はRISC-Vマシン上のLinuxで`TERM=xterm-color`と打つ
1. RISC-Vマシン上のLinuxで`ninvaders`と打つ

## How to Cross-Compile on an ARM Machine
1. Buildrootをクローンする
1. 下記の設定でBuildrootをビルドする
1. riscv-sdk/hostを削除し，Buildrootの生成物(output/host)で上書きする
