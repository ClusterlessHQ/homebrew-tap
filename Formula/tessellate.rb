# Generated with JReleaser 1.16.0 at 2025-04-02T15:30:30.847638Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-67/tessellate-1.0-wip-67.zip"
  version "1.0-wip-67"
  sha256 "ad43567ad1a69d02ffebd62875738b550a98705c22973079ae1d8c4de50afb85"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-67", output
  end
end
