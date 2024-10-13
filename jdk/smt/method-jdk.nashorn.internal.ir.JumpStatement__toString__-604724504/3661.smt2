(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1359 0)
(declare-sort var2849 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStatementName/1966429293 (var1359) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun labelName/2095634437 (var1359) String)
(declare-const null-var1359 var1359)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var637 var1359) ; Statement: r1 := @this: jdk.nashorn.internal.ir.JumpStatement 
(assert (not (= var637 null-var1359)))
(declare-const var2227 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2227 null-String)))
(declare-const var2745 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var2745 null-Bool)))
(assert true)
(define-const var2147 String (getStatementName/1966429293 var637)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.JumpStatement: java.lang.String getStatementName()>() 
(assert true)
;(assert (append/672562846 var2227 var2147)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2227!1 String)
(assert (= var2227!1 (str.++ var2227 var2147)))
(define-const var725 String (labelName/2095634437 var637)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.JumpStatement: java.lang.String labelName> 
 ; Statement: if $r3 == null goto return 
(assert (= var725 null-String)) ; Cond: $r3 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getStatementName/1966429293=([jdk.nashorn.internal.ir.JumpStatement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), labelName/2095634437=([jdk.nashorn.internal.ir.JumpStatement], java.lang.String)}
; {var1359=jdk.nashorn.internal.ir.JumpStatement, var637=r1, var2227=r0, var2745=z0, var2147=$r2, var725=$r3, var2849=null_type}
; {jdk.nashorn.internal.ir.JumpStatement=var1359, r1=var637, r0=var2227, z0=var2745, $r2=var2147, $r3=var725, null_type=var2849}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.JumpStatement;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r2 = virtualinvoke r1.<jdk.nashorn.internal.ir.JumpStatement: java.lang.String getStatementName()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<jdk.nashorn.internal.ir.JumpStatement: java.lang.String labelName>;	if $r3 == null goto return;	return
;block_num 2