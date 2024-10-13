(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var757 0)
(declare-sort var1379 0)
(declare-sort var696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lambdaArgName/-2121385267 (var757) String)
(declare-const null-var757 var757)
(declare-const null-String String)
(declare-const null-var696 var696)
(declare-const var2109 var757) ; Statement: r1 := @this: freemarker.core.Environment$LocalContextWithNewLocal 
(assert (not (= var2109 null-var757)))
(declare-const var3918 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3918 null-String)))
(define-const var3963 String (lambdaArgName/-2121385267 var2109)) ; Statement: $r2 = r1.<freemarker.core.Environment$LocalContextWithNewLocal: java.lang.String lambdaArgName> 
(assert true)
(define-const var1954 Bool (= var3918 var3963)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (= (ite var1954 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3977 var696 null-var696) ; Statement: $r3 = null 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {lambdaArgName/-2121385267=([freemarker.core.Environment$LocalContextWithNewLocal], java.lang.String)}
; {var757=freemarker.core.Environment$LocalContextWithNewLocal, var2109=r1, var3918=r0, var1379=null_type, var3963=$r2, var1954=$z0, var696=freemarker.template.TemplateModel, var3977=$r3}
; {freemarker.core.Environment$LocalContextWithNewLocal=var757, r1=var2109, r0=var3918, null_type=var1379, $r2=var3963, $z0=var1954, freemarker.template.TemplateModel=var696, $r3=var3977}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.core.Environment$LocalContextWithNewLocal;	r0 := @parameter0: java.lang.String;	$r2 = r1.<freemarker.core.Environment$LocalContextWithNewLocal: java.lang.String lambdaArgName>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = null;	$r3 = null;	return $r3
;block_num 3