class Inkwell < Formula
  desc "Swift static publishing CLI"
  homepage "https://github.com/KristopherGBaker/inkwell"
  version "0.3.0"

  on_macos do
    url "https://github.com/KristopherGBaker/inkwell/releases/download/v#{version}/inkwell"
    sha256 "8d5feb3748642d45d90ee88276e7f56c84de134549943e33a79401a93159978e"
  end

  def install
    bin.install "inkwell"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inkwell --version")
  end
end
