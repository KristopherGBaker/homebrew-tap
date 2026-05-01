class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.4.2"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell-macos.tar.gz"
    sha256 "efe02101e15a45dc3185cecfd72c09afffbdc800c35872032eb4bc4b2cd3c4e0"
  end

  def install
    bin.install "inkwell"
    bin.install "swift-blog_BlogThemes.bundle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
