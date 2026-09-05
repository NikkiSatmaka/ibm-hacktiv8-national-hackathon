# Sample study data

The RAG corpus contains five topics, each provided as Markdown:

1. `introduction-to-ai`
2. `supervised-learning`
3. `unsupervised-learning`
4. `reinforcement-learning`
5. `responsible-generative-ai`

Use one format consistently during a test run to avoid indexing duplicate content. Markdown is recommended for easy inspection and version review.

`convert-markdown-to-pdf.sh` regenerates the PDFs from every Markdown file in this directory and requires Pandoc, Typst, and the Noto Sans font. Because this README is documentation rather than course content, exclude it when selecting files for ingestion.
