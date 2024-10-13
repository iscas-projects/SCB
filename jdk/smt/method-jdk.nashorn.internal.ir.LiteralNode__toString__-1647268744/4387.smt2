(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1296 0)
(declare-sort var1924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/843938677 (var1296) var1924)
(declare-fun toString/-522406933 (var1924) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1296 var1296)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1924 var1924)
(declare-const var624 var1296) ; Statement: r0 := @this: jdk.nashorn.internal.ir.LiteralNode 
(assert (not (= var624 null-var1296)))
(declare-const var839 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var839 null-String)))
(declare-const var2703 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2703 null-Bool)))
(define-const var2722 var1924 (value/843938677 var624)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value> 
 ; Statement: if $r1 != null goto $r3 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value> 
(assert (not (= var2722 null-var1924))) ; Cond: $r1 != null 
(define-const var2758 var1924 (value/843938677 var624)) ; Statement: $r3 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value> 
(assert true)
(define-const var946 String (toString/-522406933 var2758)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var839 var946)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var839!1 String)
(assert (= var839!1 (str.++ var839 var946)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {value/843938677=([jdk.nashorn.internal.ir.LiteralNode], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1296=jdk.nashorn.internal.ir.LiteralNode, var624=r0, var839=r2, var2703=z0, var1924=java.lang.Object, var2722=$r1, var2758=$r3, var946=$r4}
; {jdk.nashorn.internal.ir.LiteralNode=var1296, r0=var624, r2=var839, z0=var2703, java.lang.Object=var1924, $r1=var2722, $r3=var2758, $r4=var946}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.LiteralNode;	r2 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r1 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value>;	if $r1 != null goto $r3 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value>;	$r3 = r0.<jdk.nashorn.internal.ir.LiteralNode: java.lang.Object value>;	$r4 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	return
;block_num 3