# Generated with JReleaser 1.16.0 at 2025-04-14T23:39:23.176557Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-75/tessellate-1.0-wip-75.zip"
  version "1.0-wip-75"
  sha256 "52efaeca3fb75326c7e6298328be1a60bdd4c0b4d3893dcf2ebaae967b842e6c"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-75", output
  end
end
