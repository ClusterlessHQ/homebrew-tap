# Generated with JReleaser 1.16.0 at 2025-02-24T18:07:11.581977Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-58/tessellate-1.0-wip-58.zip"
  version "1.0-wip-58"
  sha256 "b3c488827046ef508572f3ec764ccb6eb4e5b6609b4f9171c840ec97cc34c359"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-58", output
  end
end
