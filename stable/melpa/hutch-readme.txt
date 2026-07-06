Hutch provides AI-powered code review integrated with magit.
It reviews staged changes, unpushed commits, and branch diffs
using an LLM (via gptel) with tool-calling for codebase context.

Configure a gptel backend as `hutch-backend`, then invoke the review
via `d R` in `magit-diff` or `M-x hutch-magit-review`.

Example backends:

  ;; Anthropic
  (setq hutch-backend
        (gptel-make-anthropic "Claude"
          :key (getenv "ANTHROPIC_API_KEY")
          :models '(claude-sonnet-4-6)))

  ;; OpenAI
  (setq hutch-backend
        (gptel-make-openai "OpenAI"
          :key (getenv "OPENAI_API_KEY")
          :models '(gpt-5.5)))
