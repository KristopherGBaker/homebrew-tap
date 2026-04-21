class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.1.1"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell"
    sha256 "c2a85c23efe6b1a7fb39f7c9fab52ac835425ccdf204795d8b0c40d5cbdcaed3"
  end

  def install
    bin.install "inkwell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
