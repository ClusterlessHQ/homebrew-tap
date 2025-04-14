# Generated with JReleaser 1.16.0 at 2025-04-14T19:21:12.69732Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-74/tessellate-1.0-wip-74.zip"
  version "1.0-wip-74"
  sha256 "93e1c3a4eb5fec26d8b6d06d695fed00891069dfe80054674f9c247bb803a154"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-74", output
  end
end
