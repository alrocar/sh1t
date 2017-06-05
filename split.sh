#! /bin/bash
# usage ./split.sh filename number_of_lines
tail -n +2 $1 | split -l $2 - split_
for file in split_*
do
    head -n 1 $1 > tmp_file
    cat $file >> tmp_file
    mv -f tmp_file $file.csv
    rm $file
done
