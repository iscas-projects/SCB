(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2668 0)
(declare-sort var2527 0)
(declare-sort var2446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2527_checkObjectToString/539912867 (var2668) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2446_max/1360571700 (Int Int) Int)
(declare-fun var2446_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2668 var2668)
(declare-const null-Int Int)
(declare-const var76 var2668) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var76 null-var2668)))
(declare-const var3570 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3570 null-Int)))
(declare-const var2039 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2039 null-Int)))
(define-const var3729 String (var2527_checkObjectToString/539912867 var76)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(assert true)
(define-const var2525 Int (length/-134980193 var3729)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0) 
(assert (not (>= var3570 0))) ; Negate: Cond: i1 >= 0  
(define-const var1828 Int (+ var2525 var3570)) ; Statement: $i6 = i0 + i1 
(define-const var2372 Int (var2446_max/1360571700 var1828 0)) ; Statement: $i7 = staticinvoke <java.lang.Math: int max(int,int)>($i6, 0) 
 ; Statement: goto [?= i2 = $i7] 
(assert true) ; Non Conditional
(define-const var306 Int var2372) ; Statement: i2 = $i7 
 ; Statement: if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0) 
(assert (>= var2039 0)) ; Cond: i3 >= 0 
(define-const var1261 Int (var2446_min/-1112089438 var2039 var2525)) ; Statement: $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0) 
(assert true) ; Non Conditional
(define-const var130 Int (var2446_min/-1112089438 var306 var1261)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8) 
(assert (and true (and (>= var130 0) (>= (str.len var3729) var1261) (>= var1261 var130))))
(define-const var3638 String (substring/-1240304868 var3729 var130 var1261)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i4, $i8) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2527_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var2446_max/1360571700=([int, int], int), var2446_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2668=java.lang.Object, var76=r0, var3570=i1, var2039=i3, var2527=jdk.nashorn.internal.objects.NativeString, var3729=r1, var2525=i0, var1828=$i6, var2446=java.lang.Math, var2372=$i7, var306=i2, var1261=$i8, var130=$i4, var3638=$r2}
; {java.lang.Object=var2668, r0=var76, i1=var3570, i3=var2039, jdk.nashorn.internal.objects.NativeString=var2527, r1=var3729, i0=var2525, $i6=var1828, java.lang.Math=var2446, $i7=var2372, i2=var306, $i8=var1261, $i4=var130, $r2=var3638}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i1 := @parameter1: int;	i3 := @parameter2: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0);	$i6 = i0 + i1;	$i7 = staticinvoke <java.lang.Math: int max(int,int)>($i6, 0);	goto [?= i2 = $i7];	i2 = $i7;	if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0);	$i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0);	$i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i4, $i8);	return $r2
;block_num 5