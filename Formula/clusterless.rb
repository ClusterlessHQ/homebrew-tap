# Generated with JReleaser 1.26.0 at 2026-09-27T04:59:11.216590961Z

class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-130/clusterless-1.0-wip-130.zip"
  version "1.0-wip-130"
  sha256 "6b58a00d0c428bfdc0e37e6508313ee80e35a25eb19aaccbfcb4db14550a646c"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-130", output
  end
end
