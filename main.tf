provider "google" {
    project = "intern-infra"

}

resource "google_cloudbuild_trigger" "cloudbuild_trigger" {
    trigger_template {
        branch_name = "master"
        repo_name = "terraform-gcb"
    }

    build {
        step {
            name = "node"
            entrypoint = "npm"
            args = ["install"]
        }
    }
}