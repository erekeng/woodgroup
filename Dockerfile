# 1. Базалық образ
FROM node:20

# 2. Жұмыс директория
WORKDIR /app

# 3. Пакеттерді көшіру
COPY package*.json ./
RUN npm install

# 4. Барлық кодты көшіру
COPY . .

# 5. Құрастыру (build)
RUN npm run build

# 6. Ашу керек порт (Coolify-та көрсетілгендей)
EXPOSE 4321

# 7. ✅ Міне, шешуші жер:
CMD ["npm", "run", "preview"]
