# Repository scope

This repository is the canonical reusable public Linux learning resource for RCET courses.

Use `rosstimo/rcet-master-planning` as the cross-course control plane. Course planning repositories decide when Linux material is needed in a particular semester or course; this repository should remain broadly reusable rather than becoming a hidden schedule for one course.

## Ownership rules

- Maintain reusable Linux lessons, references, examples, images, and supporting scripts here.
- Link to this repository from course material instead of keeping hand-maintained copies of the same Linux lesson in several course repositories.
- Keep course-specific assignment requirements, grading, due dates, semester pacing, and submission instructions in the owning course repository.
- When a course needs a small adaptation, prefer a link plus course-specific context over duplicating and independently editing the shared lesson.
- Do not infer that every RCET course must teach every lesson in this repository. RCET3371 is the primary integration course; RCET3373 and RCET3375 may use Linux material as tooling support.

## Working rules

- `main` is the current published baseline.
- Inspect current repository content before editing shared material because changes may affect several courses.
- Routine low-risk documentation maintenance may follow the current control-plane policy. Substantive/review-worthy shared-content changes must obey the live branch/PR circuit breaker.
- Preserve student-facing clarity. Avoid instructor-only planning, private assessment content, student records, or credentials in this public repository.
