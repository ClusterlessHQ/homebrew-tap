# Generated with JReleaser 1.16.0 at 2025-05-23T04:58:56.916046Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-89/tessellate-1.0-wip-89.zip"
  version "1.0-wip-89"
  sha256 "974c63d146d22d27109e0c62b1d2a7b6b161001c45e018dd4b6db6cb9880b2b8"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-89", output
  end
end
