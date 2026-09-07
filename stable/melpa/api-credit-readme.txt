Display AI API account balances (OpenRouter, DeepSeek, Moonshot)
in the mode line.
Polls endpoints asynchronously without blocking, and caches results
with customizable intervals.
Provides visual indicators (Unicode block bars, color-coded
thresholds) for low balance warnings.

Supports: OpenRouter (USD), DeepSeek (CNY), Moonshot (CNY)

Setup: add entries to ~/.authinfo or ~/.authinfo.gpg:

  machine openrouter.ai password sk-or-v1-...
  machine deepseek.com password sk-...
  machine moonshot.cn password sk-...

Then enable `api-credit-mode' globally.

Features:
- Automatic polling with configurable interval
- Cycle through providers or jump to specific one
- Error resilience (shows stale data indicator on fetch failure)
- No browser required, pure Emacs Lisp
