(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3713 0)
(declare-sort var3102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3102-init () var3102)
(declare-fun <init>/-325640736 (var3102) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3480 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3480 null-String)))
(define-const var1570 var3102 var3102-init) ; Statement: $r7 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1570)) ; Statement: specialinvoke $r7.<java.util.ArrayList: void <init>()>() 

(declare-const var1570!1 var3102)
(assert true) ; Non Conditional
(assert true)
(define-const var3453 Int (length/-134980193 var3480)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto return $r7 
(assert (= var3453 0)) ; Cond: $i0 == 0 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3102-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int)}
; {var3480=r5, var3713=null_type, var3102=java.util.ArrayList, var1570=$r7, var3453=$i0}
; {r5=var3480, null_type=var3713, java.util.ArrayList=var3102, $r7=var1570, $i0=var3453}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r5 := @parameter0: java.lang.String;	$r7 = new java.util.ArrayList;	specialinvoke $r7.<java.util.ArrayList: void <init>()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	if $i0 == 0 goto return $r7;	return $r7
;block_num 3