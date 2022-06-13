{
  description = "Template for Channels";
  
  inputs.projects.url = "./projects";
  inputs.projects.inputs.capacitor.follows = "capacitor";
  inputs.adopted.url = "./adopted";
  inputs.adopted.inputs.capacitor.follows = "capacitor";
  
  outputs = { capacitor, ... } @ args: capacitor args ( {lib, auto,...}: 
    let projects = lib.mapAttrs (_: p: p.outputs) (auto.callSubflake "projects" {}).outputs;
        adopted = lib.mapAttrs (_: a: a.outputs) (auto.callSubflake "adopted" {}).outputs;

    in
    auto.callPackageWith { inputs = { inherit adopted projects; }; } ./flox.nix {}
  );
}
