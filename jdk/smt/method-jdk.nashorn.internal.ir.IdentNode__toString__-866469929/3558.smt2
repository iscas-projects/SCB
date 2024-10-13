(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1711 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1832702666 (var1711) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1711 var1711)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2816 var1711) ; Statement: r1 := @this: jdk.nashorn.internal.ir.IdentNode 
(assert (not (= var2816 null-var1711)))
(declare-const var1822 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1822 null-String)))
(declare-const var579 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var579 null-Bool)))
 ; Statement: if z0 == 0 goto $r4 = r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String name> 
(assert (= (ite var579 1 0) 0)) ; Cond: z0 == 0 
(define-const var290 String (name/-1832702666 var2816)) ; Statement: $r4 = r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String name> 
(assert true)
;(assert (append/672562846 var1822 var290)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1822!1 String)
(assert (= var1822!1 (str.++ var1822 var290)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1832702666=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1711=jdk.nashorn.internal.ir.IdentNode, var2816=r1, var1822=r0, var579=z0, var290=$r4}
; {jdk.nashorn.internal.ir.IdentNode=var1711, r1=var2816, r0=var1822, z0=var579, $r4=var290}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.IdentNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	if z0 == 0 goto $r4 = r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String name>;	$r4 = r1.<jdk.nashorn.internal.ir.IdentNode: java.lang.String name>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	return
;block_num 2