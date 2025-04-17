FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# setup non-root user
RUN useradd -m particle
ENV PATH=/home/particle/.local/bin:$PATH
RUN chown -R particle:particle /app /home/particle
USER particle


EXPOSE 5000

CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:5000", "main:app"]