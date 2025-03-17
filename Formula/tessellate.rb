# Generated with JReleaser 1.16.0 at 2025-03-17T16:21:07.392235Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-62/tessellate-1.0-wip-62.zip"
  version "1.0-wip-62"
  sha256 "72eec0bb65ccf0cb643ff8dda7e5cee84c76d658e3035972a93a22ce897f6675"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-62", output
  end
end
