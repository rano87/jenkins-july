template = '''
apiVersion: v1
kind: Pod
metadata:
  labels:
    run: packer
  name: packer
spec:
  containers:
  - command:
    - sleep
    - "3600"
    image: hashicorp/packer
    name: packer
    '''

podTemplate(cloud: 'kubernetes', label: 'packer', showRawYaml: false, yaml: template){
node("packer"){
container("packer"){
stage("Packer"){
  sh "packer version"
}
}
}
}








