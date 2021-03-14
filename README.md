# Stately example

``` shellsession
$ bazel build :all
INFO: Analyzed 3 targets (0 packages loaded, 0 targets configured).
INFO: Found 3 targets...
INFO: From Generating default:
1 components evaluated in 1ms
INFO: From Resolving dependencies:
resolve | final: nginx:stable -> index.docker.io/library/nginx@sha256:26132ea371bc9b83bc5ad197fef4b1b56577893d549a997201289850daa08524
INFO: Elapsed time: 2.268s, Critical Path: 2.06s
INFO: 3 processes: 1 internal, 2 linux-sandbox.
INFO: Build completed successfully, 3 total actions

$ bazel run //:stately
INFO: Analyzed target //:stately (0 packages loaded, 0 targets configured).
INFO: Found 1 target...
Target //:stately up-to-date:
  bazel-bin/stately.bash
INFO: Elapsed time: 0.082s, Critical Path: 0.00s
INFO: 1 process: 1 internal.
INFO: Build completed successfully, 1 total action
INFO: Build completed successfully, 1 total action
2021-03-14T21:38:47.749+0100	DEBUG	actions/copy.go:102	Copying: deploy/manifests.yaml

$ ls deploy
manifests.yaml

$ cat .stately.yml
apiVersion: simopolis.xyz/v1alpha1
directories:
- Path: deploy/manifests.yaml
kind: StateConfig
```
