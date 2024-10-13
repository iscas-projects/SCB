(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3797 0)
(declare-sort var332 0)
(declare-sort var537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var332_checkNotNullParameter/-2060636419 (var537 String) void)
(declare-fun cast-from-String-to-var537 (String) var537)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3274 String) ; Statement: $r0 := @parameter0: java.lang.String 
(assert (not (= var3274 null-String)))
(declare-const var1114 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1114 null-Int)))
;(assert (var332_checkNotNullParameter/-2060636419 (cast-from-String-to-var537 var3274) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var3274!1 String)
(declare-const var991 String)
(define-const var67 Int var1114) ; Statement: i4 = i0 
(assert true)
(define-const var2738 Int (length/-134980193 var3274!1)) ; Statement: i1 = virtualinvoke $r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto $i2 = virtualinvoke $r0.<java.lang.String: int length()>() 
(assert (>= var67 var2738)) ; Cond: i4 >= i1 
(assert true)
(define-const var153 Int (length/-134980193 var3274!1)) ; Statement: $i2 = virtualinvoke $r0.<java.lang.String: int length()>() 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {var332_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-String-to-var537=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var3274=$r0, var3797=null_type, var1114=i0, var332=kotlin.jvm.internal.Intrinsics, var537=java.lang.Object, var991="<this>", var67=i4, var2738=i1, var153=$i2}
; {$r0=var3274, null_type=var3797, i0=var1114, kotlin.jvm.internal.Intrinsics=var332, java.lang.Object=var537, "<this>"=var991, i4=var67, i1=var2738, $i2=var153}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts $r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	i4 = i0;	i1 = virtualinvoke $r0.<java.lang.String: int length()>();	if i4 >= i1 goto $i2 = virtualinvoke $r0.<java.lang.String: int length()>();	$i2 = virtualinvoke $r0.<java.lang.String: int length()>();	return $i2
;block_num 3