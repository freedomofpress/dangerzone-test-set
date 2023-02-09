# dangerzone-test-set
A set of documents to test dangerzone with.

## Adding a new document source

1. Copy `source_template` and name it as `source-[sourceName]`, where `[sourceName]` is a name of your choosing.
2. Edit `source-[sourceName]/Makefile` so that the documents can be obtained from the source and moved to `all_documents/`
3. Test the makefile and ensure the documents are retrieved correcty
4. Commit `source-[sourceName]/` directory
5. Commit newly added documents`all_documents/` directory