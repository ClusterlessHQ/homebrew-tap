# Generated with JReleaser 1.16.0 at 2025-04-08T23:07:31.15616Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-71/tessellate-1.0-wip-71.zip"
  version "1.0-wip-71"
  sha256 "0247ce1233cf477bc9532c26add45c1638e36a8b16cfbbdbd1037fbb3297cf7d"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-71", output
  end
end
