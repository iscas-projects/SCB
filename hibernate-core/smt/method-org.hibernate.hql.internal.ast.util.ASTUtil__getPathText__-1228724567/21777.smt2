(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2747_getFirstChild/-534341403 (var2747) var2747)
(declare-fun var2747_getText/-200495485 (var2747) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var2747 var2747)
(declare-const var2745 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2745 null-String)))
(declare-const var901 var2747) ; Statement: r0 := @parameter1: antlr.collections.AST 
(assert (not (= var901 null-var2747)))
(define-const var2640 var2747 (var2747_getFirstChild/-534341403 var901)) ; Statement: r1 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>() 
 ; Statement: if r1 == null goto $r3 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert (= var2640 null-var2747)) ; Cond: r1 == null 
(define-const var2082 String (var2747_getText/-200495485 var901)) ; Statement: $r3 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>() 
(assert true)
;(assert (append/672562846 var2745 var2082)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2745!1 String)
(assert (= var2745!1 (str.++ var2745 var2082)))
 ; Statement: if r1 == null goto return 
(assert (= var2640 null-var2747)) ; Cond: r1 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2747_getFirstChild/-534341403=([antlr.collections.AST], antlr.collections.AST), var2747_getText/-200495485=([antlr.collections.AST], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2745=r2, var2747=antlr.collections.AST, var901=r0, var2640=r1, var2082=$r3}
; {r2=var2745, antlr.collections.AST=var2747, r0=var901, r1=var2640, $r3=var2082}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: antlr.collections.AST;	r1 = interfaceinvoke r0.<antlr.collections.AST: antlr.collections.AST getFirstChild()>();	if r1 == null goto $r3 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	$r3 = interfaceinvoke r0.<antlr.collections.AST: java.lang.String getText()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	if r1 == null goto return;	return
;block_num 3