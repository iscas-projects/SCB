(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var698 0)
(declare-sort var3453 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCharset/-2051104507 (var698) var3453)
(declare-fun name/1362759805 (var3453) String)
(declare-const null-var698 var698)
(declare-const var3605 var698) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet 
(assert (not (= var3605 null-var698)))
(declare-const var1560 var698) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet 
(assert (not (= var1560 null-var698)))
(assert true)
(define-const var1831 var3453 (getCharset/-2051104507 var3605)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet: java.nio.charset.Charset getCharset()>() 
(assert true)
(define-const var1990 String (name/1362759805 var1831)) ; Statement: $r5 = virtualinvoke $r1.<java.nio.charset.Charset: java.lang.String name()>() 
(assert true)
(define-const var2772 var3453 (getCharset/-2051104507 var1560)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet: java.nio.charset.Charset getCharset()>() 
(assert true)
(define-const var3804 String (name/1362759805 var2772)) ; Statement: $r4 = virtualinvoke $r3.<java.nio.charset.Charset: java.lang.String name()>() 
(assert true)
(define-const var722 Bool (= var1990 var3804)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getCharset/-2051104507=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet], java.nio.charset.Charset), name/1362759805=([java.nio.charset.Charset], java.lang.String)}
; {var698=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet, var3605=r0, var1560=r2, var3453=java.nio.charset.Charset, var1831=$r1, var1990=$r5, var2772=$r3, var3804=$r4, var722=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet=var698, r0=var3605, r2=var1560, java.nio.charset.Charset=var3453, $r1=var1831, $r5=var1990, $r3=var2772, $r4=var3804, $z0=var722}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet: java.nio.charset.Charset getCharset()>();	$r5 = virtualinvoke $r1.<java.nio.charset.Charset: java.lang.String name()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.CharSet: java.nio.charset.Charset getCharset()>();	$r4 = virtualinvoke $r3.<java.nio.charset.Charset: java.lang.String name()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>($r4);	return $z0
;block_num 1