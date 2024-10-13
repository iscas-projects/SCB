(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2519 0)
(declare-sort var923 0)
(declare-sort var2757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1739518587 (var2757 var923) void)
(declare-fun cast-from-var2519-to-var2757 (var2519) var2757)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun unicodeBuf/-419429494 (var2519) String)
(declare-const null-var2519 var2519)
(declare-const null-var923 var923)
(declare-const var3482 var2519) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode 
(assert (not (= var3482 null-var2519)))
(declare-const var3635 var923) ; Statement: r1 := @parameter0: java.io.Reader 
(assert (not (= var3635 null-var923)))
(assert true)
;(assert (<init>/-1739518587 (cast-from-var2519-to-var2757 var3482) var3635)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader: void <init>(java.io.Reader)>(r1) 

(declare-const var3482!1 var2519)
(declare-const var3635!1 var923)
(define-const var1569 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1569)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1569!1 String)
(declare-const var3482!2 var2519)
(assert (not (= var3482!2 null-var2519)))
(assert (= (unicodeBuf/-419429494 var3482!2) var1569!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1739518587=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader, java.io.Reader], void), cast-from-var2519-to-var2757=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), unicodeBuf/-419429494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], java.lang.StringBuffer)}
; {var2519=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode, var3482=r0, var923=java.io.Reader, var3635=r1, var2757=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader, var1569=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode=var2519, r0=var3482, java.io.Reader=var923, r1=var3635, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader=var2757, $r2=var1569}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode;	r1 := @parameter0: java.io.Reader;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader: void <init>(java.io.Reader)>(r1);	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> = $r2;	return
;block_num 1