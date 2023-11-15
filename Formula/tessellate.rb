# Generated with JReleaser 1.8.0 at 2023-11-15T00:42:48.855397Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-36/tessellate-1.0-wip-36.zip"
  version "1.0-wip-36"
  sha256 "74212a0da602b6c19d16c31e386078ab8438a83becc7cb0276a407d44936a3dc"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-36", output
  end
end
