provider "google" {
    project = "intern-infra"

}

resource "google_cloudbuild_trigger" "cloudbuild_trigger" {
    name = "cloudbuild-trigger"

    source_to_build {
        uri = "https://github.com/IDiot29/terraform-gcb"
        ref       = "refs/heads/master"
        repo_type = "GITHUB"
    }

    git_file_source {
        path      = "cloudbuild.yaml"
        uri = "https://github.com/IDiot29/terraform-gcb"
        ref       = "refs/heads/master"
        repo_type = "GITHUB"
  }
}