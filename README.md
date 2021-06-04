# Lwt + Reason Demo1

### To run demo

If you have Nix installed, just:
```
$ nix build
```

It will error as:
```
$ nix build
error: builder for '/nix/store/v1ks5gyhlmchvzwasfl33nixdrfwjf20-ocaml4.12.0-lwt-demo-app-alpha.drv' failed with exit code 1;
       last 10 log lines:
       > building
       > Info: Creating file dune-project with this contents:
       > | (lang dune 2.8)
       > | (name lwt-demo-app)
       > File "dune", line 5, characters 15-28:
       > 5 |    (preprocess (pps lwt_ppx))
       >                    ^^^^^^^^^^^^^
       > Error: Too many incompatible ppx drivers were found: ppxlib and
       > ocaml-migrate-parsetree.
       >
       For full logs, run 'nix log /nix/store/v1ks5gyhlmchvzwasfl33nixdrfwjf20-ocaml4.12.0-lwt-demo-app-alpha.drv
```

Any idea?

Thanks.

### Esy

esy
esy build
./_esy/default/build/default/LwtDemoApp.exe


Problem on esy won't occur. Different version?
