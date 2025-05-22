# Generated with JReleaser 1.16.0 at 2025-05-22T21:15:46.412685Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-88/tessellate-1.0-wip-88.zip"
  version "1.0-wip-88"
  sha256 "0102dec81429b7e6afb80a60f47bb0c83d22f662f16df268be6d0ccbdefc9de3"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-88", output
  end
end
