# Generated with JReleaser 1.16.0 at 2025-05-19T21:05:42.057462Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-84/tessellate-1.0-wip-84.zip"
  version "1.0-wip-84"
  sha256 "844e72740ee15739b7d805077a7fd85b3aa909c9a89d8a1599c72333f8273e7a"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-84", output
  end
end
