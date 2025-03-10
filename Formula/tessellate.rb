# Generated with JReleaser 1.16.0 at 2025-03-10T21:11:26.178951Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-59/tessellate-1.0-wip-59.zip"
  version "1.0-wip-59"
  sha256 "210bb6dfafc4ef987ee6fb08b686914782437d2a18d107271697266fd35bb9df"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-59", output
  end
end
