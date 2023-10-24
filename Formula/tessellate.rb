# Generated with JReleaser 1.8.0 at 2023-10-24T15:21:07.32304Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-33/tessellate-1.0-wip-33.zip"
  version "1.0-wip-33"
  sha256 "ab38c3bc39d15ba175e55fb5386e070f31d947a88f58a85c90fcd4ee15456e48"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-33", output
  end
end
