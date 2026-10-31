# Learning Status

_Last updated: 2026-10-31_

## Goals
- Written exam: ~Nov 12, 2026 (Python + SQL, syllabus: TBD)
- Databricks Associate (MCQ): end of Dec 2026
- Long-term: GCP Data Engineering

## Current position
- Sprint: 1 (written exam)
- Current phase/chat: Day 2 - P2 Functions + S1 CASE/NULLs
- Next up: Day 3 - P3 Collections/comprehensions + S2 Joins

## Python progress
- [x] P1 Syntax, loops, None/truthiness
- [ ] P2 Functions, lambdas, *args/**kwargs
- [ ] P3 Collections, comprehensions
- [ ] P4 dict/JSON handling
- [ ] P5 Exceptions, file I/O, CSV
- [ ] P6 Modules, venv, pip, Git
- [ ] P7 Classes, dataclasses
- [ ] P8 Generators, decorators, pandas basics
- [ ] P9 Async (last)

## SQL progress
- [ ] S1 SELECT, WHERE, ORDER BY, CASE, NULLs     <- stays open until Day 2
- [ ] S2 Joins, set operations
- [ ] S3 GROUP BY, HAVING, aggregates
- [ ] S4 CTEs, subqueries, views
- [ ] S5 DML/DDL, MERGE
- [ ] S6 Window functions
- [ ] S7 Arrays/structs, explode, date/string functions
- [ ] S8 PIVOT, EXPLAIN, optimization

## Projects
- [ ] 1 File Processing Toolkit
- [ ] 2 CSV & JSON Pipeline
- [ ] 3 API Extraction Tool
- [ ] 4 SQLite Analytics
- [ ] 5 Python + SQL ETL Pipeline

## Exams
| Item | Date | Score | Notes |
|---|---|---|---|
| Mock 1 (written) | | | |
| Mock 2 (written) | | | |
| MCQ drill set 1 (Databricks) | | | |

## Readiness (self-rated 1-5, updated weekly)
- Python: 1 | SQL: 2 | DE overall: 1

## Weak spots (recurring mistakes)
- Python: `and`/`or` return an operand, not a boolean (`"x" and 5` is `5`)
- Python: `==` (value) vs `is` (identity); `=` is assignment, not comparison
- Python: `**` is the power operator (`2 ** 3` = 8); `//` floor division, `%` remainder
- Python: empty/whitespace string check: `x is None or not x.strip()` (None check first; `x == ""` misses `" "`)
- Python: missing-value checks use `is None`, not truthiness, when 0 is valid
- Python: nested same-type quotes in f-strings need 3.12+; use `row['id']` inside `f"..."`
- Python: don't name variables after built-ins (`id`, `list`, `type`); use `row_id` etc.
- Python: `continue` skips the rest of the iteration; `for...else` runs only if no `break`
- Python: missing colon after `elif`/`else`; indentation under `else`
- SQL: `IS NOT` only works with NULL/TRUE/FALSE; use `<>` or `NOT IN` for values
- SQL: `ORDER BY` the right column (DISTINCT category, sort by category)
- SQL: pagination needs a unique tie-breaker in `ORDER BY` (`ORDER BY orderDate DESC, id DESC`)
- SQL: large `OFFSET` is slow because skipped rows are still read and discarded (cost grows with page number)
- SQL: `AND` binds tighter than `OR`; use parentheses or `IN`
- SQL: select aliases can't be used in `WHERE`; strings use single quotes

## Log
- 2026-10-29: Roadmap finalized. Repo created.
- 2026-10-31: Day 1 done. Drill (first attempt, some items helped): Python 2 full + 3 partial of 7, SQL 4 of 6. Both files reviewed, no code changes needed.
