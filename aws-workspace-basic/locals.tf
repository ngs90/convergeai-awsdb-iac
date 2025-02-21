locals {
  default_compute_policy = {
    "aws_attributes.spot_bid_price_percent" : {
      "type" : "fixed",
      "value" : 100,
      "hidden" : true
    },
    "dbus_per_hour" : {
      "type" : "range",
      "maxValue" : 2
    },
    "aws_attributes.availability" : {
      "type" : "fixed",
      "value" : "ON_DEMAND",
      "hidden" : true
    },
    "node_type_id" : {
      "type" : "allowlist",
      "values" : [
        "i3.xlarge",
        "i3.2xlarge",
        "i3.4xlarge",
        "i3en.xlarge",
        "g4dn.xlarge"
      ],
      "defaultValue" : "i3.xlarge"
    },
    "spark_version" : {
      "type" : "unlimited",
      "defaultValue" : "auto:latest-ml"
    },
    "runtime_engine" : {
      "type" : "fixed",
      "value" : "STANDARD",
      "hidden" : true
    },
    "num_workers" : {
      "type" : "range",
      "minValue" : 0,
      "defaultValue" : 1
    },
    "data_security_mode" : {
      "type" : "allowlist",
      "values" : [
        "SINGLE_USER",
        "LEGACY_SINGLE_USER",
        "LEGACY_SINGLE_USER_STANDARD"
      ],
      "defaultValue" : "SINGLE_USER",
      "hidden" : true
    },
    "driver_instance_pool_id" : {
      "type" : "forbidden",
      "hidden" : true
    },
    "cluster_type" : {
      "type" : "fixed",
      "value" : "all-purpose"
    },
    "aws_attributes.zone_id" : {
      "type" : "unlimited",
      "defaultValue" : "auto",
      "hidden" : true
    },
    "instance_pool_id" : {
      "type" : "forbidden",
      "hidden" : true
    },
    "spark_conf.spark.databricks.cluster.profile" : {
      "type" : "fixed",
      "value" : "singleNode",
      "hidden" : true
    },
    "autotermination_minutes" : {
      "type" : "range",
      "maxValue" : 60,
      "defaultValue" : 30
    },
    "enable_elastic_disk" : {
      "type" : "fixed",
      "value" : true,
      "hidden" : true
  } }
}
