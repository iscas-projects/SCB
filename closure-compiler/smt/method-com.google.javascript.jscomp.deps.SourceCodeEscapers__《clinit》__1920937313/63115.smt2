(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2632-init () var2632)
(declare-fun <init>/515594104 (var2632) void)
(define-const var3396 String "0123456789abcdef") ; Statement: $r0 = "0123456789abcdef" 
(assert true)
(define-const var2713 (Array Int Int) (toCharArray/415275702 var3396)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>() 
(define-const var2012 (Array Int Int) var2713) ; Statement: <com.google.javascript.jscomp.deps.SourceCodeEscapers: char[] HEX_DIGITS> = $r1 
(define-const var2968 var2632 var2632-init) ; Statement: $r2 = new com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper 
(assert true)
;(assert (<init>/515594104 var2968)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: void <init>()>() 

(declare-const var2968!1 var2632)
(define-const var438 var2632 var2968!1) ; Statement: <com.google.javascript.jscomp.deps.SourceCodeEscapers: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper JAVASCRIPT_ESCAPER> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var2632-init=([], com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper), <init>/515594104=([com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper], void)}
; {var3396=$r0, var2713=$r1, var2012=<com.google.javascript.jscomp.deps.SourceCodeEscapers: char[] HEX_DIGITS>, var2632=com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper, var2968=$r2, var438=<com.google.javascript.jscomp.deps.SourceCodeEscapers: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper JAVASCRIPT_ESCAPER>}
; {$r0=var3396, $r1=var2713, <com.google.javascript.jscomp.deps.SourceCodeEscapers: char[] HEX_DIGITS>=var2012, com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper=var2632, $r2=var2968, <com.google.javascript.jscomp.deps.SourceCodeEscapers: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper JAVASCRIPT_ESCAPER>=var438}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts $r0 = "0123456789abcdef";	$r1 = virtualinvoke $r0.<java.lang.String: char[] toCharArray()>();	<com.google.javascript.jscomp.deps.SourceCodeEscapers: char[] HEX_DIGITS> = $r1;	$r2 = new com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper;	specialinvoke $r2.<com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper: void <init>()>();	<com.google.javascript.jscomp.deps.SourceCodeEscapers: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper JAVASCRIPT_ESCAPER> = $r2;	return
;block_num 1