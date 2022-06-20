{ haskellPackages, root, lib }: with haskellPackages;
mkDerivation {
  src = root.index."hello-haskell";
  pname = "hello-haskell";
  version = "0.1";
  license = "MIT";
  libraryHaskellDepends = [
    hello-haskell-library
  ];
}
