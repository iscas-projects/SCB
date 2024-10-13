(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2620 0)
(declare-sort var3107 0)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lambdaArgName/-2121385267 (var2620) String)
(declare-fun lambdaArgValue/-2121385267 (var2620) var1441)
(declare-const null-var2620 var2620)
(declare-const null-String String)
(declare-const var3763 var2620) ; Statement: r1 := @this: freemarker.core.Environment$LocalContextWithNewLocal 
(assert (not (= var3763 null-var2620)))
(declare-const var3839 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3839 null-String)))
(define-const var1623 String (lambdaArgName/-2121385267 var3763)) ; Statement: $r2 = r1.<freemarker.core.Environment$LocalContextWithNewLocal: java.lang.String lambdaArgName> 
(assert true)
(define-const var3626 Bool (= var3839 var1623)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (not (= (ite var3626 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var617 var1441 (lambdaArgValue/-2121385267 var3763)) ; Statement: $r3 = r1.<freemarker.core.Environment$LocalContextWithNewLocal: freemarker.template.TemplateModel lambdaArgValue> 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {lambdaArgName/-2121385267=([freemarker.core.Environment$LocalContextWithNewLocal], java.lang.String), lambdaArgValue/-2121385267=([freemarker.core.Environment$LocalContextWithNewLocal], freemarker.template.TemplateModel)}
; {var2620=freemarker.core.Environment$LocalContextWithNewLocal, var3763=r1, var3839=r0, var3107=null_type, var1623=$r2, var3626=$z0, var1441=freemarker.template.TemplateModel, var617=$r3}
; {freemarker.core.Environment$LocalContextWithNewLocal=var2620, r1=var3763, r0=var3839, null_type=var3107, $r2=var1623, $z0=var3626, freemarker.template.TemplateModel=var1441, $r3=var617}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.core.Environment$LocalContextWithNewLocal;	r0 := @parameter0: java.lang.String;	$r2 = r1.<freemarker.core.Environment$LocalContextWithNewLocal: java.lang.String lambdaArgName>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = null;	$r3 = r1.<freemarker.core.Environment$LocalContextWithNewLocal: freemarker.template.TemplateModel lambdaArgValue>;	goto [?= return $r3];	return $r3
;block_num 3