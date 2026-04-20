class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.1.0"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell"
    sha256 "e6624ca4075138df60ed4c26f0cbc2fa5e494a51fb54c3e4aca711a14eab0d91"
  end

  def install
    bin.install "inkwell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
