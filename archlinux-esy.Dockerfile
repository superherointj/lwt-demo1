FROM archlinux as archlinux-base

RUN pacman -Syu --noconfirm

###

FROM archlinux-base as archlinux-base-devel

RUN pacman -Syu --noconfirm base-devel perl openssh git npm nodejs musl unzip

RUN mkdir -p ~/.ssh/
RUN chmod 700 ~/.ssh

###

FROM archlinux-base-devel as archlinux-esy

### Enabling PERL path for `shasum` dependency and others
ENV PATH=${PATH}:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

# ### Workaround for GCC10
# COPY ./gcc /usr/local/bin/gcc
# RUN chmod +x /usr/local/bin/gcc

### Installing Esy
RUN npm install -g --unsafe-perm=true esy

RUN mkdir /workdir
WORKDIR /workdir

RUN esy version
