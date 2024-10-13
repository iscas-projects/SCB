(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3492_stringValue/-689356382 (String) String)
(define-const var319 String (var3492_stringValue/-689356382 "STACK_LIMIT")) ; Statement: r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("STACK_LIMIT") 
(assert true)
(define-const var156 Bool (= var319 "0")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("0") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var156 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3492_stringValue/-689356382=([java.lang.String], java.lang.String)}
; {var3492=org.javacc.parser.Options, var319=r0, var156=$z0}
; {org.javacc.parser.Options=var3492, r0=var319, $z0=var156}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 = staticinvoke <org.javacc.parser.Options: java.lang.String stringValue(java.lang.String)>("STACK_LIMIT");	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("0");	if $z0 == 0 goto return r0;	return r0
;block_num 2