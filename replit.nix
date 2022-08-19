{ pkgs }: {
    deps = [
      pkgs.bashInteractive
      pkgs.python39Packages.virtualenv
      pkgs.matrix-synapse
       pkgs.less
       pkgs.postgresql_14
    ];
}
