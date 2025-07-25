%{

#include "parser.h"
#include "parser_result.h"
#include <sstream>

static thread_local std::stringstream string_buffer;

%}

%option reentrant
%option bison-bridge

%option noyywrap nounput noinput
%option warn
%option never-interactive
%option batch
%option case-insensitive
%option bison-locations
%option verbose
%option debug

%option prefix="sql"

%x SINGLE_QUOTED_STRING

%%

[ \t\n]+        /* ignore \t\n and space */;

ADD             { return ADD; }
ADMIN           { return ADMIN; }
ALL             { return ALL; }
ALLOCATION      { return ALLOCATION; }
ALTER           { return ALTER; }
AND             { return AND; }
ARRAY           { return ARRAY; }
AS              { return AS; }
ASC             { return ASC; }
BETWEEN         { return BETWEEN; }
BFLOAT16        { return BFLOAT16; }
BIGINT          { return BIGINT; }
BIT             { return BIT; }
BITMAP          { return BITMAP; }
BOOLEAN         { return BOOLEAN; }
BOX             { return BOX; }
BLOB            { return BLOB; }
BLOCK           { return BLOCK; }
BLOCKS          { return BLOCKS; }
BUFFER          { return BUFFER; }
BY              { return BY; }
CASE            { return CASE; }
CAST            { return CAST; }
CATALOG         { return CATALOG; }
CATALOGS        { return CATALOGS; }
CHECK           { return CHECK; }
CHUNK           { return CHUNK; }
CIRCLE          { return CIRCLE; }
CLEAN           { return CLEAN; }
DUMP            { return DUMP; }
COLLECTION      { return COLLECTION; }
COLUMN          { return COLUMN; }
COLUMNS         { return COLUMNS; }
COMMENT         { return COMMENT; }
COMPACT         { return COMPACT; }
CONFIGS         { return CONFIGS; }
CONFIG          { return CONFIG; }
CONNECT         { return CONNECT; }
COPY            { return COPY; }
CREATE          { return CREATE; }
CROSS           { return CROSS; }
DATA            { return DATA; }
DATABASE        { return DATABASE; }
DATABASES       { return DATABASES; }
DATE            { return DATE; }
DATETIME        { return DATETIME; }
DAY             { return DAY; }
DAYS            { return DAYS; }
DISTINCT        { return DISTINCT; }
DOUBLE          { return DOUBLE; }
DECIMAL         { return DECIMAL; }
DEFAULT         { return DEFAULT; }
DELETE          { return DELETE; }
DELIMITER       { return DELIMITER; }
DESC            { return DESC; }
DROP            { return DROP; }
ELSE            { return ELSE; }
EMBEDDING       { return EMBEDDING; }
END             { return END; }
EXCEPT          { return EXCEPT; }
EXTRACT         { return EXTRACT; }
EXECUTE         { return EXECUTE; }
EXISTS          { return EXISTS; }
EXPLAIN         { return EXPLAIN; }
EXPORT          { return EXPORT; }
FALSE           { return FALSE; }
FILES           { return FILES; }
FLOAT           { return FLOAT; }
FLOAT16         { return FLOAT16; }
FLUSH           { return FLUSH; }
FOLLOWER        { return FOLLOWER; }
FORMAT          { return FORMAT; }
FROM            { return FROM; }
FULL            { return FULL; }
FUSION          { return FUSION; }
GLOBAL          { return GLOBAL; }
GROUP           { return GROUP; }
HAVING          { return HAVING; }
HEADER          { return HEADER; }
HIGHLIGHT       { return HIGHLIGHT; }
HISTORY         { return HISTORY; }
HOUR            { return HOUR; }
HOURS           { return HOURS; }
HUGEINT         { return HUGEINT; }
IF              { return IF; }
IGNORE          { return IGNORE; }
IN              { return IN; }
INDEX           { return INDEX; }
INDEXES         { return INDEXES; }
INNER           { return INNER; }
INSERT          { return INSERT; }
INTEGER         { return INTEGER; }
INT             { return INT; }
INTERSECT       { return INTERSECT; }
INTERVAL        { return INTERVAL; }
INTO            { return INTO; }
IS              { return IS; }
JOIN            { return JOIN; }
KEY             { return KEY; }
LEADER          { return LEADER; }
LEARNER         { return LEARNER; }
LEFT            { return LEFT; }
LIKE            { return LIKE; }
LIMIT           { return LIMIT; }
LINE            { return LINE; }
LOG             { return LOG; }
LOGS            { return LOGS; }
LSEG            { return LSEG; }
MATCH           { return MATCH; }
MAXSIM          { return MAXSIM; }
MEMORY          { return MEMORY; }
MEMINDEX        { return MEMINDEX; }
MINUTE          { return MINUTE; }
MINUTES         { return MINUTES; }
MONTH           { return MONTH; }
MONTHS          { return MONTHS; }
MULTIVECTOR     { return MULTIVECTOR; }
NATURAL         { return NATURAL; }
NULL            { return NULLABLE; }
NODE            { return NODE; }
NODES           { return NODES; }
NOT             { return NOT; }
OBJECT          { return OBJECT; }
OBJECTS         { return OBJECTS; }
OFF             { return OFF; }
OFFSET          { return OFFSET; }
ON              { return ON; }
OPTIMIZE        { return OPTIMIZE; }
OR              { return OR; }
ORDER           { return ORDER; }
OUTER           { return OUTER; }
PATH            { return PATH; }
PERSISTENCE     { return PERSISTENCE; }
POINT           { return POINT; }
POLYGON         { return POLYGON; }
PREPARE         { return PREPARE; }
PRIMARY         { return PRIMARY; }
PROFILES        { return PROFILES; }
PROPERTIES      { return PROPERTIES; }
QUERIES         { return QUERIES; }
QUERY           { return QUERY; }
REAL            { return REAL; }
RECOVER         { return RECOVER; }
RESTORE         { return RESTORE; }
RENAME          { return RENAME; }
REMOVE          { return REMOVE; }
RIGHT           { return RIGHT; }
ROWLIMIT        { return ROWLIMIT; }
SEARCH          { return SEARCH; }
SECOND          { return SECOND; }
SECONDS         { return SECONDS; }
SELECT          { return SELECT; }
SESSION         { return SESSION; }
SET             { return SET; }
SEGMENT         { return SEGMENT; }
SEGMENTS        { return SEGMENTS; }
SHOW            { return SHOW; }
SMALLINT        { return SMALLINT; }
SNAPSHOT        { return SNAPSHOT; }
SNAPSHOTS       { return SNAPSHOTS; }
SPARSE          { return SPARSE; }
STANDALONE      { return STANDALONE; }
SYSTEM          { return SYSTEM; }
TABLE           { return TABLE; }
TABLES          { return TABLES; }
TASKS           { return TASKS; }
TENSOR          { return TENSOR; }
TENSORARRAY     { return TENSORARRAY; }
TEXT            { return TEXT; }
THEN            { return THEN; }
TIME            { return TIME; }
TIMESTAMP       { return TIMESTAMP; }
TINYINT         { return TINYINT; }
TO              { return TO; }
TRANSACTION     { return TRANSACTION; }
TRANSACTIONS    { return TRANSACTIONS; }
TRUE            { return TRUE; }
TUPLE           { return TUPLE; }
UNION           { return UNION; }
UNIQUE          { return UNIQUE; }
UNSIGNED        { return UNSIGNED; }
USING           { return USING; }
UPDATE          { return UPDATE; }
UUID            { return UUID; }
USE             { return USE; }
VALUES          { return VALUES; }
VARIABLE        { return VARIABLE; }
VARIABLES       { return VARIABLES; }
VARCHAR         { return VARCHAR; }
VECTOR          { return VECTOR; }
VIEW            { return VIEW; }
WHEN            { return WHEN; }
WHERE           { return WHERE; }
WITH            { return WITH; }
YEAR            { return YEAR; }
YEARS           { return YEARS; }

"=="            { return EQUAL; }
"!="            { return NOT_EQ; }
"<>"            { return NOT_EQ; }
"<="            { return LESS_EQ; }
">="            { return GREATER_EQ; }

[-+*/(){},.;<>=^%:?[\]|]    { return yytext[0]; }

-?[0-9]+"."[0-9]*((E|e)-?[0-9]+)? |
"."[0-9]*  {
    yylval->double_value = atof(yytext);
    return DOUBLE_VALUE;
}

-?[0-9]+ {
    errno = 0;
    yylval->long_value = strtoll(yytext, nullptr, 0);
    if (errno) {
        return fprintf(stderr, "[SQL-Lexer-Error] Integer cannot be parsed - is it out of range?");
        return 0;
    }
    return LONG_VALUE;
}

\"[^\"\n]+\" {
    // total length - 2 of quota + 1 null char
    long str_len = strlen(yytext) - 1;
    yylval->str_value = (char*)malloc(str_len);
    memset(yylval->str_value, 0, str_len);
    memcpy(yylval->str_value, (char*)(yytext + 1), str_len - 1);
    return IDENTIFIER;
}

[A-Za-z][A-Za-z0-9_]* {
    yylval->str_value = strdup(yytext);
    return IDENTIFIER;
}

\'                            { BEGIN SINGLE_QUOTED_STRING; string_buffer.clear(); string_buffer.str(""); }  // Clear strbuf manually, see #170
<SINGLE_QUOTED_STRING>\'\'    { string_buffer << '\''; }
<SINGLE_QUOTED_STRING>[^']*   { string_buffer << yytext; }
<SINGLE_QUOTED_STRING>\'      { BEGIN INITIAL; yylval->str_value = strdup(string_buffer.str().c_str()); return STRING; }
<SINGLE_QUOTED_STRING><<EOF>> { fprintf(stderr, "[SQL-Lexer-Error] Unterminated string\n"); return 0; }

. { fprintf(stderr, "[SQL-Lexer-Error] Unknown Character: %c\n", yytext[0]); return 0; }

%%

int yyerror(const char *msg) {
    fprintf(stderr, "[Why here?] %s\n",msg); return 0;
}
