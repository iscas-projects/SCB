(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var241 0)
(declare-sort var2234 0)
(declare-sort var1578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2234_checkObjectToString/539912867 (var241) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1578_max/1360571700 (Int Int) Int)
(declare-fun var1578_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var241 var241)
(declare-const null-Int Int)
(declare-const var1456 var241) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1456 null-var241)))
(declare-const var1748 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1748 null-Int)))
(declare-const var168 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var168 null-Int)))
(define-const var824 String (var2234_checkObjectToString/539912867 var1456)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(assert true)
(define-const var105 Int (length/-134980193 var824)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0) 
(assert (not (>= var1748 0))) ; Negate: Cond: i1 >= 0  
(define-const var1570 Int (+ var105 var1748)) ; Statement: $i6 = i0 + i1 
(define-const var455 Int (var1578_max/1360571700 var1570 0)) ; Statement: $i7 = staticinvoke <java.lang.Math: int max(int,int)>($i6, 0) 
 ; Statement: goto [?= i2 = $i7] 
(assert true) ; Non Conditional
(define-const var2442 Int var455) ; Statement: i2 = $i7 
 ; Statement: if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0) 
(assert (not (>= var168 0))) ; Negate: Cond: i3 >= 0  
(define-const var2786 Int (+ var105 var168)) ; Statement: $i5 = i0 + i3 
(define-const var2056 Int (var1578_max/1360571700 var2786 0)) ; Statement: $i8 = staticinvoke <java.lang.Math: int max(int,int)>($i5, 0) 
 ; Statement: goto [?= $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8)] 
(assert true) ; Non Conditional
(define-const var357 Int (var1578_min/-1112089438 var2442 var2056)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8) 
(assert (and true (and (>= var357 0) (>= (str.len var824) var2056) (>= var2056 var357))))
(define-const var3021 String (substring/-1240304868 var824 var357 var2056)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i4, $i8) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2234_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var1578_max/1360571700=([int, int], int), var1578_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var241=java.lang.Object, var1456=r0, var1748=i1, var168=i3, var2234=jdk.nashorn.internal.objects.NativeString, var824=r1, var105=i0, var1570=$i6, var1578=java.lang.Math, var455=$i7, var2442=i2, var2786=$i5, var2056=$i8, var357=$i4, var3021=$r2}
; {java.lang.Object=var241, r0=var1456, i1=var1748, i3=var168, jdk.nashorn.internal.objects.NativeString=var2234, r1=var824, i0=var105, $i6=var1570, java.lang.Math=var1578, $i7=var455, i2=var2442, $i5=var2786, $i8=var2056, $i4=var357, $r2=var3021}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i1 := @parameter1: int;	i3 := @parameter2: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0);	$i6 = i0 + i1;	$i7 = staticinvoke <java.lang.Math: int max(int,int)>($i6, 0);	goto [?= i2 = $i7];	i2 = $i7;	if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0);	$i5 = i0 + i3;	$i8 = staticinvoke <java.lang.Math: int max(int,int)>($i5, 0);	goto [?= $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8)];	$i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i4, $i8);	return $r2
;block_num 5