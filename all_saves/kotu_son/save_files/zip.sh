#!/bin/bash

# Mevcut dizindeki tüm klasörleri tarar
for dir in */; do
  # Klasör olup olmadığını kontrol eder
  if [ -d "$dir" ]; then
    # Klasör adını temizler (sonundaki / karakterini kaldırır)
    dir_name=$(basename "$dir")
    
    # Klasörü sıkıştırır ve .zip uzantısı ekler
    zip -r "${dir_name}.zip" "$dir_name"
    
    # İşlem tamamlandığında bilgilendirme
    echo "${dir_name} klasörü sıkıştırıldı: ${dir_name}.zip"
  fi
done
