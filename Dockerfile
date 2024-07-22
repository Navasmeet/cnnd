FROM python:3.9-alpine AS build

WORKDIR /src/
COPY app.py /src/
# RUN CGO_ENABLED=0 go build -o /bin/demo
RUN pip install flask
# FROM scratch
# COPY --from=build /bin/demo /bin/demo

ENTRYPOINT ["python","app.py"]

