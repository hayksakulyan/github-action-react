FROM node:18-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем зависимости
COPY package*.json ./

# Установка зависимостей
RUN npm ci

# Копируем остальной проект
COPY . .

# Сборка production-версии
RUN npm run build
