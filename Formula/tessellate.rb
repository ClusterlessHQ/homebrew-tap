# Generated with JReleaser 1.16.0 at 2025-04-02T18:37:38.493254Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-68/tessellate-1.0-wip-68.zip"
  version "1.0-wip-68"
  sha256 "005459aa0b27dfe27c4878d0e4821cfa9cd0e939f18f8c4f093a106453677d28"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-68", output
  end
end
