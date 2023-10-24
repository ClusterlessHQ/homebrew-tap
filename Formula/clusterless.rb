# Generated with JReleaser 1.8.0 at 2023-10-23T19:49:16.934935-07:00
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-68/clusterless-1.0-wip-68.zip"
  version "1.0-wip-68"
  sha256 "98c5b4de70907e8d1f9d47b0a7125f89846cedb62e43d04939cbb7acb5a47d28"
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
