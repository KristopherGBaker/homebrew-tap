class Jpresume < Formula
  desc "Convert western-style resumes to Japanese format (履歴書・職務経歴書)"
  homepage "https://github.com/KristopherGBaker/JPResume"
  version "0.5.0"

  on_macos do
    url "https://github.com/KristopherGBaker/JPResume/releases/download/v#{version}/jpresume"
    sha256 "0504f1e467980c9a987a355c7ed9011c57e3730db8b5bb53ed540addc53e37df"
  end

  def install
    bin.install "jpresume"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jpresume --version")
  end
end
