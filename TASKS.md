# Behavior and Rules

- Always follow the reference installation and environment setup as described by the project author (e.g., use `uv` for dependency management, do not substitute with `pip` unless explicitly allowed).
- If environment or tool issues arise, resolve them manually to match the reference behavior rather than deviating from the documented process.
- Do not introduce alternative workflows or tools unless required by the project author or for critical compatibility reasons.
- Document any manual fixes or environment adjustments in this section for future reference.
- When multiple Python versions are installed, always set up a virtual environment and explicitly select the correct interpreter (e.g., Python 3.12+) to avoid conflicts.
- When a bug is encountered, open a bug in the DevOps board. Before attempting a fix, log under the bug an entry for each attempt made to fix the bug (e.g., '1. Stopping and starting the server to test saving a memory').
- During the evaluation period, TASKS.md remains the source of truth. All updates and changes should be reflected in both mem0 and TASKS.md.
- Follow a test-driven design approach. For task management, generate a sequence of test cases and expected results. Since RAG is not symbolic, passing criteria may be subjective; tests should output expected and actual results for visual evaluation. As we iterate, we may automate passing criteria with transformers.

# MCP-Mem0 Development Tasks

## Current Sprint

## Active task in progress: Generate test cases for implementing metadata additions in order to complete the task management capability.

### In Progress
- [ ] Initial setup of MCP-Mem0 server with cloud Supabase instance
  - [x] Configure environment variables
  - [x] Test database connection
  - [x] Verify memory operations (save, retrieve, search)
- [ ] BUG: Memories not being retrieved after saving (Total existing memories: 0)
  - [x] 1. Stopping and starting the server to test saving a memory
  - [x] 2. Confirmed memory operations are working; log message is misleading and not a blocker. Ignore unless it causes functional issues.
- [ ] Refactor task management to use metadata objects (status, type, tags) for each task in mem0, following the official mem0 example. This will enable robust retrieval (e.g., 'show all open tasks').

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
- [x] Interim: Use manual tagging in memory content (e.g., (tag:behavior-rules)) to simulate metadata until code supports structured tags
- [x] Document and test the process of retrieving and updating tagged memories across projects
- [ ] Develop a 'process killer script' that lists running processes related to the MCP server or Python/uv context, allows the user to select a process to kill by number, or exit.
- [ ] Update the code so that Cursor IDE can leverage this mem0 MCP server for persistent, cross-project long-term memory, enabling the agent to see and reason over more context across chats and projects.
- [ ] Implement import of OpenAI ChatGPT conversation history (conversations.json) into mem0, with appropriate metadata tags for RAG access to historical knowledge, code assistance, and general/personal task management.

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
- [x] Self-hosted MCP-Mem0 server setup with Supabase backend, environment configuration, and verification of persistent memory operations (2024-05-10)
- [x] Integrated MCP server with Cursor as SSE endpoint, migrated DevOps board from TASKS.md to mem0 memory, and established manual tagging for cross-project access (2024-05-10)
- [x] Triaged and documented misleading 'Total existing memories: 0' log message; confirmed it is non-blocking (2024-05-10)
- [x] Explored and documented metadata-driven task management, graph extension, and advanced RAG workflows using mem0 patterns and examples (2024-05-10)

## Notes
- Current implementation uses cloud Supabase for vector storage
- Migration to local PostgreSQL will require vector extension installation
- Consider data backup strategy before migration
- DevOps board has been migrated to mem0 memory for cross-project journaling and testing. Use TASKS.md as a source of truth and for cross-referencing mem0 content during evaluation.
- Discovered During Work:
  - Need to implement detailed CRUD workflows for tasks in mem0
  - Need to define and document conversation import schema for OpenAI ChatGPT history
  - Need explicit Cursor integration and deterministic RAG prompt engineering
  - Ad-hoc multi-domain querying and relationship/graph queries for tasks and knowledge
  - Update README.md and mem0_paper.md to reflect new workflows and findings
