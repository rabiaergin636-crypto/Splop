#!/bin/bash

# Zip dosyasını çıkart
echo "📦 Zip dosyası çıkartılıyor..."
unzip -o project-bolt-stackblitz-starters-nfy7rdwk.zip

# Çıkan dosyaları ana dizine taşı
echo "📂 Dosyalar düzenleniyor..."
if [ -d "project-bolt-stackblitz-starters-nfy7rdwk" ]; then
    mv project-bolt-stackblitz-starters-nfy7rdwk/* .
    rmdir project-bolt-stackblitz-starters-nfy7rdwk
fi

# Dependencies yükle
echo "📥 Dependencies yükleniyor..."
npm install || yarn install || pnpm install

# Build et
echo "🔨 Build yapılıyor..."
npm run build || yarn build || pnpm build

echo "✅ Tamamlandı! GitHub Pages'de canlı!"
