Discover, run, and cancel `mise' tasks from inside Emacs.  Complements
the env-injection packages (`mise.el', `gmise', `emacs-misery') by
covering the task-runner side that none of them touch.

Quick start:

  M-x mise-tasks-run          ; pick a task, run it in `*mise: <project>*'
  M-x mise-tasks-run-last     ; re-run the last task for this project
  M-x mise-tasks-list         ; tabulated browser of tasks
  M-x mise-tasks-kill         ; SIGINT the running task (repeat for SIGKILL)

The compilation buffer uses `compilation-mode', so the standard
\\[kill-compilation] (C-c C-k) and \\[recompile] (g) work as usual.

Discovery runs `mise tasks --json' once at the project root.  When
the root config sets `experimental_monorepo_root = true', `--all' is
added and `MISE_EXPERIMENTAL=1' is set in the subprocess environment
so mise's monorepo task discovery engages even from GUI Emacs sessions
that don't inherit the user's shell environment.
