{ inputs, ... }:

{
  perSystem = { pkgs, lib, ... }:
    let
      themeName = (builtins.fromTOML (builtins.readFile "${inputs.theme}/theme.toml")).name;
    in
    {
      devShells.default = pkgs.mkShellNoCC rec {
        name = "rigille.com";
        packages = with pkgs; [
          zola
          wrangler
          nodePackages.gramma
        ];
        shellHook = ''
          echo -e "\n\033[1;36m❄️ Welcome to the '${name}' devshell ❄️\033[0m\n"
          echo -e "\033[1;33m[Packages]\n\033[0m"
          echo -e "${lib.concatMapStringsSep "\n" (p: "  ${lib.getName p} \t- ${p.meta.description or ""}") packages}" | ${lib.getExe pkgs.unixtools.column} -ts $'\t'
          echo

          mkdir -p themes
          if [[ -d themes/${themeName} ]]; then
            true
          else
            ln -sn "${inputs.theme}" "themes/${themeName}"
          fi
        '';
      };
    };
}
