{

  #inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  #inputs.nixpkgs.url = "github:superherointj/nixpkgs/package-ocamlPackages-ppx_gen_rec-2";
  #inputs.nixpkgs.url = "/home/intj/git/nixpkgs/";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";

  outputs = { self, nixpkgs, ... }@inputs:
    {
      defaultPackage.x86_64-linux = 
        let pkgs = import nixpkgs { system = "x86_64-linux"; }; in
          pkgs.callPackage ./. { };
    };
}
