class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.1.0"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell"
    sha256 "0a6a18b395a47dff5feeaf738e58f3a1af1b2f50cd0d5b271d2fd3f605c3ff20"
  end

  def install
    bin.install "inkwell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
