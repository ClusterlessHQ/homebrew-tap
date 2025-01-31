# Generated with JReleaser 1.16.0 at 2025-01-31T22:33:04.361099Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-52/tessellate-1.0-wip-52.zip"
  version "1.0-wip-52"
  sha256 "ec3aab3fb4d3623259fb9946ec47ad25c1cbff38af5926315bf4d4da0cc733f6"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-52", output
  end
end
