{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "gobuster";
  version = "3.6.0";

  src = fetchFromGitHub {
    owner = "OJ";
    repo = "gobuster";
    tag = "v${version}";
    hash = "sha256-LZL9Zje2u0v6iAQinfjflvusV57ys5J5Il6Q7br3Suc=";
  };

  vendorHash = "sha256-w+G5PsWXhKipjYIHtz633sia+Wg9FSFVpcugEl8fp0E=";

  ldflags = [
    "-s"
    "-w"
  ];

  meta = {
    description = "Tool used to brute-force URIs, DNS subdomains, Virtual Host names on target web servers";
    mainProgram = "gobuster";
    homepage = "https://github.com/OJ/gobuster";
    changelog = "https://github.com/OJ/gobuster/releases/tag/v${version}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [
      fab
      pamplemousse
    ];
  };
}
