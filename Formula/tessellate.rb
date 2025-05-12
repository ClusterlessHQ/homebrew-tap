# Generated with JReleaser 1.16.0 at 2025-05-12T16:40:39.514903Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-81/tessellate-1.0-wip-81.zip"
  version "1.0-wip-81"
  sha256 "f4f65e91f630b97895e2d22792d45750fb97a98737c62f4ff4f73571b2a8c9c8"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-81", output
  end
end
