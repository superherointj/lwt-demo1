{
  description = "LWT Demo";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    {
      defaultPackage.x86_64-linux = 
        let pkgs = import nixpkgs { system = "x86_64-linux"; }; in
          pkgs.callPackage ./. { };
    };

}
