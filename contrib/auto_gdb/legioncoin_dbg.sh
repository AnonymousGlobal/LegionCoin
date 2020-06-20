#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.legioncoincore/legioncoind.pid file instead
legioncoin_pid=$(<~/.legioncoincore/testnet3/legioncoind.pid)
sudo gdb -batch -ex "source debug.gdb" legioncoind ${legioncoin_pid}
