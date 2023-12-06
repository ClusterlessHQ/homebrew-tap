# Generated with JReleaser 1.9.0 at 2023-12-06T04:44:05.203825Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-40/tessellate-1.0-wip-40.zip"
  version "1.0-wip-40"
  sha256 "fb82af421b4bff864c45637c1a48056c715760adfd706a2a07e5f72d52a87329"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-40", output
  end
end
