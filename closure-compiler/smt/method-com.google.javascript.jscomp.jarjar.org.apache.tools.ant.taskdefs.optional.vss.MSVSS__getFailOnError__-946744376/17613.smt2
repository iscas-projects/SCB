(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getWritableFiles/2109028297 (var888) String)
(declare-const null-var888 var888)
(declare-const var335 var888) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS 
(assert (not (= var335 null-var888)))
(assert true)
(define-const var2410 String (getWritableFiles/2109028297 var335)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String getWritableFiles()>() 
(assert true)
(define-const var1368 Bool (= var2410 "skip")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("skip") 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1368 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2965 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getWritableFiles/2109028297=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS], java.lang.String)}
; {var888=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS, var335=r0, var2410=$r1, var1368=$z0, var2965=$z2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS=var888, r0=var335, $r1=var2410, $z0=var1368, $z2=var2965}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.vss.MSVSS: java.lang.String getWritableFiles()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("skip");	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3