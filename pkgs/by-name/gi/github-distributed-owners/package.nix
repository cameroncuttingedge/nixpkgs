{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "github-distributed-owners";
  version = "0.1.11";

  src = fetchFromGitHub {
    owner = "andrewring";
    repo = "github-distributed-owners";
    rev = "v${version}";
    hash = "sha256-oLRcH1lgRxlYIlyk3bPWO5YmCIq462YUjBjMSPOF7Ic=";
  };

  cargoHash = "sha256-pt/GoXF/uSU78pZqG8PgFe+tlbwZH2qpGQD7jgC52NM=";

  meta = with lib; {
    description = "A tool for auto generating GitHub compatible CODEOWNERS files from OWNERS files distributed through the file tree";
    homepage = "https://github.com/andrewring/github-distributed-owners";
    license = licenses.mit;
    maintainers = with maintainers; [ camerocuttingedge ];
    mainProgram = "github-distributed-owners";
  };
}
