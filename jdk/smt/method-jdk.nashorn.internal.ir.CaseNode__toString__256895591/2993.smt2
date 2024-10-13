(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1373 0)
(declare-sort var3250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun test/-872026194 (var1373) var3250)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1373 var1373)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var3250 var3250)
(declare-const var2440 var1373) ; Statement: r0 := @this: jdk.nashorn.internal.ir.CaseNode 
(assert (not (= var2440 null-var1373)))
(declare-const var2706 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2706 null-String)))
(declare-const var1790 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1790 null-Bool)))
(define-const var412 var3250 (test/-872026194 var2440)) ; Statement: $r1 = r0.<jdk.nashorn.internal.ir.CaseNode: jdk.nashorn.internal.ir.Expression test> 
 ; Statement: if $r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default:") 
(assert (= var412 null-var3250)) ; Cond: $r1 == null 
(assert true)
;(assert (append/672562846 var2706 "default:")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default:") 
(declare-const var2706!1 String)
(assert (= var2706!1 (str.++ var2706 "default:")))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {test/-872026194=([jdk.nashorn.internal.ir.CaseNode], jdk.nashorn.internal.ir.Expression), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1373=jdk.nashorn.internal.ir.CaseNode, var2440=r0, var2706=r2, var1790=z0, var3250=jdk.nashorn.internal.ir.Expression, var412=$r1}
; {jdk.nashorn.internal.ir.CaseNode=var1373, r0=var2440, r2=var2706, z0=var1790, jdk.nashorn.internal.ir.Expression=var3250, $r1=var412}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.CaseNode;	r2 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	$r1 = r0.<jdk.nashorn.internal.ir.CaseNode: jdk.nashorn.internal.ir.Expression test>;	if $r1 == null goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default:");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("default:");	return
;block_num 3