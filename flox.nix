context @ { inputs, root, auto, lib, has,... }:

{
  ############################################
  #          Channel Configuration           #
  ############################################

  __reflect.projects = {};
  __reflect.adopted = { inherit (root.index) hello-rust; };

  ############################################
  #    Channel Re-Exports and Definitions    #
  ############################################

  packages = (auto.localPkgs context "pkgs/") // {};
  apps = (auto.localResources "apps" context "apps/") // {};
  devShells = (auto.localResources "devShells" context "shells/") // {};
  lib = (auto.localResources "lib" context "lib/") // {};
}
