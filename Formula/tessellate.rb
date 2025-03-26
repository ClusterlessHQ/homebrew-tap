# Generated with JReleaser 1.16.0 at 2025-03-26T20:02:07.352754Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-66/tessellate-1.0-wip-66.zip"
  version "1.0-wip-66"
  sha256 "d2068989a36bec25b15ae6b30e6b09cecfe3b2c739fdd876d81d141d372260ff"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-66", output
  end
end
