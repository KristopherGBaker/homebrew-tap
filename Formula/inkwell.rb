class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.1.2"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell"
    sha256 "3b05431137c5f0cd5f13832d2b71a78b16741615041b6ca4e9e1b057af6230c5"
  end

  def install
    bin.install "inkwell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
