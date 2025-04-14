# Generated with JReleaser 1.16.0 at 2025-04-14T18:42:47.058316Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-73/tessellate-1.0-wip-73.zip"
  version "1.0-wip-73"
  sha256 "66f35a3f71d5b98822cbf391ccd15514831f13569d726a19cef2e2cb5866e3c9"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-73", output
  end
end
