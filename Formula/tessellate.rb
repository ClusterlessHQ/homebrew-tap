# Generated with JReleaser 1.9.0 at 2023-12-06T18:01:55.651442Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-48/tessellate-1.0-wip-48.zip"
  version "1.0-wip-48"
  sha256 "34756c98c888e93ade285bd79b454bc69bb6358e3b489d69529704f4dc27ab9e"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-48", output
  end
end
