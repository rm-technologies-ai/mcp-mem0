# Behavior and Rules

- Always follow the reference installation and environment setup as described by the project author (e.g., use `uv` for dependency management, do not substitute with `pip` unless explicitly allowed).
- If environment or tool issues arise, resolve them manually to match the reference behavior rather than deviating from the documented process.
- Do not introduce alternative workflows or tools unless required by the project author or for critical compatibility reasons.
- Document any manual fixes or environment adjustments in this section for future reference.
- When multiple Python versions are installed, always set up a virtual environment and explicitly select the correct interpreter (e.g., Python 3.12+) to avoid conflicts.

# MCP-Mem0 Development Tasks

## Current Sprint

### In Progress
- [ ] Initial setup of MCP-Mem0 server with cloud Supabase instance
  - [ ] Configure environment variables
  - [ ] Test database connection
  - [ ] Verify memory operations (save, retrieve, search)

## Backlog

### Infrastructure
- [ ] Migrate from cloud Supabase to self-hosted PostgreSQL
  - [ ] Research and document PostgreSQL vector extension installation
  - [ ] Create migration script for existing data
  - [ ] Set up local PostgreSQL instance with vector extension
  - [ ] Update connection string and configuration
  - [ ] Test all memory operations with local instance
  - [ ] Document local setup process
  - [ ] Create backup strategy for local database
- [ ] Implement metadata tagging for memories (e.g., tags: behavior-rules, devops-sprint, devops-backlog, etc.) to enable cross-project aggregation and filtering
- [ ] Design and implement a mechanism to aggregate and update reusable "Behavior and Rules" across projects, leveraging tags for feedback and self-improvement
- [ ] Interim: Use manual tagging in memory content (e.g., (tag:behavior-rules)) to simulate metadata until code supports structured tags
- [ ] Document and test the process of retrieving and updating tagged memories across projects

### Features
- [ ] Add memory expiration/cleanup functionality
- [ ] Implement memory categorization/tagging
- [ ] Add memory importance scoring
- [ ] Create memory visualization dashboard

### Testing
- [ ] Add comprehensive unit tests
- [ ] Add integration tests
- [ ] Set up CI/CD pipeline

### Documentation
- [ ] Create detailed setup guide for both cloud and local deployments
- [ ] Document API endpoints and usage examples
- [ ] Add troubleshooting guide

## Completed
- [x] Initial project setup
- [x] Basic MCP server implementation
- [x] Memory operations implementation (save, retrieve, search)

## Notes
- Current implementation uses cloud Supabase for vector storage
- Migration to local PostgreSQL will require vector extension installation
- Consider data backup strategy before migration
- DevOps board has been migrated to mem0 memory for cross-project journaling and testing. Use TASKS.md as a source of truth and for cross-referencing mem0 content during evaluation.
