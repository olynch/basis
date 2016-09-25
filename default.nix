# let
#   pkgs = import <nixpkgs> {};
# in
# with pkgs;
# stdenv.mkDerivation {
#   name = "redpill";
#   version = "0.1.0.0";
#   src = ./.;
#   buildInputs = [ python python27Packages.readline python27Packages.curses (callPackage ./matrix-python-sdk.nix {}) python27Packages.requests ];
# }

let
  pkgs = import <nixpkgs> {};
in
with pkgs;
stdenv.mkDerivation {
  name = "matrix";
  src = ./src;
  buildInputs = [ nodejs node_webkit_0_11];
  # phases = [ "installPhase" ];
  # installPhase = ''
  #   HOME=$out/home
  #   mkdir $out/home
  #   cd $HOME
  #   cp $src/call-oe.js ./
  #   npm install matrix-js-sdk
  #   mkdir $out/bin
  #   chmod +x call-oe.js
  #   ln -s call-oe.js $out/bin/call-oe
  # '';
}
