(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2649 0)
(declare-sort var1991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun specificationTitle/523887138 (var2649) String)
(declare-fun getSpecificationTitle/-92828343 (var2649) String)
(declare-const null-var2649 var2649)
(declare-const var2649-INCOMPATIBLE var1991)
(declare-const var1981 var2649) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification 
(assert (not (= var1981 null-var2649)))
(declare-const var3783 var2649) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification 
(assert (not (= var3783 null-var2649)))
(define-const var3718 String (specificationTitle/523887138 var1981)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle> 
(assert true)
(define-const var2422 String (getSpecificationTitle/-92828343 var3783)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String getSpecificationTitle()>() 
(assert true)
(define-const var816 Bool (= var3718 var2422)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>() 
(assert (not (not (= (ite var816 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1342 var1991 var2649-INCOMPATIBLE) ; Statement: $r17 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility INCOMPATIBLE> 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {specificationTitle/523887138=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String), getSpecificationTitle/-92828343=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification], java.lang.String)}
; {var2649=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification, var1981=r0, var3783=r1, var3718=$r2, var2422=$r3, var816=$z0, var1991=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility, var1342=$r17}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification=var2649, r0=var1981, r1=var3783, $r2=var3718, $r3=var2422, $z0=var816, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility=var1991, $r17=var1342}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String specificationTitle>;	$r3 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: java.lang.String getSpecificationTitle()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DeweyDecimal getSpecificationVersion()>();	$r17 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Specification: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.extension.Compatibility INCOMPATIBLE>;	return $r17
;block_num 2