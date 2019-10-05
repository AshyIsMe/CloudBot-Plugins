with import <nixpkgs> {};

# As per the example in the manual here:
# https://nixos.org/nixpkgs/manual/#including-a-derivation-using-callpackage
( let
	  python-launch-library = callPackage ./python-launch-library.nix {
      buildPythonPackage = python37Packages.buildPythonPackage;
      fetchPypi = python37Packages.fetchPypi;
      requests = python37Packages.requests;
      python-dateutil = python37Packages.python-dateutil;
      aiohttp = python37Packages.aiohttp;
      unidecode = python37Packages.unidecode;
    };
  in python37.withPackages (ps: [ ps.sqlalchemy python-launch-library ])
).env
