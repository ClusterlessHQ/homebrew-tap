# Generated with JReleaser 1.9.0 at 2023-12-06T04:31:58.919903Z
class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-40/tessellate-1.0-wip-40.zip"
  version "1.0-wip-40"
  sha256 "9a4a83eeb3aede679fc5910d661fbe84a48dc4668169c75d4e0ec931d6760d7b"
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
