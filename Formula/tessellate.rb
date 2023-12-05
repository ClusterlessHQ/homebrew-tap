# Generated with JReleaser 1.9.0 at 2023-12-05T23:00:14.244341Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-37/tessellate-1.0-wip-37.zip"
  version "1.0-wip-37"
  sha256 "e4ff791844a4b47308f9f0eb31d3db1af7beaf179170a0136e45413520922638"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-37", output
  end
end
