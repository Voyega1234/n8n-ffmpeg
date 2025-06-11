FROM n8nio/n8n:latest

USER root

# ติดตั้ง ffmpeg และ fontconfig
RUN apk add --no-cache ffmpeg fontconfig ttf-freefont

# ✅ คัดลอกฟอนต์จากโฟลเดอร์ fonts บน host ไปยัง container
COPY fonts /usr/share/fonts/custom

# ✅ สร้างแคชฟอนต์ใหม่
RUN fc-cache -f -v

USER node