# Generated with JReleaser 1.16.0 at 2025-03-12T16:19:38.980386Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-60/tessellate-1.0-wip-60.zip"
  version "1.0-wip-60"
  sha256 "2aca8a3278b63965cb1e9cad4ec53a2c376f86f30b7ce3a86eeca647395f6359"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-60", output
  end
end
