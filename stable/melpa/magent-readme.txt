magent.el is an Emacs Lisp AI coding agent built on gptel.
It provides intelligent code assistance by integrating with LLMs
via gptel's multi-provider backend system.

Features:
- LLM integration via gptel (Anthropic, OpenAI, Ollama, Gemini, etc.)
- File operations (read, write, edit, grep, glob)
- Shell command execution
- Streaming responses
- Session management with conversation history
- Minibuffer interface for quick prompts
- Agent system with specialized agents and permission control

Agent System:
- Built-in agents: build (default), plan, explore, general, compaction, title, summary
- Permission-based tool access control per agent
- Custom agent support via .magent/agent/*.md files
- Agent selection per session

Configuration:
LLM provider, model, and API key are managed by gptel.
Magent-specific settings are in the `magent' customize group.

  M-x customize-group RET magent RET

Usage:
  M-x magent                - Send a prompt to the AI
  M-x magent-transient-menu - Open the command menu
  M-x magent-prompt-region  - Send the selected region to the AI
  M-x magent-ask-at-point   - Ask about the symbol at point
Commands such as diagnosis, session clearing, agent selection, logs, and
one-shot skills are available from `magent-transient-menu'.

Setup:
1. Configure gptel with your provider and API key:
   (setq gptel-backend (gptel-make-anthropic "Claude" :key 'gptel-api-key-from-auth-source))
   or set the ANTHROPIC_API_KEY / OPENAI_API_KEY environment variable.

2. Enable globally:
   (global-magent-mode 1)
