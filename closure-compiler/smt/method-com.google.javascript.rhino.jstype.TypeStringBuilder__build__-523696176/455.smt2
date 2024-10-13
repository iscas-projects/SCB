(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2889 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun builder/-878163304 (var2889) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2889 var2889)
(declare-const var3948 var2889) ; Statement: r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder 
(assert (not (= var3948 null-var2889)))
(define-const var1981 String (builder/-878163304 var3948)) ; Statement: $r1 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder> 
(assert true)
(define-const var1696 String (toString/-2075883882 var1981)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {builder/-878163304=([com.google.javascript.rhino.jstype.TypeStringBuilder], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2889=com.google.javascript.rhino.jstype.TypeStringBuilder, var3948=r0, var1981=$r1, var1696=$r2}
; {com.google.javascript.rhino.jstype.TypeStringBuilder=var2889, r0=var3948, $r1=var1981, $r2=var1696}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.rhino.jstype.TypeStringBuilder;	$r1 = r0.<com.google.javascript.rhino.jstype.TypeStringBuilder: java.lang.StringBuilder builder>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1