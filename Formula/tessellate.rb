# Generated with JReleaser 1.16.0 at 2025-05-22T16:59:19.048344Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-86/tessellate-1.0-wip-86.zip"
  version "1.0-wip-86"
  sha256 "ed96edefc5a47b193046c089b9c635b2a6ea8878535606df2fba109cc1bf7ef2"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-86", output
  end
end
