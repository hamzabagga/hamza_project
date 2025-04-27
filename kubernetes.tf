resource "kubectl_manifest" "cluster_issuer" {
  yaml_body = file("${path.root}/kubernetes/manifests/certificates/cluster-issuer.yaml")
  depends_on = [ helm_release.cert_manager ]
}
 
 resource "kubectl_manifest" "certificate_prometheus" {
  yaml_body = file("${path.root}/kubernetes/manifests/certificates/certificate-prometheus.yaml")
  depends_on = [ kubectl_manifest.cluster_issuer, helm_release.kube_prometheus_stack ]
 }


 resource "kubectl_manifest" "certificate_grafana" {
  yaml_body = file("${path.root}/kubernetes/manifests/certificates/certificate-grafana.yaml")
  depends_on = [ kubectl_manifest.cluster_issuer, helm_release.kube_prometheus_stack ]
 }

