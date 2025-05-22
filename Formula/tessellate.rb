# Generated with JReleaser 1.16.0 at 2025-05-22T20:48:14.038605Z

class Tessellate < Formula
  desc "Tessellate is tool for parsing and partitioning data."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/tessellate/releases/download/v1.0-wip-87/tessellate-1.0-wip-87.zip"
  version "1.0-wip-87"
  sha256 "fc141306afc3628e978646c36841141be0fb5e2d8ee49e8da8451b1c1de5e5be"
  license "MPL-2.0"

  depends_on "openjdk@11"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/tess" => "tess"
  end

  test do
    output = shell_output("#{bin}/tess --version")
    assert_match "1.0-wip-87", output
  end
end
