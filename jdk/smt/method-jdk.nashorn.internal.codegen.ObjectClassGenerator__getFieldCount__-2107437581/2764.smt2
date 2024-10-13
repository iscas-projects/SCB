(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun var1883_getPrefixName/703101650 (String) String)
(declare-const null-ClassObject ClassObject)
(declare-const var612 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var612 null-ClassObject)))
(assert true)
(define-const var1421 String (getSimpleName/-390194377 var612)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>() 
(define-const var645 String (var1883_getPrefixName/703101650 var1421)) ; Statement: r2 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(java.lang.String)>(r1) 
(assert true)
(define-const var2742 Bool (= var645 var1421)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("P") 
(assert (not (= (ite var2742 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getSimpleName/-390194377=([java.lang.Class], java.lang.String), var1883_getPrefixName/703101650=([java.lang.String], java.lang.String)}
; {var612=r0, var1421=r1, var1883=jdk.nashorn.internal.codegen.ObjectClassGenerator, var645=r2, var2742=$z0}
; {r0=var612, r1=var1421, jdk.nashorn.internal.codegen.ObjectClassGenerator=var1883, r2=var645, $z0=var2742}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getSimpleName()>();	r2 = staticinvoke <jdk.nashorn.internal.codegen.ObjectClassGenerator: java.lang.String getPrefixName(java.lang.String)>(r1);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("P");	return 0
;block_num 2