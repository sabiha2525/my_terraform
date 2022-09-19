resource "google_app_engine_standard_app_version" "myapp_v1" {
  version_id = "v1"
  service    = "myapp"
  runtime    = "nodejs14"

  entrypoint {
    shell = "node ./app.js"
  }

  deployment {
    zip {
      source_url = "https://storage.googleapis.com/${var.bucket}/${google_storage_bucket_object.appengineae.name}"
    }
  }

  env_variables = {
    port = "${var.port}"
  }
}

resource "google_storage_bucket_object" "appengineae" {
  name   = "appengineae"
  bucket = "${var.bucket}"
  source = "./appengine.zip"
}
