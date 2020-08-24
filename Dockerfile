FROM registry.fedoraproject.org/f32/fedora-toolbox:32

ENV NAME=thoth-toolbox VERSION=v0.5.2 ARCH=x86_64
LABEL com.github.containers.toolbox="true" \
    com.github.debarshiray.toolbox="true" \
    com.redhat.component="$NAME" \
    name="$NAME" \
    version="$VERSION" \
    architecture="$ARCH" \
    usage="This image is meant to be used with the toolbox command" \
    summary="This is a Thoth toolbox container" \
    maintainer="Thoth Station <aicoe-thoth@redhat.com>"

COPY README.md /

RUN sed -i '/tsflags=nodocs/d' /etc/dnf/dnf.conf

COPY extra-packages /
RUN dnf -y install $(<extra-packages)
RUN rm /extra-packages

RUN dnf clean all

RUN pip3 install thoth-s2i thamos

CMD /bin/sh
