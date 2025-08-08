# 🏗️ Claude Code Studio

> Transform Claude Code into a complete AI-powered development studio with 40+ specialized agents, intelligent MCP integrations, and systematic development principles.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Claude Code Compatible](https://img.shields.io/badge/Claude%20Code-Compatible-blue.svg)](https://claude.ai/code)
[![Agents](https://img.shields.io/badge/Agents-40+-green.svg)](#agent-system)
[![MCP Servers](https://img.shields.io/badge/MCP%20Servers-12-orange.svg)](#mcp-integration)

## 🌟 Overview

**Claude Code Studio** is a comprehensive configuration system that transforms Claude Code from a simple AI coding assistant into a fully-featured development studio. By leveraging specialized agents, intelligent MCP server coordination, and systematic development principles, it provides enterprise-grade AI assistance for modern software development.

### Why Claude Code Studio?

- 🎯 **Agent-First Development**: 40+ specialized agents handle everything from file creation to deployment
- 🔧 **Intelligent Tool Coordination**: 12 MCP servers work together seamlessly
- 📋 **Systematic Approach**: Evidence-based development with clear principles and safety protocols  
- 🚀 **Production Ready**: Battle-tested configurations for real-world projects
- 🔄 **Extensible**: Easy to customize and extend for your specific needs

## ✨ Key Features

### 🤖 40+ Specialized Agents
- **Engineering**: Backend architects, frontend developers, mobile builders, AI engineers
- **Design**: UI designers, UX researchers, brand guardians, visual storytellers
- **Marketing**: Growth hackers, social media strategists, content creators
- **Product**: Sprint prioritizers, feedback synthesizers, trend researchers
- **Operations**: Analytics reporters, finance trackers, support responders

### 🛠️ 12 MCP Server Integrations
- **Code Analysis**: Serena (semantic analysis), IDE integration, Sequential thinking
- **Documentation**: Context7 (library docs), Readwise (knowledge management)
- **Testing**: Playwright, Puppeteer (browser automation)
- **Database**: Supabase integration with intelligent query optimization
- **Deployment**: Vercel integration with automated workflows
- **Monitoring**: Sentry error tracking with AI-powered analysis

### 🎯 Core Principles
- **Evidence > Assumptions**: All decisions backed by data and testing
- **Code > Documentation**: Working software over comprehensive documentation
- **Efficiency > Verbosity**: Direct answers, minimal overhead
- **Agent-First**: Specialized expertise over general-purpose tools

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/claude-code-studio.git ~/.claude
cd ~/.claude
```

### 2. Configure MCP Servers
Add these servers to your existing `.claude.json` or MCP configuration:

**Critical servers (essential):**
```json
{
  "mcpServers": {
    "git": { "type": "stdio", "command": "uvx", "args": ["mcp-server-git"] },
    "serena": { "type": "stdio", "command": "uvx", "args": ["--from", "git+https://github.com/oraios/serena", "serena", "start-mcp-server", "--context", "ide-assistant"] },
    "sequential-thinking": { "type": "stdio", "command": "npx", "args": ["@modelcontextprotocol/server-sequential-thinking"] }
  }
}
```

**High priority servers (stack-dependent):**
```json
{
  "supabase": { "type": "stdio", "command": "npx", "args": ["@supabase/mcp-server-supabase@latest"], "env": { "SUPABASE_ACCESS_TOKEN": "[YOUR_TOKEN]" } },
  "sentry": { "type": "http", "url": "https://mcp.sentry.dev/mcp" },
  "context7": { "type": "stdio", "command": "npx", "args": ["@upstash/context7-mcp"] },
  "playwright": { "type": "stdio", "command": "npx", "args": ["@playwright/mcp@latest"] }
}
```

> 💡 Most servers auto-install via `npx` on first use. See [MCP Integration](#-mcp-integration) section for complete setup.

### 3. Basic Setup
```bash
# Verify installation
ls -la ~/.claude

# Customize your environment (optional)
cp CONTEXT_TEMPLATE.md CONTEXT.md
# Edit CONTEXT.md with your personal details
```

### 3. First Studio Command
Try an agent-powered workflow:
```
Create a new React component with TypeScript and tests for a user profile card
```

The studio will automatically:
- Use `file-creator` agent for file structure
- Apply React TypeScript templates
- Generate corresponding test files
- Follow naming conventions and best practices

## 🔧 Detailed Setup

### Core Configuration Files

| File | Purpose | Customization |
|------|---------|---------------|
| `CLAUDE.md` | Main entry point, references all other configs | Usually no changes needed |
| `CONTEXT.md` | Personal development environment details | **Customize for your setup** |
| `AGENTS.md` | 40+ agent definitions and workflows | Extend with custom agents |
| `MCP.md` | 12 MCP server configurations and coordination | Add your MCP servers |
| `PRINCIPLES.md` | Core development philosophy | Adapt to your principles |
| `RULES.md` | Operational safety and standards | Add team-specific rules |

### Template Customization

1. **Update CONTEXT_TEMPLATE.md → CONTEXT.md**:
```bash
cp CONTEXT_TEMPLATE.md CONTEXT.md
# Edit CONTEXT.md with your personal details:
# - Development environment (OS, tools, paths)
# - Project locations and structures  
# - Personal preferences and workflows
```

2. **Customize Agent Configurations**:
```bash
# Add custom agents to AGENTS.md
# Modify existing agent prompts
# Set up agent auto-activation rules
```

3. **Configure MCP Servers**:
```bash
# Update MCP.md with your server configurations
# Add authentication credentials (use environment variables)
# Set up server-specific optimization rules
```

## 🤖 Agent System

### Agent-First Philosophy
The studio operates on an **Agent-First** principle: specialized AI agents handle specific domains rather than using general-purpose approaches.

### Utility Agents (Mandatory Usage)
- **file-creator**: ALL file/directory creation tasks
- **git-workflow**: ALL git operations with safety protocols
- **date-checker**: ALL date/time calculations and scheduling
- **context-fetcher**: ALL documentation retrieval and research
- **test-runner**: ALL test execution and analysis

### Specialized Agent Categories

#### 🔧 Engineering Department (7 agents)
```
rapid-prototyper     → Build MVPs and prototypes
backend-architect    → Design scalable APIs and systems
frontend-developer   → Create blazing-fast UIs
mobile-app-builder   → Native iOS/Android development
ai-engineer          → Integrate AI/ML features
devops-automator     → Deploy and scale systems
test-writer-fixer    → Write tests that catch real bugs
```

#### 🎨 Design Department (5 agents)
```
ui-designer          → Design buildable interfaces
ux-researcher        → Turn insights into improvements
whimsy-injector      → Add delightful interactions
brand-guardian       → Maintain visual consistency
visual-storyteller   → Create compelling visuals
```

#### 📈 Marketing Department (7 agents)
```
growth-hacker        → Find viral growth loops
tiktok-strategist    → Create shareable content
app-store-optimizer  → Dominate search results
content-creator      → Generate cross-platform content
instagram-curator    → Master visual content
reddit-community-builder → Engage authentically
twitter-engager      → Ride trends to engagement
```

### Agent Coordination
- **Single Domain**: Direct agent usage
- **Multi-Domain**: `studio-coach` orchestrates multiple agents
- **Complex Projects**: Parallel agent teams with clear handoffs

## 🔗 MCP Integration

### Intelligent Tool Coordination
The studio includes decision trees for optimal tool selection based on task complexity and context.

### Core MCP Servers

#### Code Analysis Stack
- **Serena**: Semantic code analysis and project memory
- **Sequential Thinking**: Structured problem-solving (3 complexity levels)
- **IDE**: Development environment integration

#### Documentation & Knowledge
- **Context7**: Library documentation and API references
- **Readwise**: Personal knowledge management and research

#### Testing & Automation
- **Playwright**: Modern browser automation
- **Puppeteer**: Legacy browser support
- **Integration**: Automated testing workflows

#### Database & Backend
- **Supabase**: Database operations with intelligent query optimization
- **Performance monitoring and optimization

#### Deployment & Monitoring
- **Vercel**: Deployment automation and monitoring
- **Sentry**: Error tracking with AI-powered analysis

### Performance Optimization
- **Parallel Execution**: Independent operations run simultaneously
- **Context Reuse**: Smart caching of analysis results
- **Complexity-Based Routing**: Match tool complexity to task complexity
- **Stop Conditions**: Avoid over-engineering simple queries

## 📁 Project Structure

```
~/.claude/
├── README.md                 # This documentation
├── CLAUDE.md                 # Main configuration entry point
├── CONTEXT.md               # Personal environment settings
├── CONTEXT_TEMPLATE.md      # Template for personal customization
├── AGENTS.md                # 40+ specialized agents
├── MCP.md                   # 12 MCP server configurations  
├── PRINCIPLES.md            # Core development philosophy
├── RULES.md                 # Operational safety protocols
├── agents/
│   ├── README.md           # Detailed agent documentation
│   ├── engineering/        # Backend, frontend, mobile, AI, etc.
│   ├── design/             # UI, UX, brand, visual design
│   ├── marketing/          # Growth, social, content creation
│   ├── product/            # Research, prioritization, feedback
│   ├── operations/         # Analytics, finance, support
│   └── testing/            # API, performance, workflow testing
└── templates/
    ├── components/         # React, Vue, Angular templates
    ├── apis/               # REST, GraphQL endpoint templates
    └── documentation/      # README, API docs, guides
```

## ⚙️ Customization Guide

### 1. Personal Environment Setup

**Edit CONTEXT.md** with your specific details:
```markdown
# Development Environment
- OS: Your operating system
- Node.js: Version and package manager
- Editor: VS Code, Cursor, etc.
- Projects: Your project locations
- Preferences: Coding style, frameworks
```

### 2. Agent Customization

**Add Custom Agents** to AGENTS.md:
```markdown
#### your-custom-agent
- **Specialization**: Your specific domain expertise
- **Best for**: Specific use cases
- **Auto-activates**: Trigger conditions
```

### 3. MCP Server Configuration

**Update MCP.md** with your servers:
```yaml
your_custom_server:
  description: "Your server description"
  capabilities: ["capability1", "capability2"]
  usage_patterns: ["when to use", "best practices"]
```

### 4. Principle Alignment

**Modify PRINCIPLES.md** to match your development philosophy:
- Code quality standards
- Testing approaches  
- Documentation requirements
- Team collaboration rules

## 💡 Usage Examples

### Creating a New Feature
```
I need to build a user authentication system with React frontend and Node.js backend
```

**Studio Response:**
1. `backend-architect` designs the API structure
2. `frontend-developer` creates React components
3. `file-creator` sets up the directory structure
4. `test-writer-fixer` generates comprehensive tests
5. `git-workflow` manages commits and branches

### Debugging Production Issues
```
Our app is experiencing high error rates in production
```

**Studio Response:**
1. `analytics-reporter` analyzes error metrics
2. `sentry` MCP retrieves detailed error traces
3. `sequential-thinking` performs root cause analysis
4. `devops-automator` suggests deployment fixes
5. `support-responder` drafts user communications

### Optimizing Performance
```
Page load times are too slow, need optimization
```

**Studio Response:**
1. `performance-benchmarker` identifies bottlenecks
2. `frontend-developer` optimizes critical rendering path
3. `backend-architect` reviews API performance
4. `test-runner` validates improvements
5. `experiment-tracker` sets up A/B testing

## 🤝 Contributing

We welcome contributions! Here's how to get involved:

### 1. Agent Development
- Create specialized agents for new domains
- Enhance existing agent capabilities
- Improve agent coordination workflows

### 2. MCP Integration
- Add support for new MCP servers
- Optimize existing server configurations
- Create intelligent decision trees

### 3. Documentation
- Improve setup guides and tutorials
- Add usage examples and best practices
- Translate documentation

### 4. Templates
- Create templates for new frameworks
- Enhance existing component templates
- Add industry-specific templates

### Contribution Process
1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-agent`
3. Make your changes and test thoroughly
4. Submit a pull request with detailed description

### Code Style
- Follow existing patterns and conventions
- Include comprehensive documentation
- Add usage examples for new features
- Test all configurations before submitting

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### What This Means
- ✅ **Use freely** in personal and commercial projects
- ✅ **Modify** and adapt to your needs
- ✅ **Distribute** and share with others
- ✅ **Include** in proprietary software
- ℹ️ **Attribution** appreciated but not required

## 🙏 Acknowledgments

### Special Thanks
- **Anthropic** for creating Claude Code and enabling this ecosystem
- **Claude Code Community** for inspiration and feedback
- **MCP Server Developers** for building the tools that power the integrations
- **Open Source Contributors** who make projects like this possible

### Built With
- [Claude Code](https://claude.ai/code) - AI-powered development environment
- [Model Context Protocol](https://modelcontextprotocol.io/) - Standardized AI-tool integration
- [Various MCP Servers](https://github.com/modelcontextprotocol/servers) - Specialized tool integrations

### Inspiration
This project was inspired by the vision of AI-augmented development where:
- **Humans focus on creativity and strategy**
- **AI handles repetitive and systematic tasks**  
- **Tools work together intelligently**
- **Quality and safety are never compromised**

---

<div align="center">
  
**Transform your development workflow today!**

[Get Started](#quick-start) • [View Agents](#agent-system) • [MCP Integration](#mcp-integration) • [Contribute](#contributing)

</div>