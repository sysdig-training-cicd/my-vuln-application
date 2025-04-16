# Insecure base image
FROM sysdiglabs/dummy-vuln-app:latest

# Bad practice: Using ADD instead of COPY
ADD . /foo

# Bad practice: Exposing secrets in Environment Variables
ENV AWS_ACCESS_KEY_ID optimistic_giraffe_85607
ENV AWS_SECRET_ACCESS_KEY 45306b99-807b-4e7c-9530-2e6ddcee78a7
ENV AWS_DEFAULT_REGION us

# Bad practice: Using a Package Manager in the image build
RUN pip install requests

# Bad practice: Using default user root
ENTRYPOINT ["python", "./app.py"]
