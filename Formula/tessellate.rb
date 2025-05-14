# Generated with JReleaser 1.16.0 at 2025-05-14T18:44:54.833858Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-83/tessellate-1.0-wip-83.zip"
  version "1.0-wip-83"
  sha256 "e74bb0d476d00373a6f19e752a71ba5307bb37d03bea762708f898d87f199517"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-83", output
  end
end
