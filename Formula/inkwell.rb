class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.5.3"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell-macos.tar.gz"
    sha256 "9f98ab56ac6d1fd763d94923da249360323b2125c1d94418c38d29c0af86c685"
  end

  def install
    bin.install "inkwell"
    bin.install "swift-blog_BlogThemes.bundle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
