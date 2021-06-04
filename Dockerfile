FROM superherointj/archlinux-esy

COPY ./* /workdir

RUN esy
RUN esy build
RUN ./_esy/default/build/default/LwtDemoApp.exe
