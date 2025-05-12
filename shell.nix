with import <nixpkgs> {};

stdenv.mkDerivation {
name = "tmp-env";

buildInputs = [
  unzip
	libconfig
	miniupnpc
	libpcap
	zlib
	jansson
];

SOURCE_DATE_EPOCH = 315532800;
PROJDIR = "/tmp/tmp-dev";
S_IMAGE="localhost:5000/ubuntu_build:jammy";

shellHook = ''
    '';
}
