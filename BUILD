load("@com_github_russell_rules_qbec//qbec:qbec.bzl", "qbec_show")
load("@com_github_russell_rules_kbld//kbld:kbld.bzl", "kbld")
load("@com_github_russell_rules_stately//stately:stately.bzl", "stately")

package(default_visibility = ["//visibility:public"])

qbec_show(
    name = "qbec/manifests",
    environment = "default",
    data = glob(["components/**",
                 "environments/**",
                 "params.libsonnet",
                 "qbec.yaml"]) + ["@upstream_yaml//file"],
)

kbld(
    name = "deploy/manifests",
    file = "//:qbec/manifests"
)

stately(
    name = "stately",
    srcs = ["//:deploy/manifests"]
)
