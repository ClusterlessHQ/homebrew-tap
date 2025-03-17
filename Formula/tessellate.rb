# Generated with JReleaser 1.16.0 at 2025-03-17T21:42:27.675311Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-63/tessellate-1.0-wip-63.zip"
  version "1.0-wip-63"
  sha256 "7ff4fbc1cfc491f57f3b660ba5005aacbe10b4e549d1f3a460fc9d4fc98327d0"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-63", output
  end
end
