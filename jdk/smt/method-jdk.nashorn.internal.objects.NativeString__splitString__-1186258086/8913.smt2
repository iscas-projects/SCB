(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1166 0)
(declare-sort var2399 0)
(declare-sort var3463 0)
(declare-sort var247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2399_min/-1046372827 (Int Int) Int)
(declare-fun arr-var3463-init () (Array Int var3463))
(declare-fun var247-init () var247)
(declare-fun <init>/-1815839787 (var247 (Array Int var3463)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1434 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1434 null-String)))
(declare-const var2188 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2188 null-String)))
(declare-const var664 Int) ; Statement: l0 := @parameter2: long 
(assert (not (= var664 null-Int)))
(assert true)
(define-const var928 Bool (isEmpty/-1285796103 var2188)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r11 = new java.util.LinkedList 
(assert (not (= (ite var928 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var851 Int (length/-134980193 var1434)) ; Statement: $i6 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3605 Int (cast-from-Int-to-Int var851)) ; Statement: $l7 = (long) $i6 
(define-const var2548 Int (var2399_min/-1046372827 var3605 var664)) ; Statement: $l8 = staticinvoke <java.lang.Math: long min(long,long)>($l7, l0) 
(define-const var2230 Int (cast-from-Int-to-Int var2548)) ; Statement: i10 = (int) $l8 
(define-const var162 (Array Int var3463) arr-var3463-init) ; Statement: r7 = newarray (java.lang.Object)[i10] 
(define-const var2264 Int 0) ; Statement: i11 = 0 
(assert true) ; Non Conditional
 ; Statement: if i11 >= i10 goto $r10 = new jdk.nashorn.internal.objects.NativeArray 
(assert (>= var2264 var2230)) ; Cond: i11 >= i10 
(define-const var55 var247 var247-init) ; Statement: $r10 = new jdk.nashorn.internal.objects.NativeArray 
(assert true)
;(assert (<init>/-1815839787 var55 var162)) ; Statement: specialinvoke $r10.<jdk.nashorn.internal.objects.NativeArray: void <init>(java.lang.Object[])>(r7) 

(declare-const var55!1 var247)
(declare-const var162!1 (Array Int var3463))
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long), var2399_min/-1046372827=([long, long], long), arr-var3463-init=([], java.lang.Object[]), var247-init=([], jdk.nashorn.internal.objects.NativeArray), <init>/-1815839787=([jdk.nashorn.internal.objects.NativeArray, java.lang.Object[]], void)}
; {var1434=r2, var1166=null_type, var2188=r0, var664=l0, var928=$z0, var851=$i6, var3605=$l7, var2399=java.lang.Math, var2548=$l8, var2230=i10, var3463=java.lang.Object, var162=r7, var2264=i11, var247=jdk.nashorn.internal.objects.NativeArray, var55=$r10}
; {r2=var1434, null_type=var1166, r0=var2188, l0=var664, $z0=var928, $i6=var851, $l7=var3605, java.lang.Math=var2399, $l8=var2548, i10=var2230, java.lang.Object=var3463, r7=var162, i11=var2264, jdk.nashorn.internal.objects.NativeArray=var247, $r10=var55}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	l0 := @parameter2: long;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r11 = new java.util.LinkedList;	$i6 = virtualinvoke r2.<java.lang.String: int length()>();	$l7 = (long) $i6;	$l8 = staticinvoke <java.lang.Math: long min(long,long)>($l7, l0);	i10 = (int) $l8;	r7 = newarray (java.lang.Object)[i10];	i11 = 0;	if i11 >= i10 goto $r10 = new jdk.nashorn.internal.objects.NativeArray;	$r10 = new jdk.nashorn.internal.objects.NativeArray;	specialinvoke $r10.<jdk.nashorn.internal.objects.NativeArray: void <init>(java.lang.Object[])>(r7);	return $r10
;block_num 4