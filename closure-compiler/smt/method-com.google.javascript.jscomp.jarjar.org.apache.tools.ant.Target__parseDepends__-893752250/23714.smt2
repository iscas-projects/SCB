(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2714 0)
(declare-sort var1253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var1253-init () var1253)
(declare-fun <init>/-325640736 (var1253) void)
(declare-const null-String String)
(declare-const var3041 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3041 null-String)))
(declare-const var3193 String) ; Statement: r9 := @parameter1: java.lang.String 
(assert (not (= var3193 null-String)))
(declare-const var2379 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2379 null-String)))
(assert true)
(define-const var2354 Bool (isEmpty/-1285796103 var3041)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.util.ArrayList 
(assert (not (= (ite var2354 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var950 var1253 var1253-init) ; Statement: $r24 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var950)) ; Statement: specialinvoke $r24.<java.util.ArrayList: void <init>()>() 

(declare-const var950!1 var1253)
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var1253-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void)}
; {var3041=r0, var2714=null_type, var3193=r9, var2379=r6, var2354=$z0, var1253=java.util.ArrayList, var950=$r24}
; {r0=var3041, null_type=var2714, r9=var3193, r6=var2379, $z0=var2354, java.util.ArrayList=var1253, $r24=var950}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r9 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r1 = new java.util.ArrayList;	$r24 = new java.util.ArrayList;	specialinvoke $r24.<java.util.ArrayList: void <init>()>();	return $r24
;block_num 2