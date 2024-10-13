(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2422 0)
(declare-sort var3677 0)
(declare-sort var3326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3677-init () var3677)
(declare-fun <init>/-325640736 (var3677) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3326_builder/-311177978 () String)
(declare-fun length/-171891354 (String) Int)
(declare-const null-String String)
(declare-const var813 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var813 null-String)))
(define-const var2281 var3677 var3677-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2281)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var2281!1 var3677)
(assert true)
(define-const var3371 Int (length/-134980193 var813)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2028 Int 0) ; Statement: c5 = 0 
(define-const var1740 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var2774 String var3326_builder/-311177978) ; Statement: r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(define-const var1051 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto $i1 = virtualinvoke r2.<java.lang.StringBuilder: int length()>() 
(assert (>= var1051 var3371)) ; Cond: i6 >= i0 
(assert true)
(define-const var3852 Int (length/-171891354 var2774)) ; Statement: $i1 = virtualinvoke r2.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i1 <= 0 goto return $r0 
(assert (<= var3852 0)) ; Cond: $i1 <= 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3677-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), length/-134980193=([java.lang.String], int), var3326_builder/-311177978=([], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var813=r1, var2422=null_type, var3677=java.util.ArrayList, var2281=$r0, var3371=i0, var2028=c5, var1740=z1, var3326=cn.hutool.core.util.StrUtil, var2774=r2, var1051=i6, var3852=$i1}
; {r1=var813, null_type=var2422, java.util.ArrayList=var3677, $r0=var2281, i0=var3371, c5=var2028, z1=var1740, cn.hutool.core.util.StrUtil=var3326, r2=var2774, i6=var1051, $i1=var3852}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	i0 = virtualinvoke r1.<java.lang.String: int length()>();	c5 = 0;	z1 = 0;	r2 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	i6 = 0;	if i6 >= i0 goto $i1 = virtualinvoke r2.<java.lang.StringBuilder: int length()>();	$i1 = virtualinvoke r2.<java.lang.StringBuilder: int length()>();	if $i1 <= 0 goto return $r0;	return $r0
;block_num 4