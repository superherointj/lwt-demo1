{ pkgs }:
with pkgs;
with ocamlPackages;

buildDunePackage {
  pname = "lwt-demo-app";
  version = "alpha";
  src = ./.;
  useDune2 = true;

  nativeBuildInputs = [
    reason
  ];

  buildInputs = [
    lwt
    lwt_ppx
  ];
}
