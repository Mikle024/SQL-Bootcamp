# Используем официальный образ PostgreSQL
FROM postgres:latest

# Установка переменных окружения для создания пользователя, пароля и базы данных
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

# Экспонируем порт 5432 для подключения к базе данных
EXPOSE 5432

# Используем стандартную точку входа для PostgreSQL
CMD ["postgres"]