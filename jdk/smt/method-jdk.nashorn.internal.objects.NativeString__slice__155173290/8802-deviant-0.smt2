(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3947 0)
(declare-sort var1505 0)
(declare-sort var2119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1505_checkObjectToString/539912867 (var3947) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2119_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3947 var3947)
(declare-const null-Int Int)
(declare-const var3609 var3947) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3609 null-var3947)))
(declare-const var2504 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2504 null-Int)))
(declare-const var2574 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2574 null-Int)))
(define-const var3647 String (var1505_checkObjectToString/539912867 var3609)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(assert true)
(define-const var3545 Int (length/-134980193 var3647)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0) 
(assert (>= var2504 0)) ; Cond: i1 >= 0 
(define-const var1392 Int (var2119_min/-1112089438 var2504 var3545)) ; Statement: $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0) 
(assert true) ; Non Conditional
(define-const var2229 Int var1392) ; Statement: i2 = $i7 
 ; Statement: if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0) 
(assert (>= var2574 0)) ; Cond: i3 >= 0 
(define-const var1588 Int (var2119_min/-1112089438 var2574 var3545)) ; Statement: $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0) 
(assert true) ; Non Conditional
(define-const var1471 Int (var2119_min/-1112089438 var2229 var1588)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8) 
(assert (not (and true (and (>= var1471 0) (>= (str.len var3647) var1588) (>= var1588 var1471)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1505_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var2119_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3947=java.lang.Object, var3609=r0, var2504=i1, var2574=i3, var1505=jdk.nashorn.internal.objects.NativeString, var3647=r1, var3545=i0, var2119=java.lang.Math, var1392=$i7, var2229=i2, var1588=$i8, var1471=$i4, var1209=$r2}
; {java.lang.Object=var3947, r0=var3609, i1=var2504, i3=var2574, jdk.nashorn.internal.objects.NativeString=var1505, r1=var3647, i0=var3545, java.lang.Math=var2119, $i7=var1392, i2=var2229, $i8=var1588, $i4=var1471, $r2=var1209}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i1 := @parameter1: int;	i3 := @parameter2: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0);	$i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0);	i2 = $i7;	if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0);	$i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0);	$i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i4, $i8);	return $r2
;block_num 5