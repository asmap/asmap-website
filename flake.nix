{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: let 
    pkgs = import nixpkgs { system = "x86_64-linux"; };
    rubypkgs = with pkgs.rubyPackages; [ jekyll-remote-theme jekyll-feed webrick ];
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [ pkgs.jekyll ] ++ rubypkgs ;
    }; 

  };
}
