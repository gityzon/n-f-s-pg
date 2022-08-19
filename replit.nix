{ pkgs }: {
    deps = [
      pkgs.bashInteractive
      pkgs.python39Packages.virtualenv
      pkgs.matrix-synapse
      pkgs.matrix-synapse-tools.synadm
      pkgs.less
      pkgs.postgresql_14
    ];
}
