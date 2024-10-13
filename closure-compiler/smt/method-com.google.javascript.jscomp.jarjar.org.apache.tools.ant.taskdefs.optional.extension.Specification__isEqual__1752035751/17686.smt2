(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSpecificationTitle/-92828343 (var136) String)
(declare-const null-var136 var136)
(declare-const var1521 var136) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification 
(assert (not (= var1521 null-var136)))
(declare-const var1144 var136) ; Statement: r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification 
(assert (not (= var1144 null-var136)))
(assert true)
(define-const var3614 String (getSpecificationTitle/-92828343 var1521)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String getSpecificationTitle()>() 
(assert true)
(define-const var70 String (getSpecificationTitle/-92828343 var1144)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String getSpecificationTitle()>() 
(assert true)
(define-const var1021 Bool (= var3614 var70)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z6 = 0 
(assert (= (ite var1021 1 0) 0)) ; Cond: $z0 == 0 
(define-const var21 Bool (ite (= 1 0) true false)) ; Statement: $z6 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z6 
(check-sat)
(get-model)
(get-unsat-core)
; {getSpecificationTitle/-92828343=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String)}
; {var136=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification, var1521=r0, var1144=r1, var3614=$r3, var70=$r2, var1021=$z0, var21=$z6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification=var136, r0=var1521, r1=var1144, $r3=var3614, $r2=var70, $z0=var1021, $z6=var21}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification;	r1 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String getSpecificationTitle()>();	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String getSpecificationTitle()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z6 = 0;	$z6 = 0;	return $z6
;block_num 3