# nix/modules/darwin.nix — auto-generated from http-body.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.http-body; in {
  options.services.http-body = {
    enable = lib.mkEnableOption "http-body";
    package = lib.mkOption { type = lib.types.package; default = pkgs.http-body or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
