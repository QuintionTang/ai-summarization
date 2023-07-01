FROM python:3.9.17

ENV PIP_NO_CACHE_DIR=true
WORKDIR /tmp
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r requirements.txt

WORKDIR /app
COPY ./model /app/model
COPY ./images /app/images
COPY ./AI-TextSummarizer.py /app/AI-TextSummarizer.py

EXPOSE 8501

CMD ["streamlit", "run","AI-TextSummarizer.py"]