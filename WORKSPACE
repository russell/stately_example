load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

http_archive(
    name = "com_github_russell_rules_qbec",
    strip_prefix = "rules_qbec-main",
    urls = ["https://github.com/russell/rules_qbec/archive/main.zip"],
)

load("@com_github_russell_rules_qbec//qbec:qbec_deps.bzl", "qbec_repositories")

qbec_repositories()

http_archive(
    name = "com_github_russell_rules_kbld",
    strip_prefix = "rules_kbld-main",
    urls = ["https://github.com/russell/rules_kbld/archive/main.zip"],
)

load("@com_github_russell_rules_kbld//kbld:kbld_deps.bzl", "kbld_repositories")

kbld_repositories()


http_file(
    name = "upstream_yaml",
    downloaded_file_path = "install.yaml",
    urls = ["https://raw.githubusercontent.com/argoproj/argo/stable/manifests/install.yaml"]
)


http_archive(
    name = "com_github_russell_rules_stately",
    strip_prefix = "rules_stately-main",
    urls = ["https://github.com/russell/rules_stately/archive/main.zip"],
)

load("@com_github_russell_rules_stately//stately:stately_deps.bzl", "stately_repositories")
stately_repositories()
