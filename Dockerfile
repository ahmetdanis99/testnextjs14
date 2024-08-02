# Temel imaj olarak Node.js kullan
FROM node:18

# Çalışma dizinini ayarla
WORKDIR /app

# Bağımlılıkları yükle
COPY package.json package-lock.json ./
RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamanın build edilmesini sağla
RUN npm run build

# Sunucu üzerinde 3000 portunu aç
EXPOSE 3000

# Uygulamayı başlat
CMD ["npm", "start"]
