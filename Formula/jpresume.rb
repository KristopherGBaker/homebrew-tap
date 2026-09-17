class Jpresume < Formula
  desc "Convert western-style resumes to Japanese format (履歴書・職務経歴書)"
  homepage "https://github.com/KristopherGBaker/JPResume"
  version "0.7.1"

  on_macos do
    url "https://github.com/KristopherGBaker/JPResume/releases/download/v#{version}/jpresume"
    sha256 "eaf4a7d7c74958c11cd1e8d8c82b4b1edaf4755cd1055c1d13e36a1ea2265a23"
  end

  def install
    bin.install "jpresume"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jpresume --version")
  end
end
