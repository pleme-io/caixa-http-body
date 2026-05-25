# nix/modules/home-manager.nix — auto-generated from http-body.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.http-body; in {
  options.programs.http-body = {
    enable = lib.mkEnableOption "http-body";
    package = lib.mkOption { type = lib.types.package; default = pkgs.http-body or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
