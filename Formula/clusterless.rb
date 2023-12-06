# Generated with JReleaser 1.8.0 at 2023-12-06T06:12:07.53822572Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-75/clusterless-1.0-wip-75.zip"
  version "1.0-wip-75"
  sha256 "d2bd8d44adcc87cb942fcc22288d072685f7f144414b5de7133bdfcba380b289"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-75", output
  end
end
