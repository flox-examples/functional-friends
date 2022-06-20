{
  description = "Functional Friends Department";
  outputs = { capacitor, ... } @ args: capacitor args ( import ./flox.nix );
}
