# Generated with JReleaser 1.16.0 at 2025-04-15T20:28:44.043086Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-77/tessellate-1.0-wip-77.zip"
  version "1.0-wip-77"
  sha256 "58fed623cbea67987469652f8f1b6f45169a5c1210250d6ce60462714150fbf5"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-77", output
  end
end
