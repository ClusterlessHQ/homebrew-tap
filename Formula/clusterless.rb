# Generated with JReleaser 1.8.0 at 2025-03-10T21:50:26.964692047Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-86/clusterless-1.0-wip-86.zip"
  version "1.0-wip-86"
  sha256 "5e29c9e19760fcaaaaf070a5b7f38122e6cc884a092533eae2c683caac91685a"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-86", output
  end
end
