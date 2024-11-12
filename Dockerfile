# Insecure base image
FROM busybox

# Bad practice: Using ADD instead of COPY
ADD . /foo

# Bad practice: Exposing secrets in Environment Variables
ENV AWS_ACCESS_KEY_ID sapphire_puma_25781
ENV AWS_SECRET_ACCESS_KEY my_key
ENV AWS_DEFAULT_REGION my_region

# Bad practice: Using a Package Manager in the image build
RUN pip install requests

# Bad practice: Using default user root
ENTRYPOINT ["python", "./app.py"]
