class Jpresume < Formula
  desc "Convert western-style resumes to Japanese format (履歴書・職務経歴書)"
  homepage "https://github.com/KristopherGBaker/JPResume"
  version "0.6.1"

  on_macos do
    url "https://github.com/KristopherGBaker/JPResume/releases/download/v#{version}/jpresume"
    sha256 "11c7f5e0d1298a8c2f76066a4749e6224d342a07db1a483c5ed07ec9901c286d"
  end

  def install
    bin.install "jpresume"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jpresume --version")
  end
end
