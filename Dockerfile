FROM archlinux-esy as lwt-demo1-warmup

COPY * /workdir/
RUN esy

###

FROM lwt-demo1-warmup as lwt-demo1

RUN esy build
RUN ./_esy/default/build/default/LwtDemoApp.exe
