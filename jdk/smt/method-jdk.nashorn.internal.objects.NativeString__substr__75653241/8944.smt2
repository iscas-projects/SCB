(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1088 0)
(declare-sort var751 0)
(declare-sort var2235 0)
(declare-sort var1305 0)
(declare-sort var1101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var751_toString/-1831155339 (var1088) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var751_toInteger/1184266250 (var1088) Int)
(declare-fun cast-from-var2235-to-var1088 (var2235) var1088)
(declare-fun var1101_max/1360571700 (Int Int) Int)
(declare-fun var1101_min/-1112089438 (Int Int) Int)
(declare-const null-var1088 var1088)
(declare-const var1305-UNDEFINED var2235)
(declare-const var3045 var1088) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3045 null-var1088)))
(declare-const var100 var1088) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var100 null-var1088)))
(declare-const var1853 var1088) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var1853 null-var1088)))
(define-const var663 String (var751_toString/-1831155339 var3045)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
(assert true)
(define-const var89 Int (length/-134980193 var663)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var135 Int (var751_toInteger/1184266250 var100)) ; Statement: i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2) 
 ; Statement: if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert (>= var135 0)) ; Cond: i6 >= 0 
(define-const var788 var2235 var1305-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3) 
(assert (not (not (= var1853 (cast-from-var2235-to-var1088 var788))))) ; Negate: Cond: r3 != $r4  
(define-const var1939 Int 2147483647) ; Statement: $i7 = 2147483647 
 ; Statement: goto [?= $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0)] 
(assert true) ; Non Conditional
(define-const var3370 Int (var1101_max/1360571700 var1939 0)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0) 
(define-const var1079 Int (- var89 var135)) ; Statement: $i1 = i0 - i6 
(define-const var2428 Int (var1101_min/-1112089438 var3370 var1079)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1) 
 ; Statement: if $i4 > 0 goto $i3 = i6 + $i4 
(assert (not (> var2428 0))) ; Negate: Cond: $i4 > 0  
(define-const var1921 String "") ; Statement: $r5 = "" 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var751_toString/-1831155339=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var751_toInteger/1184266250=([java.lang.Object], int), cast-from-var2235-to-var1088=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var1101_max/1360571700=([int, int], int), var1101_min/-1112089438=([int, int], int)}
; {var1088=java.lang.Object, var3045=r0, var100=r2, var1853=r3, var751=jdk.nashorn.internal.runtime.JSType, var663=r1, var89=i0, var135=i6, var2235=jdk.nashorn.internal.runtime.Undefined, var1305=jdk.nashorn.internal.runtime.ScriptRuntime, var788=$r4, var1939=$i7, var1101=java.lang.Math, var3370=$i2, var1079=$i1, var2428=$i4, var1921=$r5}
; {java.lang.Object=var1088, r0=var3045, r2=var100, r3=var1853, jdk.nashorn.internal.runtime.JSType=var751, r1=var663, i0=var89, i6=var135, jdk.nashorn.internal.runtime.Undefined=var2235, jdk.nashorn.internal.runtime.ScriptRuntime=var1305, $r4=var788, $i7=var1939, java.lang.Math=var1101, $i2=var3370, $i1=var1079, $i4=var2428, $r5=var1921}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2);	if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3);	$i7 = 2147483647;	goto [?= $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0)];	$i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0);	$i1 = i0 - i6;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1);	if $i4 > 0 goto $i3 = i6 + $i4;	$r5 = "";	goto [?= return $r5];	return $r5
;block_num 6