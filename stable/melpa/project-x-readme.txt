
project-x provides some convenience features for project.el:
- Recognize any directory with a `.project' file as a project.
- Save and restore project files and window configurations across sessions.
- (Optional) `project-x-tabs-mode', with unique tab
  names that stay in sync with renamed sessions.

COMMANDS:

project-x-window-state-save    : Save the window configuration to the project's active layout
project-x-window-state-save-as : Save the window configuration as a new (or existing) named layout
project-x-switch-layout        : Switch the current project to a different saved layout
project-x-delete-layout        : Delete a saved layout from the current project
project-x-window-state-load    : Load a previously saved project window configuration
project-x-add-local-project    : Conveniently add project + root marker to any dir
project-x-rename-session       : Rename the current project's display label and tab name

TAB COMMANDS (project-x-tabs-mode, requires Emacs 28+):
project-x-detach-buffer-to-tab  : Move the current buffer to its project's tab
project-x-change-tab-root-dir   : Manually attach the current tab to a project

CUSTOMIZATION:
`project-x-window-list-file': File to store project window configurations
`project-x-local-identifier': String matched against file names to decide if a
directory is a project
`project-x-save-interval': Interval in seconds between autosaves of the
current project.

TAB CUSTOMIZATION:
`project-x-tab-name-format'           : Format for disambiguating conflicting tab names
`project-x-default-tab-name'          : Name of the initial/fallback tab
`project-x-tab-bury-buffer'           : Bury instead of kill when buffer is in another tab
`project-x-tab-kill-buffers-on-close' : Kill project buffers when tab is closed
`project-x-tab-find-file-integration' : Auto-switch to a file's project tab on find-file
`project-x-tab-override-commands'     : Commands always run in the tab's root directory
