(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1560 0)
(declare-sort var28 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var28_toStringBuilder/-71000321 (var1560) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1560 var1560)
(declare-const var3656 var1560) ; Statement: r0 := @parameter0: java.lang.Readable 
(assert (not (= var3656 null-var1560)))
(define-const var890 String (var28_toStringBuilder/-71000321 var3656)) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: java.lang.StringBuilder toStringBuilder(java.lang.Readable)>(r0) 
(assert true)
(define-const var2639 String (toString/-2075883882 var890)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var28_toStringBuilder/-71000321=([java.lang.Readable], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1560=java.lang.Readable, var3656=r0, var28=com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams, var890=$r1, var2639=$r2}
; {java.lang.Readable=var1560, r0=var3656, com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams=var28, $r1=var890, $r2=var2639}
;seq <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: java.lang.StringBuilder toStringBuilder(java.lang.Readable)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Readable;	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.io.CharStreams: java.lang.StringBuilder toStringBuilder(java.lang.Readable)>(r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1