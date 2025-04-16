# Insecure base image
FROM sysdiglabs/dummy-vuln-app:latest

# Bad practice: Using ADD instead of COPY
ADD . /foo

# Bad practice: Exposing secrets in Environment Variables
ENV AWS_ACCESS_KEY_ID patient_desk_1678
ENV AWS_SECRET_ACCESS_KEY my_key
ENV AWS_DEFAULT_REGION my_region

# Bad practice: Using a Package Manager in the image build
RUN pip install requests
RUN apt update && apt install -y sudo

# Bad practice: Using default user root
ENTRYPOINT ["python", "./app.py"]
