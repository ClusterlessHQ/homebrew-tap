# Generated with JReleaser 1.9.0 at 2023-12-05T23:08:49.191254Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-38/tessellate-1.0-wip-38.zip"
  version "1.0-wip-38"
  sha256 "071a5568b06b4f220cfff1908b5cbef80010ff5d7cc4b54f8a81b04b384f3cc3"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-38", output
  end
end
