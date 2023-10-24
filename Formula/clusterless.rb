# Generated with JReleaser 1.8.0 at 2023-10-24T14:32:26.76003979Z
class Clusterless < Formula
  desc "Clusterless is a framework for building serverless data oriented applications."
  homepage "https://github.com/ClusterlessHQ"
  url "https://github.com/ClusterlessHQ/clusterless/releases/download/v1.0-wip-70/clusterless-1.0-wip-70.zip"
  version "1.0-wip-70"
  sha256 "2267fd8f004e402bbcad363eae190dbaed388fcd2605ad8abd8e6c7811665f0b"
  license "MPL-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cls" => "cls"
  end

  test do
    output = shell_output("#{bin}/cls --version")
    assert_match "1.0-wip-70", output
  end
end
