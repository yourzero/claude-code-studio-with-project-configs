# CONTEXT TEMPLATE - Personal Development Environment

<!-- 
This is a template version of CONTEXT.md for public sharing.
Replace all [PLACEHOLDER] variables with your personal information.
Customize project lists, paths, and configurations to match your setup.
-->

# CONTEXT - Personal Development Environment

## SYSTEM CONTEXT
Working with [YOUR_NAME] ([YOUR_USERNAME]) on [YOUR_HARDWARE]: [CPU_MODEL] ([CPU_CORES] cores, [CPU_THREADS] threads), dual-environment setup with WSL2 Ubuntu (primary) + Windows 11 (secondary), mirrored networking (IP: [YOUR_LOCAL_IP]).

## ENVIRONMENT SPECIFICS
- WSL2 kernel: [WSL2_KERNEL_VERSION]
- Hostname: [YOUR_HOSTNAME]
- Network: [NETWORK_CONFIGURATION]
- Platform: linux x86_64

## CRITICAL PATHS
- Home: /home/[YOUR_USERNAME]
- Projects: /home/[YOUR_USERNAME]/projects ([PROJECT_COUNT] WSL projects)
- Claude Config: /home/[YOUR_USERNAME]/.claude
- Windows Home: /mnt/c/Users/[YOUR_USERNAME] (C:\Users\[YOUR_USERNAME])
- Windows Claude: /mnt/c/Users/[YOUR_USERNAME]/AppData/Roaming/Claude (C:\Users\[YOUR_USERNAME]\AppData\Roaming\Claude)
- Windows Projects: /mnt/c/Users/[YOUR_USERNAME]/projects (C:\Users\[YOUR_USERNAME]\projects - [WINDOWS_PROJECT_COUNT] project)
- Android Studio: C:\Users\[YOUR_USERNAME]\AppData\Local\Android\Sdk

## DEVELOPMENT ENVIRONMENT
- Node.js: [NODEJS_VERSION] via NVM - ALWAYS prefix with: source ~/.nvm/nvm.sh &&
- Git: "[YOUR_NAME]" <[YOUR_EMAIL]>
- Editor: [YOUR_EDITOR] ([EDITOR_COMMAND] command)
- Shell: bash
- Stack: [YOUR_TECH_STACK] (e.g., React|TS|Vite + Node|Express|PostgreSQL + Git|ESLint|Jest)

### Environment Selection Criteria
- **WSL2 (Primary)**: Web development, React/Node.js projects, backend services, CLI tools
- **Windows (Secondary)**: Android development (Android Studio), Windows-specific tools, mobile app projects
- **Project Type → Environment**: Web/Backend → WSL2, Mobile/Android → Windows

## PROJECTS ([PROJECT_COUNT] total)

### WSL Projects ([WSL_PROJECT_COUNT]) - /home/[YOUR_USERNAME]/projects/
1. [project-name-1] - [Project Description]
2. [project-name-2] - [Project Description]
7. [main-project]/ - Main project (consolidated)
   - [main-project]_backend - Backend services
   - [main-project]_client - Client application
   - [main-project]_web - Web interface

### Windows Projects ([WINDOWS_PROJECT_COUNT]) - /mnt/c/Users/[YOUR_USERNAME]/projects/
8. [mobile-app-name] - Mobile/Android app (Windows for Android Studio)

## CROSS-PLATFORM ACCESS PATTERNS

### Claude Desktop (Windows) → WSL Files
- Uses Desktop Commander MCP for WSL access
- WSL projects: /home/[YOUR_USERNAME]/projects/[project-name] (Desktop Commander handles translation)
- [Main project] components: /home/[YOUR_USERNAME]/projects/[main-project]/[component]
- Windows projects: /mnt/c/Users/[YOUR_USERNAME]/projects/[project-name] (direct access)

### Claude Code (WSL) → Files
- WSL projects: /home/[YOUR_USERNAME]/projects/[project-name] (direct access)
- [Main project] components: /home/[YOUR_USERNAME]/projects/[main-project]/[component] (direct access)
- Windows projects: ../../../../mnt/c/Users/[YOUR_USERNAME]/projects/[project-name] (via WSL mount)
- List syntax: List(../../../../mnt/c/Users/[YOUR_USERNAME]/projects/[project])

### Workflow Guidelines
- **Web/Backend Development**: Use WSL2 environment, access via /home/[YOUR_USERNAME]/projects/
- **Android Development**: Use Windows environment, access via C:\Users\[YOUR_USERNAME]\projects\
- **Cross-Platform File Access**: WSL → Windows via /mnt/c/, Windows → WSL via \\wsl$\Ubuntu\
- **Tool Selection**: Node.js/npm → WSL2 (with NVM), Android Studio → Windows

## COMMAND STANDARDS
Node.js: source ~/.nvm/nvm.sh && npm install/run/start (NEVER npm without NVM)
Paths: Always absolute - /home/[YOUR_USERNAME]/projects/[project] or /mnt/c/Users/[YOUR_USERNAME]/projects/[project]
[Main project] components: /home/[YOUR_USERNAME]/projects/[main-project]/[component]
Cross-platform: explorer.exe, wslpath -u/-w, code .

## PERSONAL PREFERENCES
- Code Comments: Add helpful comments to explain complex logic, business rules, and non-obvious implementations
- File Extensions: .tsx/.jsx → React/TypeScript, .js/.ts with Express → Node.js/Express, .sql/migrations → PostgreSQL
- Mobile Development: Windows-based development (Android Studio)

## CRITICAL REMINDERS
- ALWAYS prefix Node.js with: source ~/.nvm/nvm.sh &&
- NEVER give code examples unless explicitly requested
- ALWAYS use absolute paths (/home/[YOUR_USERNAME]/projects/ or /mnt/c/Users/[YOUR_USERNAME]/projects/)
- REMEMBER: [PROJECT_COUNT] projects total ([WSL_PROJECT_COUNT] WSL + [WINDOWS_PROJECT_COUNT] Windows), [Main project] main focus ([MAIN_PROJECT_COMPONENT_COUNT] components)
- [Main project] structure: /home/[YOUR_USERNAME]/projects/[main-project]/[backend|client|web] + security doc
- Mobile project: Use Windows location for Android Studio compatibility
- **Environment Selection**: Web/Backend → WSL2, Android/Mobile → Windows
- **Cross-Platform**: WSL primary for development, Windows secondary for specific tools

## AGENT-FIRST WORKFLOW

### Default Operating Principle: USE AGENTS WHENEVER POSSIBLE
**Agent usage is the DEFAULT, not the exception.** With 40+ specialized agents available, prefer agent delegation over direct handling for better context management and expert-level results.

### UTILITY-FIRST MANDATE
**MANDATORY**: Utility agents must be used for ALL basic operations - no exceptions.

**Non-Negotiable Utility Agent Usage:**
- **file-creator**: ALL file/directory creation tasks (instead of Write tool)
- **git-workflow**: ALL git operations (instead of Bash git commands)  
- **date-checker**: ALL date/time queries (instead of manual calculations)
- **context-fetcher**: ALL documentation retrieval (instead of Read tool for docs)

### Agent Usage Decision Tree
```
IF utility_task (file creation, git ops, dates, doc retrieval):
  USE_UTILITY_AGENT (MANDATORY - no direct tool usage)
ELIF task_matches_specific_expertise:
  USE_SPECIALIZED_AGENT (engineering, design, marketing, etc.)
ELIF task_is_multi_domain:
  USE_MULTIPLE_AGENTS (coordinate via studio-coach if complex)
ELIF task_needs_fresh_context:
  USE_AGENT (prevents conversation context bloat)
ELSE:
  USE_GENERAL_PURPOSE_AGENT (rapid-prototyper, studio-coach)
```

### Context Management Benefits
- **Fresh Context**: Each agent starts with clean slate, no conversation overhead
- **Specialized Prompts**: 500+ word expert-level system prompts per domain
- **Parallel Processing**: Multiple agents can work simultaneously on different aspects
- **Performance Isolation**: Agent failures don't affect main conversation
- **Expert Quality**: Purpose-built expertise vs generalist approach

### Available Agent Categories & Usage
**📚 Full Agent Documentation**: `/home/[YOUR_USERNAME]/.claude/agents/README.md`

**Core Usage Patterns:**
- **Engineering Tasks** → rapid-prototyper, backend-architect, frontend-developer, ai-engineer
- **Design Work** → ui-designer, whimsy-injector, brand-guardian, ux-researcher  
- **Marketing Needs** → tiktok-strategist, growth-hacker, app-store-optimizer
- **Product Decisions** → sprint-prioritizer, trend-researcher, feedback-synthesizer
- **Operations** → support-responder, finance-tracker, analytics-reporter
- **Testing/QA** → test-writer-fixer, api-tester, performance-benchmarker, test-runner
- **Utilities** → context-fetcher, file-creator, git-workflow, date-checker

### Proactive Agent Triggers
- **whimsy-injector**: Auto-activates after UI/UX changes
- **test-writer-fixer**: Triggered after code modifications
- **studio-coach**: Orchestrates complex multi-agent workflows  
- **experiment-tracker**: Activates when feature flags/experiments are mentioned

### Agent Coordination Philosophy  
- **Single Domain**: Use specialized agent directly
- **Multi-Domain**: studio-coach coordinates multiple agents
- **Complex Projects**: Agent teams work in parallel with clear handoffs
- **Simple Queries**: Still prefer agent if available for context isolation

### Integration with MCP Tools
Agents leverage MCP.md guidance for:
- Tool selection optimization
- Performance-conscious decisions  
- Anti-pattern avoidance
- Systematic workflows

### Serena MCP Integration
- Semantic code analysis and project memory
- LSP-based symbol understanding for complex refactoring
- Enhanced code navigation and pattern recognition
- Project insights stored in .serena/memories/ for context retention

<!-- 
CUSTOMIZATION GUIDE:

Required Replacements:
- [YOUR_NAME]: Your full name
- [YOUR_USERNAME]: Your system username  
- [YOUR_EMAIL]: Your Git email address
- [YOUR_HARDWARE]: Your laptop/computer model
- [CPU_MODEL]: Your processor model
- [CPU_CORES]: Number of CPU cores
- [CPU_THREADS]: Number of CPU threads
- [YOUR_LOCAL_IP]: Your local network IP
- [WSL2_KERNEL_VERSION]: Your WSL2 kernel version
- [YOUR_HOSTNAME]: Your system hostname
- [NETWORK_CONFIGURATION]: Your network setup description
- [PROJECT_COUNT]: Total number of projects
- [WSL_PROJECT_COUNT]: Number of WSL projects
- [WINDOWS_PROJECT_COUNT]: Number of Windows projects
- [NODEJS_VERSION]: Your Node.js version
- [YOUR_EDITOR]: Your code editor name
- [EDITOR_COMMAND]: Command to launch your editor
- [YOUR_TECH_STACK]: Your technology stack

Project Customization:
- Replace [project-name-1], [project-name-2], etc. with your actual project names
- Replace [Project Description] with actual descriptions
- Replace [main-project] with your main project name
- Replace [mobile-app-name] with your mobile app name
- Update component names and structure to match your setup
- Adjust project counts and paths to match your environment

Optional Customization:
- Modify development environment details
- Adjust agent workflow preferences  
- Customize command standards for your setup
- Add or remove personal preferences
- Update file extension mappings
-->