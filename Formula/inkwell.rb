class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.16.0"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell-macos.tar.gz"
    sha256 "798462c2d16ddcec6855aa9117c7cc347dbf2ecd3be4c65277ff3a2fbc51746d"
  end

  def install
    bin.install "inkwell"
    bin.install "swift-blog_BlogThemes.bundle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
