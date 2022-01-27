-- THIS FILE IS GENERATED. DO NOT EDIT MANUALLY.
-- stylua: ignore start
return {properties = {["$generated-end"] = vim.empty_dict(),["$generated-start"] = vim.empty_dict(),["rust-analyzer.assist.allowMergingIntoGlobImports"] = {default = true,markdownDescription = "Whether to allow import insertion to merge new imports into single path glob imports like `use std::fmt::*;`.",type = "boolean"},["rust-analyzer.assist.exprFillDefault"] = {default = "todo",enum = { "todo", "default" },enumDescriptions = { "Fill missing expressions with the `todo` macro", "Fill missing expressions with reasonable defaults, `new` or `default` constructors." },markdownDescription = "Placeholder for missing expressions in assists.",type = "string"},["rust-analyzer.assist.importEnforceGranularity"] = {default = false,markdownDescription = "Whether to enforce the import granularity setting for all files. If set to false rust-analyzer will try to keep import styles consistent per file.",type = "boolean"},["rust-analyzer.assist.importGranularity"] = {default = "crate",enum = { "preserve", "crate", "module", "item" },enumDescriptions = { "Do not change the granularity of any imports and preserve the original structure written by the developer.", "Merge imports from the same crate into a single use statement. Conversely, imports from different crates are split into separate statements.", "Merge imports from the same module into a single use statement. Conversely, imports from different modules are split into separate statements.", "Flatten imports so that each has its own use statement." },markdownDescription = "How imports should be grouped into use statements.",type = "string"},["rust-analyzer.assist.importGroup"] = {default = true,markdownDescription = "Group inserted imports by the [following order](https://rust-analyzer.github.io/manual.html#auto-import). Groups are separated by newlines.",type = "boolean"},["rust-analyzer.assist.importPrefix"] = {default = "plain",enum = { "plain", "self", "crate" },enumDescriptions = { "Insert import paths relative to the current module, using up to one `super` prefix if the parent module contains the requested item.", "Insert import paths relative to the current module, using up to one `super` prefix if the parent module contains the requested item. Prefixes `self` in front of the path if it starts with a module.", "Force import paths to be absolute by always starting them with `crate` or the extern crate name they come from." },markdownDescription = "The path structure for newly inserted paths to use.",type = "string"},["rust-analyzer.cache.warmup"] = {default = true,markdownDescription = "Warm up caches on project load.",type = "boolean"},["rust-analyzer.callInfo.full"] = {default = true,markdownDescription = "Show function name and docs in parameter hints.",type = "boolean"},["rust-analyzer.cargo.allFeatures"] = {default = false,markdownDescription = "Activate all available features (`--all-features`).",type = "boolean"},["rust-analyzer.cargo.autoreload"] = {default = true,markdownDescription = "Automatically refresh project info via `cargo metadata` on\n`Cargo.toml` changes.",type = "boolean"},["rust-analyzer.cargo.features"] = {default = {},items = {type = "string"},markdownDescription = "List of features to activate.",type = "array"},["rust-analyzer.cargo.noDefaultFeatures"] = {default = false,markdownDescription = "Do not activate the `default` feature.",type = "boolean"},["rust-analyzer.cargo.noSysroot"] = {default = false,markdownDescription = "Internal config for debugging, disables loading of sysroot crates.",type = "boolean"},["rust-analyzer.cargo.runBuildScripts"] = {default = true,markdownDescription = "Run build scripts (`build.rs`) for more precise code analysis.",type = "boolean"},["rust-analyzer.cargo.target"] = {default = vim.NIL,markdownDescription = "Compilation target (target triple).",type = { "null", "string" }},["rust-analyzer.cargo.unsetTest"] = {default = { "core" },items = {type = "string"},markdownDescription = "Unsets `#[cfg(test)]` for the specified crates.",type = "array"},["rust-analyzer.cargo.useRustcWrapperForBuildScripts"] = {default = true,markdownDescription = "Use `RUSTC_WRAPPER=rust-analyzer` when running build scripts to\navoid compiling unnecessary things.",type = "boolean"},["rust-analyzer.cargoRunner"] = {default = vim.NIL,description = "Custom cargo runner extension ID.",type = { "null", "string" }},["rust-analyzer.checkOnSave.allFeatures"] = {default = vim.NIL,markdownDescription = "Check with all features (`--all-features`).\nDefaults to `#rust-analyzer.cargo.allFeatures#`.",type = { "null", "boolean" }},["rust-analyzer.checkOnSave.allTargets"] = {default = true,markdownDescription = "Check all targets and tests (`--all-targets`).",type = "boolean"},["rust-analyzer.checkOnSave.command"] = {default = "check",markdownDescription = "Cargo command to use for `cargo check`.",type = "string"},["rust-analyzer.checkOnSave.enable"] = {default = true,markdownDescription = "Run specified `cargo check` command for diagnostics on save.",type = "boolean"},["rust-analyzer.checkOnSave.extraArgs"] = {default = {},items = {type = "string"},markdownDescription = "Extra arguments for `cargo check`.",type = "array"},["rust-analyzer.checkOnSave.features"] = {default = vim.NIL,items = {type = "string"},markdownDescription = "List of features to activate. Defaults to\n`#rust-analyzer.cargo.features#`.",type = { "null", "array" }},["rust-analyzer.checkOnSave.noDefaultFeatures"] = {default = vim.NIL,markdownDescription = "Do not activate the `default` feature.",type = { "null", "boolean" }},["rust-analyzer.checkOnSave.overrideCommand"] = {default = vim.NIL,items = {type = "string"},markdownDescription = "Advanced option, fully override the command rust-analyzer uses for\nchecking. The command should include `--message-format=json` or\nsimilar option.",type = { "null", "array" }},["rust-analyzer.checkOnSave.target"] = {default = vim.NIL,markdownDescription = "Check for a specific target. Defaults to\n`#rust-analyzer.cargo.target#`.",type = { "null", "string" }},["rust-analyzer.completion.addCallArgumentSnippets"] = {default = true,markdownDescription = "Whether to add argument snippets when completing functions.\nOnly applies when `#rust-analyzer.completion.addCallParenthesis#` is set.",type = "boolean"},["rust-analyzer.completion.addCallParenthesis"] = {default = true,markdownDescription = "Whether to add parenthesis when completing functions.",type = "boolean"},["rust-analyzer.completion.autoimport.enable"] = {default = true,markdownDescription = "Toggles the additional completions that automatically add imports when completed.\nNote that your client must specify the `additionalTextEdits` LSP client capability to truly have this feature enabled.",type = "boolean"},["rust-analyzer.completion.autoself.enable"] = {default = true,markdownDescription = "Toggles the additional completions that automatically show method calls and field accesses\nwith `self` prefixed to them when inside a method.",type = "boolean"},["rust-analyzer.completion.postfix.enable"] = {default = true,markdownDescription = "Whether to show postfix snippets like `dbg`, `if`, `not`, etc.",type = "boolean"},["rust-analyzer.completion.snippets"] = {default = {["Arc::new"] = {body = "Arc::new(${receiver})",description = "Put the expression into an `Arc`",postfix = "arc",requires = "std::sync::Arc",scope = "expr"},["Box::pin"] = {body = "Box::pin(${receiver})",description = "Put the expression into a pinned `Box`",postfix = "pinbox",requires = "std::boxed::Box",scope = "expr"},Err = {body = "Err(${receiver})",description = "Wrap the expression in a `Result::Err`",postfix = "err",scope = "expr"},Ok = {body = "Ok(${receiver})",description = "Wrap the expression in a `Result::Ok`",postfix = "ok",scope = "expr"},["Rc::new"] = {body = "Rc::new(${receiver})",description = "Put the expression into an `Rc`",postfix = "rc",requires = "std::rc::Rc",scope = "expr"},Some = {body = "Some(${receiver})",description = "Wrap the expression in an `Option::Some`",postfix = "some",scope = "expr"}},markdownDescription = "Custom completion snippets.",type = "object"},["rust-analyzer.debug.engine"] = {default = "auto",description = "Preferred debug engine.",enum = { "auto", "vadimcn.vscode-lldb", "ms-vscode.cpptools" },markdownEnumDescriptions = { "First try to use [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb), if it's not installed try to use [MS C++ tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools).", "Use [CodeLLDB](https://marketplace.visualstudio.com/items?itemName=vadimcn.vscode-lldb)", "Use [MS C++ tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)" },type = "string"},["rust-analyzer.debug.engineSettings"] = {default = vim.empty_dict(),markdownDescription = 'Optional settings passed to the debug engine. Example: `{ "lldb": { "terminal":"external"} }`',type = "object"},["rust-analyzer.debug.openDebugPane"] = {default = false,markdownDescription = "Whether to open up the `Debug Panel` on debugging start.",type = "boolean"},["rust-analyzer.debug.sourceFileMap"] = {const = "auto",default = {["/rustc/<id>"] = "${env:USERPROFILE}/.rustup/toolchains/<toolchain-id>/lib/rustlib/src/rust"},description = "Optional source file mappings passed to the debug engine.",type = { "object", "string" }},["rust-analyzer.diagnostics.disabled"] = {default = {},items = {type = "string"},markdownDescription = "List of rust-analyzer diagnostics to disable.",type = "array",uniqueItems = true},["rust-analyzer.diagnostics.enable"] = {default = true,markdownDescription = "Whether to show native rust-analyzer diagnostics.",type = "boolean"},["rust-analyzer.diagnostics.enableExperimental"] = {default = true,markdownDescription = "Whether to show experimental rust-analyzer diagnostics that might\nhave more false positives than usual.",type = "boolean"},["rust-analyzer.diagnostics.remapPrefix"] = {default = vim.empty_dict(),markdownDescription = "Map of prefixes to be substituted when parsing diagnostic file paths.\nThis should be the reverse mapping of what is passed to `rustc` as `--remap-path-prefix`.",type = "object"},["rust-analyzer.diagnostics.warningsAsHint"] = {default = {},items = {type = "string"},markdownDescription = "List of warnings that should be displayed with hint severity.\n\nThe warnings will be indicated by faded text or three dots in code\nand will not show up in the `Problems Panel`.",type = "array"},["rust-analyzer.diagnostics.warningsAsInfo"] = {default = {},items = {type = "string"},markdownDescription = "List of warnings that should be displayed with info severity.\n\nThe warnings will be indicated by a blue squiggly underline in code\nand a blue icon in the `Problems Panel`.",type = "array"},["rust-analyzer.experimental.procAttrMacros"] = {default = true,markdownDescription = "Expand attribute macros.",type = "boolean"},["rust-analyzer.files.excludeDirs"] = {default = {},items = {type = "string"},markdownDescription = "These directories will be ignored by rust-analyzer. They are\nrelative to the workspace root, and globs are not supported. You may\nalso need to add the folders to Code's `files.watcherExclude`.",type = "array"},["rust-analyzer.files.watcher"] = {default = "client",markdownDescription = "Controls file watching implementation.",type = "string"},["rust-analyzer.highlightRelated.breakPoints"] = {default = true,markdownDescription = "Enables highlighting of related references while hovering your mouse `break`, `loop`, `while`, or `for` keywords.",type = "boolean"},["rust-analyzer.highlightRelated.exitPoints"] = {default = true,markdownDescription = "Enables highlighting of all exit points while hovering your mouse above any `return`, `?`, or return type arrow (`->`).",type = "boolean"},["rust-analyzer.highlightRelated.references"] = {default = true,markdownDescription = "Enables highlighting of related references while hovering your mouse above any identifier.",type = "boolean"},["rust-analyzer.highlightRelated.yieldPoints"] = {default = true,markdownDescription = "Enables highlighting of all break points for a loop or block context while hovering your mouse above any `async` or `await` keywords.",type = "boolean"},["rust-analyzer.highlighting.strings"] = {default = true,markdownDescription = "Use semantic tokens for strings.\n\nIn some editors (e.g. vscode) semantic tokens override other highlighting grammars.\nBy disabling semantic tokens for strings, other grammars can be used to highlight\ntheir contents.",type = "boolean"},["rust-analyzer.hover.documentation"] = {default = true,markdownDescription = "Whether to show documentation on hover.",type = "boolean"},["rust-analyzer.hover.linksInHover"] = {default = true,markdownDescription = "Use markdown syntax for links in hover.",type = "boolean"},["rust-analyzer.hoverActions.debug"] = {default = true,markdownDescription = "Whether to show `Debug` action. Only applies when\n`#rust-analyzer.hoverActions.enable#` is set.",type = "boolean"},["rust-analyzer.hoverActions.enable"] = {default = true,markdownDescription = "Whether to show HoverActions in Rust files.",type = "boolean"},["rust-analyzer.hoverActions.gotoTypeDef"] = {default = true,markdownDescription = "Whether to show `Go to Type Definition` action. Only applies when\n`#rust-analyzer.hoverActions.enable#` is set.",type = "boolean"},["rust-analyzer.hoverActions.implementations"] = {default = true,markdownDescription = "Whether to show `Implementations` action. Only applies when\n`#rust-analyzer.hoverActions.enable#` is set.",type = "boolean"},["rust-analyzer.hoverActions.references"] = {default = false,markdownDescription = "Whether to show `References` action. Only applies when\n`#rust-analyzer.hoverActions.enable#` is set.",type = "boolean"},["rust-analyzer.hoverActions.run"] = {default = true,markdownDescription = "Whether to show `Run` action. Only applies when\n`#rust-analyzer.hoverActions.enable#` is set.",type = "boolean"},["rust-analyzer.inlayHints.chainingHints"] = {default = true,markdownDescription = "Whether to show inlay type hints for method chains.",type = "boolean"},["rust-analyzer.inlayHints.enable"] = {default = true,description = "Whether to show inlay hints.",type = "boolean"},["rust-analyzer.inlayHints.hideNamedConstructorHints"] = {default = false,markdownDescription = "Whether to hide inlay hints for constructors.",type = "boolean"},["rust-analyzer.inlayHints.maxLength"] = {default = 25,markdownDescription = "Maximum length for inlay hints. Set to null to have an unlimited length.",minimum = 0,type = { "null", "integer" }},["rust-analyzer.inlayHints.parameterHints"] = {default = true,markdownDescription = "Whether to show function parameter name inlay hints at the call\nsite.",type = "boolean"},["rust-analyzer.inlayHints.smallerHints"] = {default = true,description = "Whether inlay hints font size should be smaller than editor's font size.",type = "boolean"},["rust-analyzer.inlayHints.typeHints"] = {default = true,markdownDescription = "Whether to show inlay type hints for variables.",type = "boolean"},["rust-analyzer.joinLines.joinAssignments"] = {default = true,markdownDescription = "Join lines merges consecutive declaration and initialization of an assignment.",type = "boolean"},["rust-analyzer.joinLines.joinElseIf"] = {default = true,markdownDescription = "Join lines inserts else between consecutive ifs.",type = "boolean"},["rust-analyzer.joinLines.removeTrailingComma"] = {default = true,markdownDescription = "Join lines removes trailing commas.",type = "boolean"},["rust-analyzer.joinLines.unwrapTrivialBlock"] = {default = true,markdownDescription = "Join lines unwraps trivial blocks.",type = "boolean"},["rust-analyzer.lens.debug"] = {default = true,markdownDescription = "Whether to show `Debug` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.enable"] = {default = true,markdownDescription = "Whether to show CodeLens in Rust files.",type = "boolean"},["rust-analyzer.lens.enumVariantReferences"] = {default = false,markdownDescription = "Whether to show `References` lens for Enum Variants.\nOnly applies when `#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.forceCustomCommands"] = {default = true,markdownDescription = "Internal config: use custom client-side commands even when the\nclient doesn't set the corresponding capability.",type = "boolean"},["rust-analyzer.lens.implementations"] = {default = true,markdownDescription = "Whether to show `Implementations` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.methodReferences"] = {default = false,markdownDescription = "Whether to show `Method References` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.references"] = {default = false,markdownDescription = "Whether to show `References` lens for Struct, Enum, Union and Trait.\nOnly applies when `#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.lens.run"] = {default = true,markdownDescription = "Whether to show `Run` lens. Only applies when\n`#rust-analyzer.lens.enable#` is set.",type = "boolean"},["rust-analyzer.linkedProjects"] = {default = {},items = {type = { "string", "object" }},markdownDescription = "Disable project auto-discovery in favor of explicitly specified set\nof projects.\n\nElements must be paths pointing to `Cargo.toml`,\n`rust-project.json`, or JSON objects in `rust-project.json` format.",type = "array"},["rust-analyzer.lruCapacity"] = {default = vim.NIL,markdownDescription = "Number of syntax trees rust-analyzer keeps in memory. Defaults to 128.",minimum = 0,type = { "null", "integer" }},["rust-analyzer.notifications.cargoTomlNotFound"] = {default = true,markdownDescription = "Whether to show `can't find Cargo.toml` error message.",type = "boolean"},["rust-analyzer.primeCaches.numThreads"] = {default = 0,markdownDescription = "How many worker threads to to handle priming caches. The default `0` means to pick automatically.",maximum = 255,minimum = 0,type = "number"},["rust-analyzer.procMacro.enable"] = {default = true,markdownDescription = "Enable support for procedural macros, implies `#rust-analyzer.cargo.runBuildScripts#`.",type = "boolean"},["rust-analyzer.procMacro.ignored"] = {default = vim.empty_dict(),markdownDescription = "These proc-macros will be ignored when trying to expand them.\n\nThis config takes a map of crate names with the exported proc-macro names to ignore as values.",type = "object"},["rust-analyzer.procMacro.server"] = {default = vim.NIL,markdownDescription = "Internal config, path to proc-macro server executable (typically,\nthis is rust-analyzer itself, but we override this in tests).",type = { "null", "string" }},["rust-analyzer.runnableEnv"] = {anyOf = { {type = "null"}, {items = {properties = {env = {description = 'Variables in form of { "key": "value"}',type = "object"},mask = {description = "Runnable name mask",type = "string"}},type = "object"},type = "array"}, {description = 'Variables in form of { "key": "value"}',type = "object"} },default = vim.NIL,markdownDescription = "Environment variables passed to the runnable launched using `Test` or `Debug` lens or `rust-analyzer.run` command."},["rust-analyzer.runnables.cargoExtraArgs"] = {default = {},items = {type = "string"},markdownDescription = "Additional arguments to be passed to cargo for runnables such as\ntests or binaries. For example, it may be `--release`.",type = "array"},["rust-analyzer.runnables.overrideCargo"] = {default = vim.NIL,markdownDescription = "Command to be executed instead of 'cargo' for runnables.",type = { "null", "string" }},["rust-analyzer.rustcSource"] = {default = vim.NIL,markdownDescription = 'Path to the Cargo.toml of the rust compiler workspace, for usage in rustc_private\nprojects, or "discover" to try to automatically find it if the `rustc-dev` component\nis installed.\n\nAny project which uses rust-analyzer with the rustcPrivate\ncrates must set `[package.metadata.rust-analyzer] rustc_private=true` to use it.\n\nThis option does not take effect until rust-analyzer is restarted.',type = { "null", "string" }},["rust-analyzer.rustfmt.enableRangeFormatting"] = {default = false,markdownDescription = "Enables the use of rustfmt's unstable range formatting command for the\n`textDocument/rangeFormatting` request. The rustfmt option is unstable and only\navailable on a nightly build.",type = "boolean"},["rust-analyzer.rustfmt.extraArgs"] = {default = {},items = {type = "string"},markdownDescription = "Additional arguments to `rustfmt`.",type = "array"},["rust-analyzer.rustfmt.overrideCommand"] = {default = vim.NIL,items = {type = "string"},markdownDescription = "Advanced option, fully override the command rust-analyzer uses for\nformatting.",type = { "null", "array" }},["rust-analyzer.server.extraEnv"] = {default = vim.NIL,markdownDescription = "Extra environment variables that will be passed to the rust-analyzer executable. Useful for passing e.g. `RA_LOG` for debugging.",type = { "null", "object" }},["rust-analyzer.server.path"] = {default = vim.NIL,markdownDescription = "Path to rust-analyzer executable (points to bundled binary by default). If this is set, then `#rust-analyzer.updates.channel#` setting is not used",scope = "machine-overridable",type = { "null", "string" }},["rust-analyzer.trace.extension"] = {default = false,description = "Enable logging of VS Code extensions itself.",type = "boolean"},["rust-analyzer.trace.server"] = {default = "off",description = "Trace requests to the rust-analyzer (this is usually overly verbose and not recommended for regular users).",enum = { "off", "messages", "verbose" },enumDescriptions = { "No traces", "Error only", "Full log" },scope = "window",type = "string"},["rust-analyzer.workspace.symbol.search.kind"] = {default = "only_types",enum = { "only_types", "all_symbols" },enumDescriptions = { "Search for types only", "Search for all symbols kinds" },markdownDescription = "Workspace symbol search kind.",type = "string"},["rust-analyzer.workspace.symbol.search.scope"] = {default = "workspace",enum = { "workspace", "workspace_and_dependencies" },enumDescriptions = { "Search in current workspace only", "Search in current workspace and dependencies" },markdownDescription = "Workspace symbol search scope.",type = "string"}},title = "Rust Analyzer",type = "object"}