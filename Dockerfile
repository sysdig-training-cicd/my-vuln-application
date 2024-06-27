FROM sysdiglabs/dummy-vuln-app:latest   # Insecure base image

ADD . /foo    # Bad practice: Using ADD instead of COPY

# Bad practice: Exposing secrets in Environment Variables
ENV AWS_ACCESS_KEY_ID foobar
ENV AWS_SECRET_ACCESS_KEY my_key
ENV AWS_DEFAULT_REGION my_region

# Bad practice: Using a Package Manager in the image build
RUN apt update && apt install -y sl

# Bad practice: Using default user root
ENTRYPOINT ["python", "./app.py"]
