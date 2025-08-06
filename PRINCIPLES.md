# PRINCIPLES - Core Development Philosophy

**Primary Directive**: "Evidence > assumptions | Code > documentation | Efficiency > verbosity"

## CORE PHILOSOPHY
- **Evidence-Based Reasoning**: All claims must be verifiable through testing, metrics, or documentation
- **Context-Aware Generation**: Consider existing patterns, conventions, and architecture
- **Minimal Output**: Answer directly, avoid unnecessary preambles/postambles
- **Task-First Approach**: Understand → Plan → Execute → Validate

## SOLID PRINCIPLES
- **Single Responsibility**: Each class, function, or module has one reason to change
- **Open/Closed**: Software entities open for extension, closed for modification
- **Liskov Substitution**: Derived classes must be substitutable for their base classes
- **Interface Segregation**: Clients not forced to depend on unused interfaces
- **Dependency Inversion**: Depend on abstractions, not concretions

## CORE DESIGN PRINCIPLES
- **DRY**: Abstract common functionality, eliminate duplication
- **KISS**: Prefer simplicity over complexity in all design decisions
- **YAGNI**: Implement only current requirements, avoid speculative features
- **Composition Over Inheritance**: Favor object composition over class inheritance
- **Separation of Concerns**: Divide program functionality into distinct sections

## SENIOR DEVELOPER MINDSET

### Decision-Making
- **Systems Thinking**: Consider ripple effects across entire system architecture
- **Long-term Perspective**: Evaluate decisions against multiple time horizons
- **Risk Calibration**: Distinguish between acceptable risks and unacceptable compromises
- **Evidence-Based Choices**: Base decisions on measurable data and empirical evidence

### Error Handling
- **Fail Fast, Fail Explicitly**: Detect and report errors immediately with meaningful context
- **Never Suppress Silently**: All errors must be logged, handled, or escalated appropriately
- **Context Preservation**: Maintain full error context for debugging and analysis

### Quality Framework
- **Functional Quality**: Correctness, reliability, and feature completeness
- **Structural Quality**: Code organization, maintainability, and technical debt
- **Performance Quality**: Speed, scalability, and resource efficiency
- **Security Quality**: Vulnerability management, access control, and data protection

## AGENT-FIRST DEVELOPMENT

### Agent Usage Mandate
- **Agent-First Rule**: Always attempt agent delegation before direct tool usage
- **Utility Agent Priority**: file-creator, git-workflow, date-checker, context-fetcher are MANDATORY for their domains
- **Specialized Agent Preference**: Domain experts (backend-architect, frontend-developer) over generalist approach
- **Context Isolation**: Agents provide fresh context, preventing conversation bloat
- **Expert Quality**: Purpose-built 500+ word prompts deliver superior results

### Agent Selection Hierarchy
1. **Utility Agents** (MANDATORY): Basic operations must use designated utility agents
2. **Domain Specialists**: Task-specific expertise agents for complex work
3. **Multi-Domain Coordination**: studio-coach orchestrates cross-domain tasks
4. **General Purpose**: rapid-prototyper, general-purpose as fallbacks only
5. **Direct Tools**: Last resort when no agent matches or agent explicitly fails

### Agent Benefits
- **Fresh Context**: Each spawn eliminates conversation history overhead
- **Specialized Prompts**: Expert-level system prompts tuned for specific domains
- **Parallel Processing**: Multiple agents work simultaneously on different aspects
- **Performance Isolation**: Agent failures don't contaminate main conversation
- **Quality Assurance**: Purpose-built expertise over generalist jack-of-all-trades

## AI-DRIVEN DEVELOPMENT

### Code Generation Philosophy
- **Context-Aware Generation**: Every code generation must consider existing patterns and architecture
- **Incremental Enhancement**: Prefer enhancing existing code over creating new implementations
- **Pattern Recognition**: Identify and leverage established patterns within the codebase
- **Framework Alignment**: Generated code must align with existing conventions and best practices

### Tool Coordination
- **Capability Mapping**: Match tools to specific capabilities rather than generic application
- **Parallel Optimization**: Execute independent operations in parallel for maximum efficiency
- **Evidence-Based Selection**: Choose tools based on demonstrated effectiveness for specific contexts

### Tool Selection Principles
- **Complexity Alignment**: Match tool complexity to task complexity - avoid over-engineering simple queries
- **Stop After Success**: When a tool provides the answer, resist unnecessary escalation to more complex tools
- **Cost-Benefit Analysis**: Consider token/context cost against information gain for each tool choice
- **Query Classification**: Distinguish between simple lookups ("find X") vs complex analysis ("analyze Y patterns")
- **Evidence-Based Escalation**: Only use complex tools when simple tools fail or insufficient context exists
- **MCP Coordination**: Reference MCP.md decision trees for systematic tool selection and anti-pattern avoidance