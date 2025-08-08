# ⛔ BLOCKING RULES - Non-Negotiable Behavioral Enforcement

## RULE #1: ⛔ AGENT-FIRST ENFORCEMENT (COGNITIVE STOP)

### 🚫 FORBIDDEN WITHOUT AGENTS
**STOP IMMEDIATELY if attempting these operations directly:**

- **file-creator** MANDATORY for:
  - File creation (Write tool)
  - Directory creation (mkdir, file structure)
  - Template application
  - Batch file operations

- **git-workflow** MANDATORY for:
  - All git commands (commit, push, branch, merge)
  - Repository operations
  - Version control workflows

- **context-fetcher** MANDATORY for:
  - Documentation retrieval (Read tool for docs)
  - Internal knowledge base access
  - Technical reference lookup

- **knowledge-fetcher** MANDATORY for:
  - External research (Readwise, Context7)
  - Web search operations
  - Knowledge synthesis from multiple sources

- **date-checker** MANDATORY for:
  - Date/time calculations
  - Scheduling queries
  - Timestamp analysis

### ⛔ ENFORCEMENT PROTOCOL
```
BEFORE ANY TOOL USE:
1. PAUSE - Does an agent exist for this domain?
2. CHECK - Is this a utility agent mandatory domain?
3. REDIRECT - Use agent instead of direct tool
4. ONLY PROCEED with direct tools if NO AGENT EXISTS or AGENT FAILS
```

## RULE #2: ⛔ FILE SAFETY ENFORCEMENT

**MANDATORY Read-Before-Write Protocol:**
- Read tool MUST precede Write/Edit operations
- Absolute paths ONLY - no relative paths permitted
- Never auto-commit without explicit user permission
- Never reference "Claude" in commit messages

## RULE #3: ⛔ CODEBASE CHANGE ENFORCEMENT

**MANDATORY Discovery-Before-Change Protocol:**
- Complete project-wide discovery before ANY changes
- Search ALL file types for ALL variations of target terms
- Document all references with context and impact assessment
- Execute changes in coordinated manner following plan

# ✅ OPERATIONAL GUIDELINES - Best Practices & Standards

## Task Execution Standards

### Validation Protocols
- Always validate before execution, verify after completion
- Run lint/typecheck before marking tasks complete
- Maintain ≥90% context retention across operations
- Use batch tool calls when possible, sequential only when dependencies exist

### Framework Compliance
- Check package.json/requirements.txt before using libraries
- Follow existing project patterns and conventions
- Use project's existing import styles and organization
- Respect framework lifecycles and best practices

## Quality Assurance Pipeline

### Validation Sequence
1. **Syntax Check**: Language parsers and intelligent suggestions
2. **Type Validation**: Type compatibility and context-aware suggestions
3. **Code Quality**: Linting rules and refactoring suggestions
4. **Security Review**: Vulnerability assessment and compliance
5. **Testing**: Coverage analysis and validation
6. **Performance**: Benchmarking and optimization suggestions
7. **Documentation**: Completeness validation and accuracy verification
8. **Integration**: Deployment validation and compatibility verification

### Evidence Requirements
- **Quantitative**: Performance/quality/security metrics, coverage percentages
- **Qualitative**: Code quality improvements, security enhancements, UX improvements
- **Documentation**: Change rationale, test results, performance benchmarks

## Operational Safety Protocols

### ✅ ALWAYS Execute
- Agent-first approach for ALL operations
- Specialized agents for domain-specific tasks
- Batch operations for efficiency
- Complete discovery before codebase changes
- Verify completion with evidence

### ⛔ NEVER Execute
- Direct tools when agents are available (violates agent-first mandate)
- File modifications without Read operations
- Relative paths in file operations
- Framework pattern violations
- Changes without discovery phase
- Task completion without verification