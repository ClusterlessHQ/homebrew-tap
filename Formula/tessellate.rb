# Generated with JReleaser 1.16.0 at 2025-02-20T21:41:42.883076Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-57/tessellate-1.0-wip-57.zip"
  version "1.0-wip-57"
  sha256 "f7b4e00dea2bd4a7482667ba616cc77f610e154cb4af29762856f3b2d00c5806"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-57", output
  end
end
