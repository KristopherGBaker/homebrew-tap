class Jpresume < Formula
  desc "Convert western-style resumes to Japanese format (履歴書・職務経歴書)"
  homepage "https://github.com/KristopherGBaker/JPResume"
  version "0.7.0"

  on_macos do
    url "https://github.com/KristopherGBaker/JPResume/releases/download/v#{version}/jpresume"
    sha256 "b4dc93b340a193d580321742c30560a5e8fa740be2605a0a3d7e460b179d2a8c"
  end

  def install
    bin.install "jpresume"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jpresume --version")
  end
end
