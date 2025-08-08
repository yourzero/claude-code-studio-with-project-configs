---
mcp_version: "2.1"
last_updated: "2025-01-08"
total_servers: 12
ai_optimized: true
agent_integrated: true
orchestration_patterns: 15
capability_matrix:
  code_analysis: [serena, sequential-thinking, ide]
  documentation: [context7, readwise, sequential-thinking]
  testing: [playwright, puppeteer, sequential-thinking]
  database: [supabase, sequential-thinking]
  deployment: [vercel, git, sequential-thinking]
  monitoring: [sentry, sequential-thinking]
  automation: [gmail, playwright, puppeteer]
  version_control: [git]
  knowledge_management: [readwise, sequential-thinking]
  browser_automation: [playwright, puppeteer]
  error_tracking: [sentry, serena, sequential-thinking]
  development_environment: [ide, serena]
server_priorities:
  critical: [git, serena, sequential-thinking]
  high: [supabase, sentry, context7]
  medium: [playwright, vercel, readwise]
  low: [puppeteer, gmail, ide]
---

# MCP - Server Configuration & Integration

## SERVER CATEGORIES
**Core Development**: git, serena, ide | **Documentation**: context7, readwise, sequential-thinking | **Database**: supabase | **Testing**: playwright, puppeteer | **Monitoring**: sentry, gmail | **Deployment**: vercel

## THINK FLAG INTEGRATION

### Structured Analysis Hierarchy
- **`--think`** (3-4 analysis steps, ~4K tokens): Focused problem breakdown with immediate solutions
  - **Analysis Depth**: Direct issue identification, straightforward resolution paths
  - **Auto-activates**: Simple bugs, isolated issues, basic refactoring tasks
  - **Best for**: Single-file debugging, direct questions, feature implementation planning

- **`--think-hard`** (8-12 analysis steps, ~10K tokens): Multi-angle analysis with trade-offs evaluation
  - **Analysis Depth**: Alternative solutions, dependency mapping, impact assessment
  - **Auto-activates**: Cross-component issues, performance optimization, design pattern decisions
  - **Best for**: Architecture decisions, complex debugging, system integration challenges

- **`--ultrathink`** (15-20 analysis steps, ~32K tokens): Comprehensive system analysis with long-term implications
  - **Analysis Depth**: Risk assessment, strategic planning, comprehensive solution space exploration
  - **Auto-activates**: System-wide refactoring, production incidents, critical security issues
  - **Best for**: Legacy modernization, enterprise architecture, mission-critical decision making

## AI DECISION TREES

### Code Analysis Decision Tree
```
IF task_type == "code_analysis":
  IF complexity == "simple" AND scope == "single_file":
    AGENT_FIRST: [backend-architect, frontend-developer] (based on domain)
    DIRECT_MCP: [serena.find_symbol, serena.get_symbols_overview]
    COMPLEXITY: 1/5
  ELIF complexity == "medium" AND scope == "multi_file":
    AGENT_FIRST: [rapid-prototyper] (coordinates analysis workflow)
    AGENT_MCP_CHAIN: [serena.search_for_pattern, sequential-thinking.analyze]
    SECONDARY: [ide.getDiagnostics]
    COMPLEXITY: 3/5
  ELIF complexity == "high" AND scope == "system_wide":
    AGENT_FIRST: [studio-coach] (orchestrates multi-agent analysis)
    COORDINATED_AGENTS: [backend-architect, frontend-developer, test-writer-fixer]
    MCP_CHAIN: [serena.find_symbol, sequential-thinking.analyze, ide.getDiagnostics]
    SECONDARY: [context7.get-library-docs]
    COMPLEXITY: 4/5
  AVOID_WHEN: ["no_code_context", "binary_files_only"]
  AGENT_BENEFITS: ["Domain expertise", "Fresh context", "Workflow orchestration"]
```

### Database Operations Decision Tree  
```
IF task_type == "database_operations":
  IF operation == "query" AND urgency == "low":
    PRIMARY: [supabase.execute_sql]
    COMPLEXITY: 2/5
  ELIF operation == "migration" AND urgency == "high":
    PRIMARY: [supabase.apply_migration, supabase.get_logs]
    SECONDARY: [sequential-thinking.analyze, sentry.search_events]
    COMPLEXITY: 4/5
  ELIF operation == "debugging" AND severity == "critical":
    PRIMARY: [sentry.analyze_issue_with_seer, supabase.get_logs, sequential-thinking.analyze]
    SECONDARY: [serena.find_referencing_symbols]
    COMPLEXITY: 5/5
  AVOID_WHEN: ["read_only_environment", "no_database_access", "production_lockdown"]
```

### Testing & QA Decision Tree
```
IF task_type == "testing":
  IF test_type == "unit" AND scope == "backend":
    AGENT_FIRST: [test-runner] (MANDATORY for test execution)
    AGENT_MCP_CHAIN: [ide.executeCode, sequential-thinking.analyze]
    COMPLEXITY: 2/5
  ELIF test_type == "e2e" AND scope == "frontend":
    AGENT_FIRST: [test-writer-fixer, api-tester] (based on focus area)
    AGENT_MCP_CHAIN: [playwright.browser_navigate, playwright.browser_click, playwright.browser_snapshot]
    SECONDARY: [puppeteer.puppeteer_screenshot]
    COMPLEXITY: 3/5
  ELIF test_type == "integration" AND scope == "full_stack":
    AGENT_FIRST: [studio-coach] (orchestrates complex testing workflow)
    COORDINATED_AGENTS: [test-runner, api-tester, test-writer-fixer]
    MCP_CHAIN: [playwright.browser_navigate, supabase.execute_sql, sequential-thinking.analyze]
    SECONDARY: [sentry.search_events, vercel.getDeploymentEvents]
    COMPLEXITY: 4/5
  AVOID_WHEN: ["headless_environment", "no_browser_access", "api_rate_limits"]
  AUTO_TRIGGERS: ["test-writer-fixer after code changes", "performance-benchmarker for optimization"]
```

### Error Resolution Decision Tree
```
IF task_type == "error_resolution":
  IF error_source == "frontend" AND severity == "medium":
    PRIMARY: [sentry.get_issue_details, serena.find_symbol]
    SECONDARY: [playwright.browser_console_messages]
    COMPLEXITY: 3/5
  ELIF error_source == "backend" AND severity == "high":
    PRIMARY: [sentry.analyze_issue_with_seer, supabase.get_logs, serena.find_referencing_symbols]
    SECONDARY: [sequential-thinking.analyze]
    COMPLEXITY: 4/5
  ELIF error_source == "deployment" AND severity == "critical":
    PRIMARY: [vercel.getDeploymentEvents, git.git_log, sentry.search_events]
    SECONDARY: [sequential-thinking.analyze, supabase.get_advisors]
    COMPLEXITY: 5/5
  AVOID_WHEN: ["insufficient_permissions", "service_outage", "rate_limited"]
```

### Documentation Research Decision Tree
```
IF task_type == "documentation_research":
  IF topic == "library_usage" AND depth == "basic":
    AGENT_FIRST: [context-fetcher] (MANDATORY for documentation retrieval)
    AGENT_MCP_CHAIN: [context7.resolve-library-id, context7.get-library-docs]
    COMPLEXITY: 2/5
  ELIF topic == "saved_content" AND source == "readwise":
    AGENT_FIRST: [knowledge-fetcher] (MANDATORY for external knowledge sources)
    AGENT_MCP_CHAIN: [readwise.readwise_topic_search, readwise.readwise_list_documents]
    SECONDARY: [readwise.readwise_search_highlights]
    COMPLEXITY: 3/5
    USAGE: "Search saved articles, videos, highlights from personal knowledge base"
    
    CRITICAL_TOOL: readwise_list_documents
    PURPOSE: "Get full content of saved documents"
    REQUIRED_PARAMS_FOR_FULL_CONTENT:
      - id: "Document ID from search results"
      - withFullContent: true
      - contentMaxLength: 50000 (or higher for long documents)
    OPTIONAL_FILTERING:
      - contentFilterKeywords: ["keyword1", "keyword2"] (extract specific sections)
    CORRECT_USAGE: readwise_list_documents(id="doc_id", withFullContent=true, contentMaxLength=50000)
  ELIF topic == "best_practices" AND depth == "comprehensive":
    AGENT_FIRST: [knowledge-fetcher] (coordinates multi-source research)
    AGENT_MCP_CHAIN: [context7.get-library-docs, readwise.readwise_search_highlights, sequential-thinking.analyze]
    SECONDARY: [readwise.readwise_list_documents]
    COMPLEXITY: 3/5
  ELIF topic == "troubleshooting" AND depth == "expert":
    AGENT_FIRST: [knowledge-fetcher] (synthesizes troubleshooting resources)
    AGENT_MCP_CHAIN: [sentry.search_docs, readwise.readwise_export_highlights, sequential-thinking.analyze]
    SECONDARY: [context7.get-library-docs]
    COMPLEXITY: 4/5
  AVOID_WHEN: ["offline_environment", "no_documentation_access"]
  AGENT_BENEFITS: ["Multi-source synthesis", "Context filtering", "Knowledge consolidation"]
```

## QUERY CLASSIFICATION RULES

### Task Type Detection
```yaml
query_classification:
  simple_lookup:
    indicators: ["find", "get", "show", "list", "what is", "when did"]
    characteristics: ["single answer expected", "factual retrieval", "date/time queries"]
    rule: "Use most direct tool, STOP after definitive answer"
    examples:
      - "find highlights yesterday" → readwise_list_highlights (date filter) → STOP
      - "get project status" → git_status → STOP  
      - "show recent deployments" → vercel.getDeployments → STOP
    max_tools: 1-2
    
  complex_analysis:
    indicators: ["analyze", "compare", "synthesize", "recommend", "explain why", "how should"]
    characteristics: ["requires interpretation", "multi-faceted answer", "strategic guidance"]
    rule: "Multi-tool coordination acceptable, sequential-thinking encouraged"
    examples:
      - "analyze error patterns" → sentry + sequential-thinking
      - "recommend architecture" → serena + context7 + sequential-thinking
      - "explain system behavior" → multiple tools + analysis
    max_tools: 3-5
    
  escalation_triggers:
    - simple_lookup_failed: "First tool returned empty/error"
    - context_missing: "Answer requires additional context not provided"
    - user_requests_depth: "User explicitly asks for detailed analysis"
```

### Agent Integration

**See AGENTS.md for complete orchestration patterns**. Key MCP coordination: Utility agents mandatory for their domains, agent-coordinated MCP workflows preserve context and provide domain expertise.

## AGENT-MCP COORDINATION PATTERNS

### Utility Agent Delegations (MANDATORY)

**Pattern**: Agent provides domain expertise → MCPs execute operations → Agent synthesizes results

- **file-creator**: File operations (Write, MultiEdit, Edit)
- **git-workflow**: Version control (git.git_commit, git.git_add, git.git_status)
- **knowledge-fetcher**: Research (readwise, context7, WebSearch)
- **date-checker**: Temporal calculations (date commands, filtering)
- **context-fetcher**: Documentation (Read, Glob, WebFetch)

### Specialized Agent Patterns

**Domain-Specific Coordination**:
- **Testing**: test-writer-fixer → playwright/ide → validation
- **Code Analysis**: Engineering agents → serena/sequential-thinking → insights
- **Error Resolution**: backend-architect → sentry/supabase → diagnosis
- **Deployment**: devops-automator → vercel/git → monitoring

### Studio-Coach Orchestration

**Complex Multi-Domain Coordination**:
- **Feature Development**: Design → Code → Test → Deploy (parallel agent teams)
- **Production Incidents**: Error analysis + Log review + Deployment check
- **System Refactoring**: Analysis → Planning → Implementation → Validation

**Benefits**: Prevents MCP conflicts, optimizes resource allocation, maintains workflow coherence.

### Auto-Triggering Agent Integration

**Proactive Coordination**:
- **test-writer-fixer**: Code changes → serena → ide → playwright (auto-testing)
- **whimsy-injector**: UI changes → playwright → serena (auto-enhancement)
- **experiment-tracker**: Feature flags → supabase → sentry (auto-tracking)
- **studio-coach**: Complex workflows → Multi-agent coordination

## ERROR RECOVERY & FALLBACKS
- **git** → Manual git commands → Note version control limitations  
- **context7** → WebSearch → Manual documentation lookup
- **sequential-thinking** → Native analysis → Note complexity limitations
- **puppeteer/playwright** → Manual testing → Provide test cases and fallback instructions
- **serena** → Text-based code analysis → Note semantic analysis limitations
- **sentry** → Manual error tracking → Log analysis and issue documentation
- **supabase** → Manual SQL operations → Database connection alternatives
- **vercel** → Manual deployment → CI/CD pipeline alternatives
- **readwise** → Manual search → Note knowledge management gaps
- **gmail** → Manual email operations → Note communication workflow disruption
- **ide** → Text-based diagnostics → Note development environment limitations
- **All servers** → Graceful degradation → Alternative tool routing with capability notes

## ANTI-PATTERNS & USAGE WARNINGS

### Critical Avoid Conditions
```yaml
never_use_when:
  supabase_operations:
    - condition: "read_only_environment" 
      reason: "Cannot execute mutations or migrations"
      alternative: "Use read-only queries via execute_sql"
    
    - condition: "production_lockdown"
      reason: "Risk of data corruption or service disruption"
      alternative: "Use development/staging environments"
      
  browser_automation:
    - condition: "headless_server_environment"
      reason: "No display server available for browser rendering"
      alternative: "Use API endpoints or server-side validation"
      
    - condition: "rate_limited_apis"
      reason: "Browser automation may trigger anti-bot measures"
      alternative: "Use direct API calls with proper authentication"
      
  sentry_operations:
    - condition: "insufficient_permissions"
      reason: "Cannot access organization/project resources"
      alternative: "Use manual error analysis from logs"
      
    - condition: "service_outage"
      reason: "Sentry API unavailable"
      alternative: "Use local log analysis and manual debugging"

  git_operations:
    - condition: "detached_head_state"
      reason: "Git operations may create orphaned commits"
      alternative: "Checkout proper branch before operations"
      
  sequential_thinking:
    - condition: "simple_single_step_tasks" 
      reason: "Unnecessary complexity overhead"
      alternative: "Use direct tool calls for simple operations"
```

### Tool Combination Warnings
```yaml
avoid_combinations:
  playwright_with_puppeteer:
    warning: "Redundant browser automation - choose one"
    recommendation: "Use Playwright for modern apps, Puppeteer for legacy"
    
  multiple_database_connections:
    warning: "Multiple simultaneous DB connections can cause locks"
    recommendation: "Serialize database operations or use transactions"
    
  git_operations_without_status_check:
    warning: "May overwrite uncommitted changes"
    recommendation: "Always check git.git_status before destructive operations"
    
  sentry_analysis_without_context:
    warning: "AI analysis needs sufficient error context"
    recommendation: "Gather logs and reproduction steps first"
```

### Performance Anti-Patterns
```yaml
performance_warnings:
  excessive_sequential_thinking_calls:
    threshold: ">3 calls per task"
    impact: "High token usage and latency"
    solution: "Batch analysis or use simpler tools"
    
  browser_automation_for_api_tasks:
    warning: "Browser overhead for API-accessible operations"
    solution: "Use direct API calls when available"
    
  readwise_full_content_requests:
    warning: "withFullContent=true significantly slows API"
    solution: "Use filtering and pagination instead"
    
  readwise_export_overuse:
    warning: "export_highlights returns full content - massive token usage"
    trigger: "After successful list_highlights call answered user query"
    solution: "STOP after list_highlights unless full content specifically needed"
    example: "find highlights yesterday → list_highlights (got answer) → STOP, don't export"
    
  unnecessary_tool_escalation:
    warning: "Using complex tools when simple lookup already answered question"
    pattern: "successful_simple_query → unnecessary_complex_followup"
    solution: "Apply STOP rule from query classification"
    
  nested_tool_dependencies:
    warning: "Deep tool chains increase failure probability"
    solution: "Use parallel operations where possible"
```

## PERFORMANCE OPTIMIZATION

### Performance Profiles by Tool
```yaml
tool_performance:
  git_operations:
    latency: "50-200ms"
    complexity: 1/5
    token_usage: "minimal"
    parallel_safe: true
    
  supabase_operations:
    latency: "200-2000ms"  
    complexity: 2-4/5
    token_usage: "low-medium"
    parallel_safe: false # Database locks
    
  sentry_operations:
    basic_queries:
      latency: "300-1000ms"
      complexity: 2/5
      token_usage: "low"
    ai_analysis:
      latency: "2000-30000ms" 
      complexity: 5/5
      token_usage: "very_high"
    parallel_safe: true
    
  browser_automation:
    playwright:
      latency: "1000-5000ms"
      complexity: 3/5
      token_usage: "medium"
      resource_intensive: true
    puppeteer:
      latency: "800-4000ms"
      complexity: 2/5  
      token_usage: "medium"
      resource_intensive: true
    parallel_safe: false # Browser instances
    
  sequential_thinking:
    latency: "1000-10000ms"
    complexity: 4-5/5
    token_usage: "high-very_high"
    parallel_safe: true
    scales_with: "problem_complexity"
    
  serena_operations:
    symbol_lookup:
      latency: "100-500ms"
      complexity: 2/5
      token_usage: "low"
    pattern_search:
      latency: "200-2000ms"
      complexity: 3/5
      token_usage: "medium"
    parallel_safe: true
    
  readwise_operations:
    basic_queries:
      latency: "300-1000ms"
      complexity: 2/5
      token_usage: "low"
    full_content:
      latency: "2000-10000ms"
      complexity: 4/5
      token_usage: "very_high"
    parallel_safe: true
```

### Optimization Strategies
```yaml
optimization_patterns:
  parallel_execution:
    description: "Execute independent operations simultaneously"
    examples:
      - "git.git_status + sentry.search_issues"
      - "supabase.get_logs + vercel.getDeploymentEvents"  
    benefit: "50-70% latency reduction"
    
  context_reuse:
    description: "Reuse analysis results across related operations"
    examples:
      - "Cache serena.get_symbols_overview results"
      - "Reuse sequential-thinking analysis for similar problems"
    benefit: "30-50% token usage reduction"
    
  smart_batching:
    description: "Batch similar operations together"
    examples:
      - "Multiple sentry.get_issue_details calls"
      - "Bulk readwise.readwise_list_documents requests"
    benefit: "40-60% API call reduction"
    
  complexity_based_routing:
    description: "Use simpler tools for simple tasks"
    decision_tree:
      - "IF task_complexity <= 2/5: Avoid sequential-thinking"
      - "IF single_symbol_lookup: Use serena.find_symbol directly" 
      - "IF api_available: Prefer API over browser_automation"
    benefit: "60-80% resource usage reduction"
```

### Resource Management
```yaml
resource_allocation:
  high_priority_tools: [git, serena, supabase]
  parallel_limit: 5 # Maximum concurrent operations
  token_budget_allocation:
    critical_operations: 60% # Error resolution, code analysis
    documentation: 25% # Context7, readwise research  
    automation: 15% # Browser testing, email operations
    
  memory_management:
    cache_results: ["serena.get_symbols_overview", "context7.get-library-docs"]
    session_persistence: ["sequential-thinking analysis", "git repository state"]
    cleanup_after: ["browser_automation", "large_readwise_queries"]
```

### Stop Conditions
```yaml
stop_execution_when:
  query_answered:
    condition: "Got definitive answer to user's specific question"
    examples:
      - "User asks 'find X' → found/not found → STOP"
      - "User asks 'what is Y' → got definition → STOP"
    
  token_threshold_reached:
    condition: "Next tool would exceed cost-benefit threshold"  
    thresholds:
      - simple_lookup: "Stop if >1000 tokens already used"
      - medium_analysis: "Stop if >5000 tokens already used"
      - complex_analysis: "Stop if >15000 tokens already used"
    
  completion_criteria_met:
    condition: "Task objectives fully satisfied"
    check: "User's original request completely addressed"
    avoid: "Adding unnecessary analysis or exploration"
    
  error_resolution_complete:
    condition: "Problem identified and solution provided"
    avoid: "Continuing analysis after actionable solution found"
```

### Performance Monitoring
- **Latency Tracking**: Monitor response times per tool combination
- **Token Usage Analytics**: Track consumption patterns by task type
- **Success Rate Monitoring**: Measure completion rates vs complexity
- **Resource Utilization**: Monitor parallel operation efficiency