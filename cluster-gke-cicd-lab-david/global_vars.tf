
variable "project_cicd_lab_david" {
  type        = string
  default     = "cicd-lab-david"
  description = "Identificador del proyecto CICD lab David"
}

variable "region" {
  type        = string
  default     = "us-east1"
  description = "Región por defecto para asignar regiones y zonas"
}


variable "name_cluster_cicd_lab_david" {
  type        = string
  default     = "cluster-cicd-lab-david"
  description = "Nombre del cluster GKE"
}

variable "name_node_pool_cicd_lab_david" {
  type        = string
  default     = "node-pool-cicd-lab-david"
  description = "Nombre del node pool GKE"
}


variable "staging_bucket_cicd_lab_david" {
  type        = string
  default     = "bucket-cicd-lab-david"
  description = "Nombre del bucket"
}

variable "machine_type" {
  type        = string
  default     = "n1-standard-2"
  description = "Tipo de maquinas"
}

variable "disk_type" {
  type        = string
  default     = "pd-ssd"
  description = "Tipo de maquinas"
}

variable "image_type" {
  type        = string
  default     = "COS"
  description = "Versión de imagen de los nodos  gke"
}

variable "node_metadata" {
  type        = string
  default     = "GCE_METADATA"
  description = ""
}