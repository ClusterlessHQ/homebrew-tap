# Generated with JReleaser 1.8.0 at 2023-10-24T23:55:21.775993Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-34/tessellate-1.0-wip-34.zip"
  version "1.0-wip-34"
  sha256 "2176668add24a2cfc635f976f6b71930698ba6d40c98ebf28b4eb3f37082b449"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-34", output
  end
end
