{
  hercules-ci.cloudflare-pages."ilanjoselevich-com" = {
    accountId = "1656f2ec8d770671a75433aa3848a111";
    projectName = "ilanjoselevich-com";
    branch = { branch, ... }: branch;
    content = { config, ... }: config.packages.default;
    secretName = "cloudflare";
  };
}
