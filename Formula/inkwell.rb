class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.6.0"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell-macos.tar.gz"
    sha256 "60efa59779212ccd06a1b1463d58ea479ba5d7f8a48dd4ef23a855b53f7241f9"
  end

  def install
    bin.install "inkwell"
    bin.install "swift-blog_BlogThemes.bundle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
