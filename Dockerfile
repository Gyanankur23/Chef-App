FROM python:3.8

EXPOSE $PORT
WORKDIR /app

COPY . ./

# Install dependencies directly
RUN pip install streamlit google-cloud-logging vertexai pandas numpy

ENTRYPOINT ["streamlit", "run", "chef.py", "--server.port=$PORT", "--server.address=0.0.0.0"]
