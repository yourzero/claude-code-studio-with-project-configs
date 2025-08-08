# AGENTS - Comprehensive Agent System Documentation

**Primary Directive**: "Agents First, Tools Second - Expert Context Over General Purpose"

## AGENT-FIRST MANDATE

### Default Operating Principle: USE AGENTS WHENEVER POSSIBLE
**Agent usage is the DEFAULT, not the exception.** With 40+ specialized agents available, prefer agent delegation over direct handling for better context management and expert-level results.

### Core Philosophy
- **Agent-First Rule**: Always attempt agent delegation before direct tool usage
- **Fresh Context**: Each agent starts with clean slate, no conversation overhead
- **Specialized Prompts**: 500+ word expert-level system prompts per domain
- **Parallel Processing**: Multiple agents can work simultaneously on different aspects
- **Performance Isolation**: Agent failures don't affect main conversation
- **Expert Quality**: Purpose-built expertise vs generalist approach

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

## UTILITY AGENTS (MANDATORY USAGE)

These agents MUST be used for their designated domains - no exceptions.

### file-creator
**MANDATORY for**: ALL file/directory creation tasks (instead of Write tool)
- **Specialization**: Project structure, template application, batch file operations
- **Expertise**: Naming conventions, safety protocols, directory hierarchies
- **Core Responsibilities**: 
  - Directory structure creation with consistent hierarchies
  - Template application with appropriate headers and structure
  - Batch file operations for related components
  - Path validation and parent directory creation
- **Usage Examples**:
  - "Create a new React component with tests" → file-creator
  - "Set up a new feature directory structure" → file-creator
  - "Generate API endpoint files with templates" → file-creator

### git-workflow
**MANDATORY for**: ALL git operations (instead of Bash git commands)
- **Specialization**: Safe git operations with workflow automation
- **Expertise**: Commit message standards, branch management, merge conflict resolution
- **Core Responsibilities**:
  - Safe commit and push operations
  - Branch management and workflow automation
  - Conflict resolution and repository maintenance
  - Git history analysis and cleanup
- **Usage Examples**:
  - "Commit these changes with proper message" → git-workflow
  - "Create feature branch and switch to it" → git-workflow
  - "Resolve merge conflicts and complete merge" → git-workflow

### date-checker
**MANDATORY for**: ALL date/time queries (instead of manual calculations)
- **Specialization**: Accurate date/time context for timestamps and scheduling
- **Expertise**: Timezone handling, date arithmetic, scheduling logic
- **Core Responsibilities**:
  - Date/time calculations and comparisons
  - Timezone conversions and scheduling
  - Timestamp analysis and validation
  - Calendar operations and planning
- **Usage Examples**:
  - "When was this last deployed?" → date-checker
  - "Schedule meeting for next sprint" → date-checker
  - "Calculate time since last update" → date-checker

### context-fetcher
**MANDATORY for**: ALL documentation retrieval (instead of Read tool for docs)
- **Specialization**: Smart information retrieval without context bloat
- **Expertise**: Documentation analysis, technical reference lookup, knowledge synthesis
- **Core Responsibilities**:
  - Technical documentation retrieval and analysis
  - API reference and specification lookup
  - Knowledge base navigation and synthesis
  - Context-aware information filtering
- **Usage Examples**:
  - "Get documentation for this API" → context-fetcher
  - "Find best practices for React hooks" → context-fetcher
  - "Retrieve database schema documentation" → context-fetcher

### knowledge-fetcher
**MANDATORY for**: ALL external knowledge source searches (Readwise, Context7, web search)
- **Specialization**: External knowledge retrieval from multiple sources
- **Expertise**: Personal library search, technical documentation, web research, knowledge synthesis
- **Core Responsibilities**:
  - Personal knowledge library access (Readwise documents and highlights)
  - Technical documentation retrieval (Context7 library references)
  - Current information gathering (web search for recent developments)
  - Multi-source knowledge synthesis and presentation
- **Usage Examples**:
  - "Find videos about hooks in my Readwise library" → knowledge-fetcher
  - "Get latest React documentation from Context7" → knowledge-fetcher
  - "Search for recent AI development workflows" → knowledge-fetcher

### test-runner
**MANDATORY for**: ALL test execution tasks
- **Specialization**: Isolated test execution with structured failure analysis
- **Expertise**: Test framework integration, failure pattern analysis, coverage reporting
- **Core Responsibilities**:
  - Test suite execution and monitoring
  - Failure analysis and debugging
  - Coverage analysis and reporting
  - Test performance optimization
- **Usage Examples**:
  - "Run unit tests for this component" → test-runner
  - "Execute integration test suite" → test-runner
  - "Analyze test failures and suggest fixes" → test-runner

## SPECIALIZED AGENTS

### Engineering Department (7 agents)

#### rapid-prototyper
- **Specialization**: Build MVPs in days, not weeks
- **Best for**: New feature implementation, proof-of-concept development
- **Auto-activates**: When "create new app/feature" or "build prototype" is mentioned

#### backend-architect
- **Specialization**: Design scalable APIs and server systems
- **Best for**: API design, database schema, system architecture decisions
- **Auto-activates**: When backend/API architecture questions arise

#### frontend-developer
- **Specialization**: Build blazing-fast user interfaces
- **Best for**: React components, UI implementation, performance optimization
- **Auto-activates**: When frontend/UI development tasks are needed

#### mobile-app-builder
- **Specialization**: Create native iOS/Android experiences
- **Best for**: Mobile app development, platform-specific features
- **Auto-activates**: When mobile development tasks are mentioned

#### ai-engineer
- **Specialization**: Integrate AI/ML features that actually ship
- **Best for**: AI feature implementation, model integration, ML workflows
- **Auto-activates**: When AI/ML functionality is requested

#### devops-automator
- **Specialization**: Deploy continuously without breaking things
- **Best for**: CI/CD setup, deployment automation, infrastructure management
- **Auto-activates**: When deployment or infrastructure issues arise

#### test-writer-fixer
- **Specialization**: Write tests that catch real bugs
- **Best for**: Test creation, test debugging, test strategy
- **Auto-activates**: After implementing features, fixing bugs, or modifying code

### Design Department (5 agents)

#### ui-designer
- **Specialization**: Design interfaces developers can actually build
- **Best for**: UI component design, design system work, visual layouts
- **Auto-activates**: When UI design tasks are needed

#### ux-researcher
- **Specialization**: Turn user insights into product improvements
- **Best for**: User research, usability testing, UX optimization
- **Auto-activates**: When user experience questions arise

#### whimsy-injector
- **Specialization**: Add delight to every interaction
- **Best for**: Adding personality to interfaces, micro-interactions, user engagement
- **Auto-activates**: After UI/UX changes (proactive agent)

#### brand-guardian
- **Specialization**: Keep visual identity consistent everywhere
- **Best for**: Brand consistency, style guide enforcement, visual identity
- **Auto-activates**: When brand-related decisions are needed

#### visual-storyteller
- **Specialization**: Create visuals that convert and share
- **Best for**: Marketing visuals, presentation design, storytelling graphics
- **Auto-activates**: When visual content creation is requested

### Marketing Department (7 agents)

#### growth-hacker
- **Specialization**: Find and exploit viral growth loops
- **Best for**: Growth strategy, viral mechanisms, user acquisition
- **Auto-activates**: When growth or marketing strategy is discussed

#### tiktok-strategist
- **Specialization**: Create shareable marketing moments
- **Best for**: TikTok content strategy, viral content creation
- **Auto-activates**: When TikTok or viral content is mentioned

#### app-store-optimizer
- **Specialization**: Dominate app store search results
- **Best for**: App store optimization, ASO strategy, store presence
- **Auto-activates**: When app store or mobile marketing is discussed

#### content-creator
- **Specialization**: Generate content across all platforms
- **Best for**: Multi-platform content creation, content strategy
- **Auto-activates**: When content creation tasks are needed

#### instagram-curator
- **Specialization**: Master the visual content game
- **Best for**: Instagram strategy, visual content curation
- **Auto-activates**: When Instagram marketing is discussed

#### reddit-community-builder
- **Specialization**: Win Reddit without being banned
- **Best for**: Reddit marketing, community engagement, platform-specific content
- **Auto-activates**: When Reddit strategy is mentioned

#### twitter-engager
- **Specialization**: Ride trends to viral engagement
- **Best for**: Twitter strategy, trend-based content, engagement tactics
- **Auto-activates**: When Twitter marketing is discussed

### Product Department (3 agents)

#### feedback-synthesizer
- **Specialization**: Transform complaints into features
- **Best for**: User feedback analysis, feature prioritization from feedback
- **Auto-activates**: When user feedback analysis is needed

#### sprint-prioritizer
- **Specialization**: Ship maximum value in 6 days
- **Best for**: Sprint planning, feature prioritization, scope management
- **Auto-activates**: When sprint planning or prioritization is discussed

#### trend-researcher
- **Specialization**: Identify viral opportunities
- **Best for**: Market research, trend analysis, opportunity identification
- **Auto-activates**: When market research or trend analysis is requested

### Project Management Department (3 agents)

#### experiment-tracker
- **Specialization**: Data-driven feature validation
- **Best for**: A/B testing, feature experiments, data-driven decisions
- **Auto-activates**: When feature flags or experiments are mentioned (proactive agent)

#### project-shipper
- **Specialization**: Launch products that don't crash
- **Best for**: Release management, launch coordination, deployment oversight
- **Auto-activates**: When launch or release activities are discussed

#### studio-producer
- **Specialization**: Keep teams shipping, not meeting
- **Best for**: Team coordination, workflow optimization, productivity management
- **Auto-activates**: When team coordination challenges arise

### Studio Operations Department (5 agents)

#### analytics-reporter
- **Specialization**: Turn data into actionable insights
- **Best for**: Analytics analysis, reporting, data-driven insights
- **Auto-activates**: When analytics or reporting tasks are needed

#### finance-tracker
- **Specialization**: Keep the studio profitable
- **Best for**: Financial analysis, budget tracking, cost optimization
- **Auto-activates**: When financial questions arise

#### infrastructure-maintainer
- **Specialization**: Scale without breaking the bank
- **Best for**: Infrastructure optimization, cost management, system scaling
- **Auto-activates**: When infrastructure issues are mentioned

#### legal-compliance-checker
- **Specialization**: Stay legal while moving fast
- **Best for**: Legal compliance, policy review, regulatory requirements
- **Auto-activates**: When legal or compliance questions arise

#### support-responder
- **Specialization**: Turn angry users into advocates
- **Best for**: Customer support, issue resolution, user communication
- **Auto-activates**: When customer support issues are mentioned

### Testing Department (5 agents)

#### api-tester
- **Specialization**: Ensure APIs work under pressure
- **Best for**: API testing, endpoint validation, integration testing
- **Auto-activates**: When API testing is needed

#### performance-benchmarker
- **Specialization**: Make everything faster
- **Best for**: Performance analysis, optimization, benchmarking
- **Auto-activates**: When performance issues are mentioned

#### test-results-analyzer
- **Specialization**: Find patterns in test failures
- **Best for**: Test failure analysis, pattern recognition, debugging
- **Auto-activates**: When test analysis is needed

#### tool-evaluator
- **Specialization**: Choose tools that actually help
- **Best for**: Tool comparison, technology evaluation, stack decisions
- **Auto-activates**: When tool selection decisions are needed

#### workflow-optimizer
- **Specialization**: Eliminate workflow bottlenecks
- **Best for**: Process improvement, workflow analysis, efficiency optimization
- **Auto-activates**: When workflow optimization is discussed

## BONUS AGENTS

### studio-coach
- **Specialization**: Rally the AI troops to excellence
- **Best for**: Multi-agent coordination, complex task orchestration, agent guidance
- **Auto-activates**: When complex multi-agent tasks begin or agents need guidance (proactive agent)
- **Coordination Role**: Orchestrates multiple agents for complex workflows

### joker
- **Specialization**: Lighten the mood with tech humor
- **Best for**: Team morale, humor injection, creative problem-solving
- **Auto-activates**: When team needs morale boost or creative thinking

## AGENT SELECTION HIERARCHY

### Priority Order
1. **Utility Agents** (MANDATORY): Basic operations must use designated utility agents
2. **Domain Specialists**: Task-specific expertise agents for complex work
3. **Multi-Domain Coordination**: studio-coach orchestrates cross-domain tasks
4. **General Purpose**: rapid-prototyper, general-purpose as fallbacks only
5. **Direct Tools**: Last resort when no agent matches or agent explicitly fails

### Selection Criteria
- **Single Domain**: Use specialized agent directly
- **Multi-Domain**: studio-coach coordinates multiple agents
- **Complex Projects**: Agent teams work in parallel with clear handoffs
- **Simple Queries**: Still prefer agent if available for context isolation

## PROACTIVE AGENTS

These agents automatically activate in specific contexts:

### Auto-Activation Triggers
- **studio-coach**: Complex multi-agent tasks begin or agents need guidance
- **test-writer-fixer**: After implementing features, fixing bugs, or modifying code
- **whimsy-injector**: After UI/UX changes
- **experiment-tracker**: When feature flags/experiments are mentioned

### Proactive Benefits
- **Preventive Quality**: Catch issues before they become problems
- **Workflow Continuity**: Smooth transitions between development phases
- **Automatic Enhancement**: Continuous improvement without explicit requests
- **Context Awareness**: Agents understand development lifecycle triggers

## CONTEXT MANAGEMENT BENEFITS

### Why Agents Provide Superior Results

#### Fresh Context Advantage
- **Clean Slate**: Each agent starts without conversation history overhead
- **Focused Expertise**: No dilution from unrelated conversation topics
- **Optimal Token Usage**: Context tailored specifically to the task domain
- **Reduced Confusion**: No mixed signals from previous conversation threads

#### Expert-Level System Prompts
- **Domain Specialization**: 500+ word prompts tuned for specific expertise areas
- **Best Practices Built-in**: Industry standards and proven patterns embedded
- **Context-Aware Responses**: Understanding of domain-specific challenges and solutions
- **Consistent Quality**: Standardized approach across similar tasks

#### Parallel Processing Capabilities
- **Simultaneous Execution**: Multiple agents work on different aspects concurrently
- **Independent Failure Handling**: Agent failures don't cascade to other operations
- **Specialized Tool Access**: Each agent optimized for specific tool combinations
- **Coordinated Workflows**: studio-coach orchestrates complex multi-agent operations

#### Performance Isolation Benefits
- **Error Containment**: Agent issues don't affect main conversation flow
- **Resource Optimization**: Each agent uses only necessary context and tools
- **Quality Assurance**: Purpose-built agents deliver more reliable results
- **Scalable Architecture**: Add new agents without affecting existing workflows

## INTEGRATION GUIDELINES

### MCP Tools Integration
Agents leverage MCP.md guidance for:
- **Tool Selection Optimization**: Agents choose optimal tool combinations for their domains
- **Performance-Conscious Decisions**: Built-in awareness of tool performance characteristics
- **Anti-Pattern Avoidance**: Agents avoid known problematic tool usage patterns
- **Systematic Workflows**: Consistent approaches to complex multi-tool operations

### Agent-MCP Coordination Patterns
```yaml
agent_mcp_integration:
  code_analysis:
    agents: [backend-architect, frontend-developer, ai-engineer]
    primary_mcp: [serena, sequential-thinking]
    pattern: "Agent provides domain expertise + MCP provides technical analysis"
    
  testing_workflows:
    agents: [test-runner, test-writer-fixer, api-tester]
    primary_mcp: [playwright, puppeteer]
    pattern: "Agent orchestrates testing strategy + MCP executes tests"
    
  documentation_tasks:
    agents: [context-fetcher]
    primary_mcp: [context7, readwise]
    pattern: "Agent filters and synthesizes + MCP retrieves raw information"
```

### Serena MCP Integration
- **Semantic Code Analysis**: Agents leverage Serena's symbol understanding for complex refactoring
- **LSP-Based Intelligence**: Enhanced code navigation and pattern recognition through agents
- **Project Memory**: Serena's .serena/memories/ provides persistent context for agent operations
- **Symbol-Aware Workflows**: Agents use Serena's semantic understanding for better code modifications

### Tool Coordination Philosophy
- **Agent-First Approach**: Agents coordinate tool usage rather than direct tool orchestration
- **Domain-Optimized Tool Selection**: Each agent knows the best tool combinations for their expertise
- **Context-Aware Decision Making**: Agents make tool choices based on task complexity and requirements
- **Performance-Optimized Workflows**: Agents balance speed, accuracy, and resource usage

## USAGE BEST PRACTICES

### Agent Invocation Patterns
- **Explicit Requests**: "Use frontend-developer to build this component"
- **Natural Language**: "Create a new user authentication system" → backend-architect
- **Task-Based**: "Our app is getting bad reviews" → feedback-synthesizer
- **Context-Aware**: "This loading screen is boring" → whimsy-injector

### Multi-Agent Coordination
- **Sequential Workflows**: One agent completes, passes context to next
- **Parallel Operations**: Multiple agents work simultaneously on different aspects
- **Studio-Coach Orchestration**: Complex tasks require coordination agent
- **Handoff Protocols**: Clear context transfer between agents

### Quality Assurance
- **Agent Selection Validation**: Verify correct agent for task type
- **Output Quality Review**: Agents provide expert-level results
- **Performance Monitoring**: Track agent effectiveness and optimization opportunities
- **Continuous Improvement**: Refine agent selection based on results

### Integration with Development Workflow
- **6-Day Sprint Alignment**: All agents understand rapid development constraints
- **Context Preservation**: Agents maintain project context across interactions
- **Tool Ecosystem Awareness**: Agents work within existing MCP and tool infrastructure
- **Quality Gate Integration**: Agents respect validation sequences and safety protocols

Remember: **Agents First, Tools Second** - Leverage the specialized expertise and fresh context that agents provide for superior development outcomes.