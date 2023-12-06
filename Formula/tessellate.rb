# Generated with JReleaser 1.9.0 at 2023-12-06T05:11:57.944711Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-42/tessellate-1.0-wip-42.zip"
  version "1.0-wip-42"
  sha256 "5ff058489bbc1638163dd65dfeadc1e3e3e0bf66c1d5bf34d3a6ff195784bdd8"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-42", output
  end
end
