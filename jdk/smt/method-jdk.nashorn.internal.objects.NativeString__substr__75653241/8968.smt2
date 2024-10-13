(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3544 0)
(declare-sort var2744 0)
(declare-sort var3153 0)
(declare-sort var2001 0)
(declare-sort var2605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2744_toString/-1831155339 (var3544) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2744_toInteger/1184266250 (var3544) Int)
(declare-fun cast-from-var3153-to-var3544 (var3153) var3544)
(declare-fun var2605_max/1360571700 (Int Int) Int)
(declare-fun var2605_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3544 var3544)
(declare-const var2001-UNDEFINED var3153)
(declare-const var1432 var3544) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1432 null-var3544)))
(declare-const var3504 var3544) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3504 null-var3544)))
(declare-const var750 var3544) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var750 null-var3544)))
(define-const var2277 String (var2744_toString/-1831155339 var1432)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
(assert true)
(define-const var1930 Int (length/-134980193 var2277)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2058 Int (var2744_toInteger/1184266250 var3504)) ; Statement: i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2) 
 ; Statement: if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert (>= var2058 0)) ; Cond: i6 >= 0 
(define-const var293 var3153 var2001-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3) 
(assert (not (not (= var750 (cast-from-var3153-to-var3544 var293))))) ; Negate: Cond: r3 != $r4  
(define-const var1452 Int 2147483647) ; Statement: $i7 = 2147483647 
 ; Statement: goto [?= $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0)] 
(assert true) ; Non Conditional
(define-const var3319 Int (var2605_max/1360571700 var1452 0)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0) 
(define-const var525 Int (- var1930 var2058)) ; Statement: $i1 = i0 - i6 
(define-const var1155 Int (var2605_min/-1112089438 var3319 var525)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1) 
 ; Statement: if $i4 > 0 goto $i3 = i6 + $i4 
(assert (> var1155 0)) ; Cond: $i4 > 0 
(define-const var2883 Int (+ var2058 var1155)) ; Statement: $i3 = i6 + $i4 
(assert (and true (and (>= var2058 0) (>= (str.len var2277) var2883) (>= var2883 var2058))))
(define-const var1375 String (substring/-1240304868 var2277 var2058 var2883)) ; Statement: $r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i3) 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2744_toString/-1831155339=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var2744_toInteger/1184266250=([java.lang.Object], int), cast-from-var3153-to-var3544=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var2605_max/1360571700=([int, int], int), var2605_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3544=java.lang.Object, var1432=r0, var3504=r2, var750=r3, var2744=jdk.nashorn.internal.runtime.JSType, var2277=r1, var1930=i0, var2058=i6, var3153=jdk.nashorn.internal.runtime.Undefined, var2001=jdk.nashorn.internal.runtime.ScriptRuntime, var293=$r4, var1452=$i7, var2605=java.lang.Math, var3319=$i2, var525=$i1, var1155=$i4, var2883=$i3, var1375=$r5}
; {java.lang.Object=var3544, r0=var1432, r2=var3504, r3=var750, jdk.nashorn.internal.runtime.JSType=var2744, r1=var2277, i0=var1930, i6=var2058, jdk.nashorn.internal.runtime.Undefined=var3153, jdk.nashorn.internal.runtime.ScriptRuntime=var2001, $r4=var293, $i7=var1452, java.lang.Math=var2605, $i2=var3319, $i1=var525, $i4=var1155, $i3=var2883, $r5=var1375}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2);	if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3);	$i7 = 2147483647;	goto [?= $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0)];	$i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0);	$i1 = i0 - i6;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1);	if $i4 > 0 goto $i3 = i6 + $i4;	$i3 = i6 + $i4;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i3);	return $r5
;block_num 6