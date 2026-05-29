class Jpresume < Formula
  desc "Convert western-style resumes to Japanese format (履歴書・職務経歴書)"
  homepage "https://github.com/KristopherGBaker/JPResume"
  version "0.6.0"

  on_macos do
    url "https://github.com/KristopherGBaker/JPResume/releases/download/v#{version}/jpresume"
    sha256 "650745ff995286087f4972c07c7398a0253fe343a2d212f240a84944f6964b02"
  end

  def install
    bin.install "jpresume"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jpresume --version")
  end
end
