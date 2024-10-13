(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var443 0)
(declare-sort var585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isYield/-1036317822 (var443) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/2000915118 (var443) var585)
(declare-const null-var443 var443)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var585 var585)
(declare-const var3071 var443) ; Statement: r1 := @this: jdk.nashorn.internal.ir.ReturnNode 
(assert (not (= var3071 null-var443)))
(declare-const var2072 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2072 null-String)))
(declare-const var554 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var554 null-Bool)))
(assert true)
(define-const var3768 Bool (isYield/-1036317822 var3071)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.ReturnNode: boolean isYield()>() 
 ; Statement: if $z0 == 0 goto $r4 = "return" 
(assert (= (ite var3768 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3565 String "return") ; Statement: $r4 = "return" 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2072 var3565)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2072!1 String)
(assert (= var2072!1 (str.++ var2072 var3565)))
(define-const var1547 var585 (expression/2000915118 var3071)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.ReturnNode: jdk.nashorn.internal.ir.Expression expression> 
 ; Statement: if $r2 == null goto return 
(assert (= var1547 null-var585)) ; Cond: $r2 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isYield/-1036317822=([jdk.nashorn.internal.ir.ReturnNode], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/2000915118=([jdk.nashorn.internal.ir.ReturnNode], jdk.nashorn.internal.ir.Expression)}
; {var443=jdk.nashorn.internal.ir.ReturnNode, var3071=r1, var2072=r0, var554=z1, var3768=$z0, var3565=$r4, var585=jdk.nashorn.internal.ir.Expression, var1547=$r2}
; {jdk.nashorn.internal.ir.ReturnNode=var443, r1=var3071, r0=var2072, z1=var554, $z0=var3768, $r4=var3565, jdk.nashorn.internal.ir.Expression=var585, $r2=var1547}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.ReturnNode;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.ReturnNode: boolean isYield()>();	if $z0 == 0 goto $r4 = "return";	$r4 = "return";	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r2 = r1.<jdk.nashorn.internal.ir.ReturnNode: jdk.nashorn.internal.ir.Expression expression>;	if $r2 == null goto return;	return
;block_num 4