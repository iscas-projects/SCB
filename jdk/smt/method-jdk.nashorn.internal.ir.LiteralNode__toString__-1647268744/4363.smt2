(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3366 0)
(declare-sort var1875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/843938677 (var3366) var1875)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3366 var3366)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1875 var1875)
(declare-const var3136 var3366) ; Statement: r0 := @this: jdk.nashorn.internal.ir.LiteralNode 
(assert (not (= var3136 null-var3366)))
(declare-const var204 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var204 null-String)))
(declare-const var1364 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1364 null-Bool)))
(define-const var1447 var1875 (value/843938677 var3136)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value> 
 ; Statement: if $r1 != null goto $r3 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value> 
(assert (not (not (= var1447 null-var1875)))) ; Negate: Cond: $r1 != null  
(assert true)
;(assert (append/672562846 var204 "null")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null") 
(declare-const var204!1 String)
(assert (= var204!1 (str.++ var204 "null")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {value/843938677=([jdk.nashorn.internal.ir.LiteralNode], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3366=jdk.nashorn.internal.ir.LiteralNode, var3136=r0, var204=r2, var1364=z0, var1875=java.lang.Object, var1447=$r1}
; {jdk.nashorn.internal.ir.LiteralNode=var3366, r0=var3136, r2=var204, z0=var1364, java.lang.Object=var1875, $r1=var1447}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.LiteralNode;	r2 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r1 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value>;	if $r1 != null goto $r3 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value>;	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("null");	goto [?= return];	return
;block_num 3