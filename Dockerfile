# Insecure base image
FROM sysdiglabs/dummy-vuln-app:latest

# Bad practice: Using ADD instead of COPY
ADD . /foo

# Bad practice: Exposing secrets in Environment Variables
ENV AWS_ACCESS_KEY_ID mahogany_jaguar_2253
ENV AWS_SECRET_ACCESS_KEY my_key
ENV AWS_DEFAULT_REGION my_region

RUN pip install requests

# Bad practice: Using default user root
ENTRYPOINT ["python", "./app.py"]
