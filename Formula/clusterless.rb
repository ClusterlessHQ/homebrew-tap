# Generated with JReleaser 1.8.0 at 2025-04-14T22:35:09.755990266Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-101/clusterless-1.0-wip-101.zip"
  version "1.0-wip-101"
  sha256 "fada616dacd4a24de728fbeb4b10957b23e8457803ca988d3d5103bdfb017d6e"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-101", output
  end
end
