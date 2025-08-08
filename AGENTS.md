# AGENTS - Rapid Selection Guide & Intelligent Orchestrator

**Primary Directive**: "Agents First, Tools Second - Expert Context Over General Purpose"

## ⚡ RAPID AGENT SELECTION

### 🚨 MANDATORY UTILITY AGENTS (5)
**NEVER use direct tools for these domains**

| Agent | Domain | Trigger Keywords |
|-------|--------|------------------|
| **file-creator** | File/directory creation | "create", "generate", "new file", "setup structure" |
| **git-workflow** | All git operations | "commit", "branch", "merge", "git", "push", "pull" |
| **context-fetcher** | Internal documentation | "docs", "README", "internal guide", "project docs" |
| **knowledge-fetcher** | External research | "search", "Readwise", "Context7", "web search", "find articles" |
| **date-checker** | Date/time calculations | "when", "schedule", "time since", "date", "timestamp" |

### 🎯 INSTANT AGENT MATCHING

| User Intent | Primary Agent | Secondary Options |
|-------------|---------------|-------------------|
| **"Build new feature"** | rapid-prototyper | → ui-designer → frontend-developer |
| **"Fix this bug"** | backend-architect / frontend-developer | + test-writer-fixer (auto-triggers) |
| **"Test this code"** | test-writer-fixer | + api-tester, performance-benchmarker |
| **"Deploy this"** | devops-automator | + project-shipper |
| **"Design this UI"** | ui-designer | → frontend-developer → whimsy-injector |
| **"Analyze feedback"** | feedback-synthesizer | + ux-researcher |
| **"Complex multi-step"** | **studio-coach** | (orchestrates others) |

### 🔀 COMPLEXITY ROUTING

```yaml
Simple (1 agent):     Direct task → Specialized agent
Medium (2-3 agents):  Sequential workflow → Auto-handoffs  
Complex (4+ agents):  studio-coach → Orchestrated workflow
```

## 🎼 ORCHESTRATION WORKFLOWS

### 🏆 MASTER ORCHESTRATOR: studio-coach

**Auto-activates when:**
- 4+ agents needed
- Cross-domain complexity
- Multi-phase projects
- Agent coordination required

**Orchestration patterns:**
```yaml
new_feature_flow:
  sequence: rapid-prototyper → ui-designer → frontend-developer → test-writer-fixer
  parallel: [backend-architect, devops-automator] + testing team
  
bug_investigation:
  sequence: backend-architect → test-writer-fixer → performance-benchmarker
  parallel: [analytics-reporter, sentry analysis]
  
product_launch:
  sequence: project-shipper → growth-hacker → content-creator
  parallel: [app-store-optimizer, tiktok-strategist, instagram-curator]
```

### 🔄 SEQUENTIAL WORKFLOWS

**Feature Development Pipeline:**
1. **rapid-prototyper** → MVP implementation
2. **ui-designer** → Interface design
3. **frontend-developer** → UI implementation  
4. **test-writer-fixer** → Testing (auto-triggers)
5. **whimsy-injector** → Delight injection (auto-triggers)

**Bug Resolution Pipeline:**
1. **backend-architect** / **frontend-developer** → Problem analysis
2. **test-writer-fixer** → Test creation (auto-triggers)
3. **performance-benchmarker** → Performance check
4. **test-results-analyzer** → Validation

### ⚡ PARALLEL COORDINATION

**Development Team (simultaneous):**
- **backend-architect** + **frontend-developer** + **mobile-app-builder**
- Coordinated by: **studio-coach**

**Testing Team (simultaneous):**
- **test-writer-fixer** + **api-tester** + **performance-benchmarker**
- **test-results-analyzer** + **tool-evaluator**

**Marketing Team (simultaneous):**
- **growth-hacker** + **content-creator** + **tiktok-strategist**
- **instagram-curator** + **app-store-optimizer**

### 🎯 AUTO-TRIGGERING AGENTS

**Proactive agents that activate automatically:**

| Trigger Event | Agent | Purpose |
|---------------|-------|---------|
| Code changes | **test-writer-fixer** | Immediate test coverage |
| UI/UX changes | **whimsy-injector** | Add delightful interactions |
| Feature flags mentioned | **experiment-tracker** | A/B testing setup |
| Complex workflows start | **studio-coach** | Orchestration management |

## 🔧 UTILITY AGENTS (MANDATORY)

### file-creator
- **Domain**: File/directory creation, project structure
- **Replaces**: Write tool, manual file creation
- **Auto-coordinates with**: git-workflow (for commits)

### git-workflow  
- **Domain**: All git operations, version control
- **Replaces**: Bash git commands, manual git operations
- **Auto-coordinates with**: file-creator (for new files), devops-automator (for deployment)

### context-fetcher
- **Domain**: Internal documentation, project docs
- **Replaces**: Read tool for documentation
- **Auto-coordinates with**: knowledge-fetcher (external sources)

### knowledge-fetcher
- **Domain**: External research (Readwise, Context7, web search)  
- **Replaces**: Manual research, direct MCP calls
- **Auto-coordinates with**: context-fetcher (internal docs)

### date-checker
- **Domain**: Date/time calculations, scheduling
- **Replaces**: Manual date calculations
- **Auto-coordinates with**: sprint-prioritizer (planning)

## 🎯 SPECIALIZED AGENT DIRECTORY

### 🛠️ Engineering (7 agents)
- **rapid-prototyper**: MVP builder → **Coordinates with**: ui-designer, test-writer-fixer
- **backend-architect**: API design → **Coordinates with**: devops-automator, api-tester
- **frontend-developer**: UI implementation → **Coordinates with**: ui-designer, whimsy-injector
- **mobile-app-builder**: Native apps → **Coordinates with**: app-store-optimizer
- **ai-engineer**: AI/ML integration → **Coordinates with**: performance-benchmarker
- **devops-automator**: Deployment → **Coordinates with**: project-shipper, infrastructure-maintainer
- **test-writer-fixer**: Testing strategy → **Coordinates with**: api-tester, test-results-analyzer

### 🎨 Design (5 agents)
- **ui-designer**: Interface design → **Coordinates with**: frontend-developer, brand-guardian
- **ux-researcher**: User insights → **Coordinates with**: feedback-synthesizer, analytics-reporter
- **whimsy-injector**: Interaction delight → **Auto-triggers after**: UI changes
- **brand-guardian**: Visual consistency → **Coordinates with**: visual-storyteller
- **visual-storyteller**: Marketing visuals → **Coordinates with**: content-creator

### 📈 Marketing (7 agents)
- **growth-hacker**: Viral loops → **Coordinates with**: analytics-reporter, experiment-tracker
- **tiktok-strategist**: TikTok content → **Coordinates with**: content-creator
- **app-store-optimizer**: ASO → **Coordinates with**: mobile-app-builder
- **content-creator**: Multi-platform content → **Coordinates with**: instagram-curator, twitter-engager
- **instagram-curator**: Visual content → **Coordinates with**: visual-storyteller
- **reddit-community-builder**: Community engagement → **Coordinates with**: support-responder
- **twitter-engager**: Trend engagement → **Coordinates with**: trend-researcher

### 🎯 Product (3 agents)
- **feedback-synthesizer**: User feedback → **Coordinates with**: ux-researcher, sprint-prioritizer
- **sprint-prioritizer**: Planning → **Coordinates with**: rapid-prototyper, studio-producer
- **trend-researcher**: Market analysis → **Coordinates with**: growth-hacker

### 📋 Project Management (3 agents)
- **experiment-tracker**: A/B testing → **Auto-triggers on**: feature flags
- **project-shipper**: Launch management → **Coordinates with**: devops-automator
- **studio-producer**: Team coordination → **Coordinates with**: studio-coach

### 🏢 Operations (5 agents)
- **analytics-reporter**: Data insights → **Coordinates with**: experiment-tracker
- **finance-tracker**: Profitability → **Coordinates with**: infrastructure-maintainer
- **infrastructure-maintainer**: Scaling → **Coordinates with**: devops-automator
- **legal-compliance-checker**: Legal review → **Coordinates with**: project-shipper
- **support-responder**: Customer support → **Coordinates with**: feedback-synthesizer

### 🧪 Testing (5 agents)
- **api-tester**: API validation → **Coordinates with**: backend-architect, performance-benchmarker
- **performance-benchmarker**: Speed optimization → **Coordinates with**: test-results-analyzer
- **test-results-analyzer**: Failure patterns → **Coordinates with**: test-writer-fixer
- **tool-evaluator**: Tech decisions → **Coordinates with**: workflow-optimizer
- **workflow-optimizer**: Process improvement → **Coordinates with**: studio-producer

### 🎭 Bonus Agents
- **joker**: Morale boost → **Coordinates with**: whimsy-injector

## 📋 COORDINATION PROTOCOLS

### 🎯 Handoff Rules

**Sequential Handoffs:**
1. **Context Transfer**: Previous agent provides full context to next
2. **Dependency Check**: Ensure prerequisites completed
3. **Quality Gate**: Validate outputs before handoff
4. **Failure Handling**: Escalate to studio-coach if agent fails

**Parallel Coordination:**
1. **Resource Allocation**: Prevent conflicts between simultaneous agents
2. **Progress Sync**: Regular status updates to studio-coach
3. **Dependency Management**: Handle shared resource access
4. **Integration Point**: Merge outputs at coordination milestones

### 🚨 Escalation Triggers

**Auto-escalate to studio-coach when:**
- Agent failure cascades
- Resource conflicts between agents
- Dependency deadlocks
- Quality gates fail
- Timeline pressure requires optimization

### 🔄 Feedback Loops

**Performance Optimization:**
- Track agent coordination effectiveness
- Identify common workflow patterns
- Optimize handoff protocols
- Reduce coordination overhead

**Quality Assurance:**
- Monitor output quality across agent teams
- Validate coordination outcomes
- Implement improvement patterns
- Scale successful workflows

## 🎯 AGENT SELECTION MATRIX

### Decision Tree
```yaml
task_analysis:
  utility_domain: USE_MANDATORY_AGENT (no alternatives)
  single_domain: USE_SPECIALIZED_AGENT
  cross_domain: SEQUENTIAL_WORKFLOW (2-3 agents)
  complex_project: STUDIO_COACH_ORCHESTRATION (4+ agents)
  
coordination_level:
  simple: Direct agent selection
  medium: Auto-handoffs between 2-3 agents
  complex: studio-coach orchestrated workflows
  
urgency:
  immediate: Single specialized agent
  planned: Sequential workflow
  strategic: Full orchestration with parallel teams
```

### Agent Relationship Map
```yaml
core_relationships:
  development_trio: [rapid-prototyper, frontend-developer, test-writer-fixer]
  design_duo: [ui-designer, whimsy-injector] 
  backend_stack: [backend-architect, devops-automator, api-tester]
  marketing_squad: [growth-hacker, content-creator, tiktok-strategist]
  testing_team: [test-writer-fixer, api-tester, performance-benchmarker, test-results-analyzer]
  
auto_triggers:
  code_change: test-writer-fixer
  ui_change: whimsy-injector  
  feature_flags: experiment-tracker
  complex_workflow: studio-coach
```

Remember: **Agent orchestration is as important as agent selection** - Use studio-coach for complex coordination, leverage auto-triggering for workflow continuity, and prefer agent teams over solo agent work for comprehensive solutions.