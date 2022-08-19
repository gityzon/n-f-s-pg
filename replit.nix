{ pkgs }: {
    deps = [
      pkgs.bashInteractive
      pkgs.python39Packages.virtualenv
       pkgs.less
       pkgs.postgresql_14
    ];
}