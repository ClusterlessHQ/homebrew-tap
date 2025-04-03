# Generated with JReleaser 1.16.0 at 2025-04-03T18:50:58.83272Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-70/tessellate-1.0-wip-70.zip"
  version "1.0-wip-70"
  sha256 "99f43ec1dcdf6262cbcd0d27d3169dd921650913e5c400c3bc35b000b1370958"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-70", output
  end
end
