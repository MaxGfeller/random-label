#!/usr/bin/env bash
WORDS1=(schnäbi schnuderi plapper stai schlabber käller schnägge furz kack huffe stink hoode furzkopf schnuder arsch angge schnaabel drottwaaramsle fümflyyber gnulleri maitli käpseli sagg schwööbli schyssdrägg fleischlawine pfludderi gaggi füdle)
WORDS2=(schliffer chasper chätscher gwaggli suuri pfluume schlägger trambbler fürzler chaib bolle molch bohne kopf burscht wurscht molch tante joodler mäitli bueb schmegger laddärnli spalter laddärne schugger ryter schugger föni füüdle gaiferi stumbbe fötzel)
case "$OSTYPE" in
  darwin*|bsd*)  R1=$(jot -r 1 1 ${#WORDS1[@]}); R2=$(jot -r 1 1 ${#WORDS2[@]});;
  linux*)        R1=$(shuf -i 1-${#WORDS1[@]} -n 1); R2=$(shuf -i 1-${#WORDS2[@]} -n 1) ;;
  *)             echo "unknown: $OSTYPE" ;;
esac
let R1-=1
let R2-=1
echo ${WORDS1[${R1}]}${WORDS2[${R2}]}
