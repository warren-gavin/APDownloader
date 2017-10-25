Pod::Spec.new do |s|

  s.name          = "APDownloader"
  s.version       = "0.0.1"
  s.summary       = "Simple lib that handles standard download and parse"
  s.homepage      = "https://github.com/warren-gavin/APDownloader"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { "Apokrupto" => "warren@apokrupto.com" }
  s.platform      = :ios, "11.0"
  s.source        = { :git => "https://github.com/warren-gavin/APDownloader.git", :tag => s.version }
  s.source_files  = "#{s.name}/**/*.swift"
  s.description   = <<-DESC
    Simple lib that handles standard download and parse.

    Create model objects as conforming to JSONConstructible, then download

    struct Model: JSONConstructible {
      init?(_ json: JSONFormat) {
          return nil
      }
    }

    let url = URL(string: "your-rest-endpoint")!
    let config = HTTP.Config(method: .get)

    HTTP.download(url: url, config: config, downloader: NetworkDownloader()) { (result: DownloadResult<Todo>) in
        switch result {
        case .success(let response):
            print(response)

        case .failure(let error):
            print(error)
        }
    }
  DESC
end
