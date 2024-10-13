(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var899 0)
(declare-sort var3356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isYield/-1036317822 (var899) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/2000915118 (var899) var3356)
(declare-const null-var899 var899)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3356 var3356)
(declare-const var177 var899) ; Statement: r1 := @this: jdk.nashorn.internal.ir.ReturnNode 
(assert (not (= var177 null-var899)))
(declare-const var1146 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1146 null-String)))
(declare-const var2004 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2004 null-Bool)))
(assert true)
(define-const var2415 Bool (isYield/-1036317822 var177)) ; Statement: $z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.ReturnNode: boolean isYield()>() 
 ; Statement: if $z0 == 0 goto $r4 = "return" 
(assert (not (= (ite var2415 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3766 String "yield") ; Statement: $r4 = "yield" 
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1146 var3766)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1146!1 String)
(assert (= var1146!1 (str.++ var1146 var3766)))
(define-const var1793 var3356 (expression/2000915118 var177)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.ReturnNode: jdk.nashorn.internal.ir.Expression expression> 
 ; Statement: if $r2 == null goto return 
(assert (= var1793 null-var3356)) ; Cond: $r2 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isYield/-1036317822=([jdk.nashorn.internal.ir.ReturnNode], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/2000915118=([jdk.nashorn.internal.ir.ReturnNode], jdk.nashorn.internal.ir.Expression)}
; {var899=jdk.nashorn.internal.ir.ReturnNode, var177=r1, var1146=r0, var2004=z1, var2415=$z0, var3766=$r4, var3356=jdk.nashorn.internal.ir.Expression, var1793=$r2}
; {jdk.nashorn.internal.ir.ReturnNode=var899, r1=var177, r0=var1146, z1=var2004, $z0=var2415, $r4=var3766, jdk.nashorn.internal.ir.Expression=var3356, $r2=var1793}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.ReturnNode;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	$z0 = virtualinvoke r1.<jdk.nashorn.internal.ir.ReturnNode: boolean isYield()>();	if $z0 == 0 goto $r4 = "return";	$r4 = "yield";	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4)];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r2 = r1.<jdk.nashorn.internal.ir.ReturnNode: jdk.nashorn.internal.ir.Expression expression>;	if $r2 == null goto return;	return
;block_num 4