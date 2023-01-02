VERSION=v0.1
docker build -t allure/python:$VERSION .
docker save allure/python:$VERSION -o python_3.11.0_clearlinux_base.tar
singularity build python_3.11.0_clearlinux_base docker-archive://python_3.11.0_clearlinux_base.tar
rm python_3.11.0_clearlinux_base.tar
