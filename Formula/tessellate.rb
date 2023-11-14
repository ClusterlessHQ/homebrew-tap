# Generated with JReleaser 1.8.0 at 2023-11-14T23:23:45.202311Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-35/tessellate-1.0-wip-35.zip"
  version "1.0-wip-35"
  sha256 "7c2fb4b487e2f8ada1b911fcd8d3bbb48aaa5223b166c3904b78deb311f82752"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-35", output
  end
end
