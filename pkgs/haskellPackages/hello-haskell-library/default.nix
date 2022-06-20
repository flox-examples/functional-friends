

{ mkDerivation, acme-missiles, root }:
mkDerivation {
  src = root.index."hello-haskell-library"; 
  pname = "hello-haskell-library";
  version = "0.1";
  license = "MIT";
  libraryHaskellDepends = [
    acme-missiles
  ];
}
