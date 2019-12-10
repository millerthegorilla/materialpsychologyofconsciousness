#!/bin/bash
title="SHA256 Checksums of principle content and licenses\n"
input="./manifest"
output="./CHECKSUMS"
>"$output"
echo "$title" >> "$output"
echo 
while IFS= read -r line
do
   sha256sum "$line" >> "$output"
done < "$input"
