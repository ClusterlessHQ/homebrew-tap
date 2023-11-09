# Generated with JReleaser 1.8.0 at 2023-11-09T05:46:30.390994391Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-73/clusterless-1.0-wip-73.zip"
  version "1.0-wip-73"
  sha256 "79e4a047e41c1afd9c9204be2141ec18db3097fed34199053b56d705b63e7ce6"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-73", output
  end
end
