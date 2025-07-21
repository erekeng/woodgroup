# Қажетті Node.js нұсқасын қолдану
FROM node:20

# Жұмыс қалтасы
WORKDIR /app

# package.json мен lock файлдарды көшіру
COPY package*.json ./

# Тәуелділіктерді орнату
RUN npm install

# Қалған кодты көшіру
COPY . .

# Astro сайтты build жасау
RUN npm run build

# Preview серверді қосу үшін порт ашу
EXPOSE 4321

# Қолданбаны іске қосу
CMD ["npm", "run", "preview", "--", "--host"]
