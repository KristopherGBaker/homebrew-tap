class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.9.2"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell-macos.tar.gz"
    sha256 "c2c74e25c5eb21ecdde9c50b47d95c52d42d6e3d0a8e96f749ec2979016f6ddc"
  end

  def install
    bin.install "inkwell"
    bin.install "swift-blog_BlogThemes.bundle"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
