(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1323 0)
(declare-sort var1881 0)
(declare-sort var208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var1881 var1881)
(declare-const null-var208 var208)
(declare-const var2109 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2109 null-String)))
(declare-const var1832 var1881) ; Statement: r1 := @parameter1: java.util.Map 
(assert (not (= var1832 null-var1881)))
(declare-const var3515 var208) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var3515 null-var208)))
(declare-const var3628 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var3628 null-String)))
(declare-const var3278 var208) ; Statement: r2 := @parameter4: java.lang.Object 
(assert (not (= var3278 null-var208)))
 ; Statement: if r0 == null goto $r4 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(assert (not (= var2109 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var2710 Bool (= var2109 var3628)) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z1 == 0 goto return r2 
(assert (= (ite var2710 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2109=r0, var1323=null_type, var1881=java.util.Map, var1832=r1, var208=java.lang.Object, var3515=r5, var3628=r3, var3278=r2, var2710=$z1}
; {r0=var2109, null_type=var1323, java.util.Map=var1881, r1=var1832, java.lang.Object=var208, r5=var3515, r3=var3628, r2=var3278, $z1=var2710}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Map;	r5 := @parameter2: java.lang.Object;	r3 := @parameter3: java.lang.String;	r2 := @parameter4: java.lang.Object;	if r0 == null goto $r4 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z1 == 0 goto return r2;	return r2
;block_num 3