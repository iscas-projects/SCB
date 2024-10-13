(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort var2842 0)
(declare-sort var3021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun expression/1120454444 (var3600) var2842)
(declare-fun conversion/1120454444 (var3600) var3021)
(declare-const null-var3600 var3600)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2842 var2842)
(declare-const null-var3021 var3021)
(declare-const var3576 var3600) ; Statement: r1 := @this: jdk.nashorn.internal.ir.ThrowNode 
(assert (not (= var3576 null-var3600)))
(declare-const var3009 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3009 null-String)))
(declare-const var3549 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3549 null-Bool)))
(assert true)
;(assert (append/672562846 var3009 "throw ")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("throw ") 
(declare-const var3009!1 String)
(assert (= var3009!1 (str.++ var3009 "throw ")))
(define-const var2542 var2842 (expression/1120454444 var3576)) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.ThrowNode: jdk.nashorn.internal.ir.Expression expression> 
 ; Statement: if $r2 == null goto $r3 = r1.<jdk.nashorn.internal.ir.ThrowNode: jdk.nashorn.internal.ir.LocalVariableConversion conversion> 
(assert (= var2542 null-var2842)) ; Cond: $r2 == null 
(define-const var239 var3021 (conversion/1120454444 var3576)) ; Statement: $r3 = r1.<jdk.nashorn.internal.ir.ThrowNode: jdk.nashorn.internal.ir.LocalVariableConversion conversion> 
 ; Statement: if $r3 == null goto return 
(assert (= var239 null-var3021)) ; Cond: $r3 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), expression/1120454444=([jdk.nashorn.internal.ir.ThrowNode], jdk.nashorn.internal.ir.Expression), conversion/1120454444=([jdk.nashorn.internal.ir.ThrowNode], jdk.nashorn.internal.ir.LocalVariableConversion)}
; {var3600=jdk.nashorn.internal.ir.ThrowNode, var3576=r1, var3009=r0, var3549=z0, var2842=jdk.nashorn.internal.ir.Expression, var2542=$r2, var3021=jdk.nashorn.internal.ir.LocalVariableConversion, var239=$r3}
; {jdk.nashorn.internal.ir.ThrowNode=var3600, r1=var3576, r0=var3009, z0=var3549, jdk.nashorn.internal.ir.Expression=var2842, $r2=var2542, jdk.nashorn.internal.ir.LocalVariableConversion=var3021, $r3=var239}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.ir.ThrowNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("throw ");	$r2 = r1.<jdk.nashorn.internal.ir.ThrowNode: jdk.nashorn.internal.ir.Expression expression>;	if $r2 == null goto $r3 = r1.<jdk.nashorn.internal.ir.ThrowNode: jdk.nashorn.internal.ir.LocalVariableConversion conversion>;	$r3 = r1.<jdk.nashorn.internal.ir.ThrowNode: jdk.nashorn.internal.ir.LocalVariableConversion conversion>;	if $r3 == null goto return;	return
;block_num 3