(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2640 0)
(declare-sort var3424 0)
(declare-sort var2415 0)
(declare-sort var589 0)
(declare-sort var2027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3424_toString/-1831155339 (var2640) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3424_toInteger/1184266250 (var2640) Int)
(declare-fun cast-from-var2415-to-var2640 (var2415) var2640)
(declare-fun var2027_max/1360571700 (Int Int) Int)
(declare-fun var2027_min/-1112089438 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2640 var2640)
(declare-const var589-UNDEFINED var2415)
(declare-const var3751 var2640) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3751 null-var2640)))
(declare-const var2768 var2640) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2768 null-var2640)))
(declare-const var109 var2640) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var109 null-var2640)))
(define-const var1915 String (var3424_toString/-1831155339 var3751)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
(assert true)
(define-const var3965 Int (length/-134980193 var1915)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var962 Int (var3424_toInteger/1184266250 var2768)) ; Statement: i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2) 
 ; Statement: if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert (>= var962 0)) ; Cond: i6 >= 0 
(define-const var28 var2415 var589-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3) 
(assert (not (= var109 (cast-from-var2415-to-var2640 var28)))) ; Cond: r3 != $r4 
(define-const var2356 Int (var3424_toInteger/1184266250 var109)) ; Statement: $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3) 
(assert true) ; Non Conditional
(define-const var75 Int (var2027_max/1360571700 var2356 0)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0) 
(define-const var3818 Int (- var3965 var962)) ; Statement: $i1 = i0 - i6 
(define-const var1196 Int (var2027_min/-1112089438 var75 var3818)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1) 
 ; Statement: if $i4 > 0 goto $i3 = i6 + $i4 
(assert (> var1196 0)) ; Cond: $i4 > 0 
(define-const var3565 Int (+ var962 var1196)) ; Statement: $i3 = i6 + $i4 
(assert (not (and true (and (>= var962 0) (>= (str.len var1915) var3565) (>= var3565 var962)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3424_toString/-1831155339=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var3424_toInteger/1184266250=([java.lang.Object], int), cast-from-var2415-to-var2640=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var2027_max/1360571700=([int, int], int), var2027_min/-1112089438=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2640=java.lang.Object, var3751=r0, var2768=r2, var109=r3, var3424=jdk.nashorn.internal.runtime.JSType, var1915=r1, var3965=i0, var962=i6, var2415=jdk.nashorn.internal.runtime.Undefined, var589=jdk.nashorn.internal.runtime.ScriptRuntime, var28=$r4, var2356=$i7, var2027=java.lang.Math, var75=$i2, var3818=$i1, var1196=$i4, var3565=$i3, var521=$r5}
; {java.lang.Object=var2640, r0=var3751, r2=var2768, r3=var109, jdk.nashorn.internal.runtime.JSType=var3424, r1=var1915, i0=var3965, i6=var962, jdk.nashorn.internal.runtime.Undefined=var2415, jdk.nashorn.internal.runtime.ScriptRuntime=var589, $r4=var28, $i7=var2356, java.lang.Math=var2027, $i2=var75, $i1=var3818, $i4=var1196, $i3=var3565, $r5=var521}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2);	if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3);	$i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3);	$i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0);	$i1 = i0 - i6;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1);	if $i4 > 0 goto $i3 = i6 + $i4;	$i3 = i6 + $i4;	$r5 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i3);	return $r5
;block_num 6