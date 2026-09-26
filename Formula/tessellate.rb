# Generated with JReleaser 1.16.0 at 2026-09-26T22:59:44.864944634Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-92/tessellate-1.0-wip-92.zip"
  version "1.0-wip-92"
  sha256 "4801c8858ef9bae49dcf4cafeb8e84fde81a178fcfcab676ae1003f8c25994d1"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-92", output
  end
end
