# Generated with JReleaser 1.8.0 at 2023-10-23T16:39:55.330825-07:00
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-68/clusterless-1.0-wip-68.zip"
  version "1.0-wip-68"
  sha256 "ea7dfcab9e828c155e9a44a85350c0b86a58afb7cdf2ebbef7578e8cd974f13d"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-68", output
  end
end
