pipeline{
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }
def getTerraformPath(){
  def tfHome = tool name: tool name: 'terraform', type: 'terraform'
  return tfHome
}
