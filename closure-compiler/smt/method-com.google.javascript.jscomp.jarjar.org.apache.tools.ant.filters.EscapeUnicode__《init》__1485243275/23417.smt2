(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var186 0)
(declare-sort var3434 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1872372006 (var3434) void)
(declare-fun cast-from-var186-to-var3434 (var186) var3434)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun unicodeBuf/-419429494 (var186) String)
(declare-const null-var186 var186)
(declare-const var2328 var186) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode 
(assert (not (= var2328 null-var186)))
(assert true)
;(assert (<init>/1872372006 (cast-from-var186-to-var3434 var2328))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader: void <init>()>() 

(declare-const var2328!1 var186)
(define-const var2109 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2109)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2109!1 String)
(declare-const var2328!2 var186)
(assert (not (= var2328!2 null-var186)))
(assert (= (unicodeBuf/-419429494 var2328!2) var2109!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> = $r1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1872372006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader], void), cast-from-var186-to-var3434=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), unicodeBuf/-419429494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode], java.lang.StringBuffer)}
; {var186=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode, var2328=r0, var3434=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader, var2109=$r1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode=var186, r0=var2328, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader=var3434, $r1=var2109}
;seq <java.lang.StringBuffer: void <init>()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.BaseParamFilterReader: void <init>()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.EscapeUnicode: java.lang.StringBuffer unicodeBuf> = $r1;	return
;block_num 1