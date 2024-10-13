(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1855 0)
(declare-sort var3158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPublicId/-1971678499 (var3158) String)
(declare-const null-String String)
(declare-const null-var3158 var3158)
(declare-const var1403 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1403 null-String)))
(declare-const var3506 var3158) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation 
(assert (not (= var3506 null-var3158)))
(assert true)
(define-const var40 String (getPublicId/-1971678499 var3506)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation: java.lang.String getPublicId()>() 
(assert true)
(define-const var1414 Bool (= var40 var1403)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getPublicId/-1971678499=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation], java.lang.String)}
; {var1403=r1, var1855=null_type, var3158=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation, var3506=r0, var40=$r2, var1414=$z0}
; {r1=var1403, null_type=var1855, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation=var3158, r0=var3506, $r2=var40, $z0=var1414}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceLocation: java.lang.String getPublicId()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1