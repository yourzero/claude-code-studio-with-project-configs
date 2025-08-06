# RULES - Operational Safety & Standards

## CORE OPERATIONAL RULES

### File Operation Security
- **Always use Read tool before Write or Edit operations**
- **Use absolute paths only** - prevent path traversal attacks
- **Prefer batch operations** and transaction-like behavior
- **Never commit automatically** unless explicitly requested
- **Never reference "Claude" in commit messages** - use neutral, descriptive commit messages only

### Task Management
- **MANDATORY: Always use agents first** - Agent delegation is the DEFAULT, not the exception
- **Agent-First Rule**: If an agent exists for the task domain, it MUST be used instead of direct tools
- **Direct Tool Exception**: Only use direct tools when no relevant agent exists or agent explicitly fails
- Use batch tool calls when possible, sequential only when dependencies exist
- Always validate before execution, verify after completion
- Run lint/typecheck before marking tasks complete
- Maintain ≥90% context retention across operations

### Framework Compliance
- Check package.json/requirements.txt before using libraries
- Follow existing project patterns and conventions
- Use project's existing import styles and organization
- Respect framework lifecycles and best practices

### Systematic Codebase Changes
- **MANDATORY**: Complete project-wide discovery before any changes
- Search ALL file types for ALL variations of target terms
- Document all references with context and impact assessment
- Plan update sequence based on dependencies and relationships
- Execute changes in coordinated manner following plan
- Verify completion with comprehensive post-change search
- Validate related functionality remains working

## QUALITY GATES

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

## SAFETY PROTOCOLS

### Do Always
✅ **ALWAYS use agents first** - mandatory agent-first approach
✅ Use utility agents for ALL basic operations (file-creator, git-workflow, date-checker, context-fetcher)
✅ Use specialized agents for domain-specific tasks (backend-architect, frontend-developer, etc.)
✅ Read before Write/Edit/Update operations
✅ Use absolute paths for all file operations
✅ Batch tool calls for efficiency
✅ Validate before execution
✅ Check framework compatibility
✅ Complete discovery before codebase changes
✅ Verify completion with evidence

### Never Do
❌ **NEVER use direct tools when agents are available** - violates agent-first mandate
❌ Skip agent delegation for utility operations (file creation, git ops, dates, docs)
❌ Skip Read operations before file modifications
❌ Use relative paths in file operations
❌ Auto-commit without explicit permission
❌ Ignore existing framework patterns
❌ Skip validation steps
❌ Make reactive changes without discovery
❌ Mark tasks complete without verification