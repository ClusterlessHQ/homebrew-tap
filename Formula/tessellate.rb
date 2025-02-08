# Generated with JReleaser 1.16.0 at 2025-02-08T19:02:53.326073Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-56/tessellate-1.0-wip-56.zip"
  version "1.0-wip-56"
  sha256 "05a10d83af218ef50b96ac0983cf4bab06e1bdfc0a1c195737d389d2b81ec015"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-56", output
  end
end
