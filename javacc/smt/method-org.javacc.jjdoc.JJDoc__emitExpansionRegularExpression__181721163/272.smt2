(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2119 0)
(declare-sort var1090 0)
(declare-sort var193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var193_emitRE/1338725779 (var2119) String)
(declare-const null-var2119 var2119)
(declare-const null-var1090 var1090)
(declare-const var1249 var2119) ; Statement: r0 := @parameter0: org.javacc.parser.RegularExpression 
(assert (not (= var1249 null-var2119)))
(declare-const var3352 var1090) ; Statement: r2 := @parameter1: org.javacc.jjdoc.Generator 
(assert (not (= var3352 null-var1090)))
(define-const var2518 String (var193_emitRE/1338725779 var1249)) ; Statement: r1 = staticinvoke <org.javacc.jjdoc.JJDoc: java.lang.String emitRE(org.javacc.parser.RegularExpression)>(r0) 
(assert true)
(define-const var303 Bool (= var2518 "")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var303 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var193_emitRE/1338725779=([org.javacc.parser.RegularExpression], java.lang.String)}
; {var2119=org.javacc.parser.RegularExpression, var1249=r0, var1090=org.javacc.jjdoc.Generator, var3352=r2, var193=org.javacc.jjdoc.JJDoc, var2518=r1, var303=$z0}
; {org.javacc.parser.RegularExpression=var2119, r0=var1249, org.javacc.jjdoc.Generator=var1090, r2=var3352, org.javacc.jjdoc.JJDoc=var193, r1=var2518, $z0=var303}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.RegularExpression;	r2 := @parameter1: org.javacc.jjdoc.Generator;	r1 = staticinvoke <org.javacc.jjdoc.JJDoc: java.lang.String emitRE(org.javacc.parser.RegularExpression)>(r0);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 != 0 goto return;	return
;block_num 2