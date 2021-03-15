def _impl(ctx):
    tree = ctx.actions.declare_directory(ctx.attr.name)
    ctx.actions.run_shell(
        inputs = [],
        outputs = [ tree ],
        progress_message = "Generating hello files into '%s'" % tree.path,
        command = "cd %s; echo 'hello' > hello.txt; echo 'hello1' > hello1.text; ls" % tree.path
    )

    return [ DefaultInfo(files = depset([ tree ])) ]

hello = rule(
    implementation = _impl,
)
