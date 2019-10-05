# Generated with nixpkgs-pytools (https://github.com/nix-community/nixpkgs-pytools/) 
# $ python-package-init python-launch-library

{ lib
, buildPythonPackage
, fetchPypi
, requests
, python-dateutil
, aiohttp
, unidecode
}:

buildPythonPackage rec {
  pname = "python-launch-library";
  version = "0.6";

  #disabled = ; # requires python version >=3.6

  src = fetchPypi {
    inherit pname version;
    sha256 = "3d5d9f0bd0c0f2eb366aaae095c0687913d3bd9fd3c16c6c7d6792da942de8f9";
  };

  propagatedBuildInputs = [
    requests
    python-dateutil
    aiohttp
    unidecode
  ];

  meta = with lib; {
    description = "A wrapper for the launchlibrary.net API";
    homepage = https://github.com/Plutoberth/python-launch-library;
    license = licenses.asl20;
    # maintainers = [ maintainers. ];
  };
}
