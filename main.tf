data "helm_repository" "secrets-store-csi-driver-data" {
  name = "secrets-store-csi-driver-data"
  url  = "https://raw.githubusercontent.com/evry-ace/secrets-store-csi-driver/master/"
}

resource "helm_release" "secrets-store-csi-driver" {
  name       = "secrets-store-csi-driver"
  chart      = "secrets-store-csi-driver"
  repository = "${data.helm_repository.secrets-store-csi-driver-data.metadata.0.name}"
  version    = "${var.secrets-store-csi-driver_version}"
  namespace  = "${var.secrets-store-csi-driver_namespace}"
}
