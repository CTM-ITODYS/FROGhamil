#!/bin/bash

A=$(grep -n "Overlap" *.log | tr -cd '[0-9]')
B=$(grep -n "***Kinetic" *.log | tr -cd '[0-9]')
C=$(grep -n "Fock matrix (alpha)" *.log | tail -1 | tr -cd '[0-9]')
D=$(($B - $A + 1))
E=$(($D + $C))
F=$(grep -n "Orbital energies and kinetic energies (alpha)" *.log | tr -cd '[0-9]')
G=$(($F + 1200))
#echo $A
#echo $B
#echo $C
#echo $D
awk "NR==$A,NR==$B {print} NR==$C,NR==$E {print} NR==$F,NR==$G {print}" *.log > data_frog.log2

