pipeline{
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }
def getTerraformPath(){
  def tfhome = tool name: 'Terraform 0.11.13', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
  return tfHome
}
