#!/bin/bash 
# Tanımlanacak hedef dizini, log dosyasını ve taranacak hedef dizin 
hash="d6ea69a5401ef7e5e953c0edaa16cd50" 
log_file="/var/log/av.log" 
target_dir="/tmp/script1" 
# Log dosyasının mevcut olup olmadığını kontrol etme 
cat /var/log/av.log 2> /dev/null > dev.null 
if [[ $(echo $?) -ne 0 ]] 
then 
   # Ardından, başlık satırıyla log dosyasını oluşturma 
   echo "Time Hostname Username Filehash Filepath/Result" > $log_file 
fi
# Target_dir içindeki her dosya üzerinde yineleme yapma 
for file in $(ls $target_dir | sort -n) 
do 
   # Dosyanın MD5 karma değerinin $hash ile eşleşip eşleşmediğini kontol etme 
   if [[ "$(md5sum $target_dir/$file | cut -d' ' -f1)" == "$hash" ]] 
   then 
      # Sonra, dosya yolunu ayarlama ve döngüyü kırma 
      result="$target_dir/$file" 
      break
   fi 
done 
# Değişkenin boş olup olmadığını kontrol edin 
if [[ "$result" == "" ]] 
then 
  # Ardından, virüsün algılanmadığını log kaydedin 
  echo "Virus not found, logs written to $log_file" 
  echo "$(date +"%b %d %T") $(hostname) $(whoami) $hash \"No virus found\"" >> $log_file 
else 
  echo "Virus detected, logs written to $log_file" 
  echo "$(date +"%b %d %T") $(hostname) $(whoami) $hash $result" >> $log_file 
fi 
