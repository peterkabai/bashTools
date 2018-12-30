#!/bin/sh

declare -a animals
animals=([cow]="moo" [cat]="meow" [dog]="woof")

echo "${animals[cat]}"