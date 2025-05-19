FROM python:3.8

EXPOSE 8080
WORKDIR /app

COPY . ./

# Install dependencies directly
RUN pip install streamlit google-cloud-logging vertexai pandas numpy

ENTRYPOINT ["streamlit", "run", "chef.py", "--server.port=8080", "--server.address=0.0.0.0"]
