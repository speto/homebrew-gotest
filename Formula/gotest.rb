class Gotest < Formula
  desc "A go test runner with colors"
  head "https://github.com/rakyll/gotest"
  url "https://github.com/rakyll/gotest/archive/refs/tags/v0.0.6.tar.gz"
  sha256 "caceee1c460d47d0cf9b561839dd22b3e645b4ecedef0cfdcae74ac6628b2a65"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    system "#{bin}/gotest", "--help"
  end
end
