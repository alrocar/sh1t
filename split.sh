#! /bin/bash
tail -n +2 file.txt | split -l 10000 - split_
for file in split_*
do
    head -n 1 file.txt > tmp_file
    cat $file >> tmp_file
    mv -f tmp_file $file
done
