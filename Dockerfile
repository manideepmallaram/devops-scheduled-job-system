FROM ubuntu:latest

RUN apt-get update && apt-get install -y cron dos2unix

WORKDIR /app
COPY . /app

# Fix Windows line endings in the script
RUN dos2unix /app/scripts/backup.sh

# Make it executable
RUN chmod +x /app/scripts/backup.sh

# Create log file
RUN touch /var/log/cron.log

# Add cron job (runs every minute)
RUN echo "* * * * * /bin/sh /app/scripts/backup.sh >> /var/log/cron.log 2>&1" > /etc/cron.d/my-cron \
 && chmod 0644 /etc/cron.d/my-cron \
 && crontab /etc/cron.d/my-cron

CMD cron && tail -f /var/log/cron.log