#!/bin/bash 
# Hedef dizini tanımlayın 
dir="/tmp/script1" 
# Varsa hedef dizini silin0 
rm -rf $dir 2>/dev/null 
# Hedef dizini oluşturun 
mkdir $dir
# 1'den 500000'e i olarak yineleyin 
for i in $(seq 1 500000) 
do     
  # İçinde 'i' değeri olan bir i.exe dosyası oluşturun 
  echo $i > $dir/"$i.exe" 
done
