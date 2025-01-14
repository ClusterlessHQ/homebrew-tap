# Generated with JReleaser 1.9.0 at 2025-01-14T18:38:01.155569Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-49/tessellate-1.0-wip-49.zip"
  version "1.0-wip-49"
  sha256 "4d41daa3cc05f79a1920d4c722d1c24f24870174bd98417c81544d5bf08f358d"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-49", output
  end
end
