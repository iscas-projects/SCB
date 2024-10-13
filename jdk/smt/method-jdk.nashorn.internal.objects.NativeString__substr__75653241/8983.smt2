(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1185 0)
(declare-sort var1117 0)
(declare-sort var1267 0)
(declare-sort var3903 0)
(declare-sort var2937 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1117_toString/-1831155339 (var1185) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1117_toInteger/1184266250 (var1185) Int)
(declare-fun cast-from-var1267-to-var1185 (var1267) var1185)
(declare-fun var2937_max/1360571700 (Int Int) Int)
(declare-fun var2937_min/-1112089438 (Int Int) Int)
(declare-const null-var1185 var1185)
(declare-const var3903-UNDEFINED var1267)
(declare-const var2514 var1185) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2514 null-var1185)))
(declare-const var1114 var1185) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var1114 null-var1185)))
(declare-const var3365 var1185) ; Statement: r3 := @parameter2: java.lang.Object 
(assert (not (= var3365 null-var1185)))
(define-const var2316 String (var1117_toString/-1831155339 var2514)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0) 
(assert true)
(define-const var594 Int (length/-134980193 var2316)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var810 Int (var1117_toInteger/1184266250 var1114)) ; Statement: i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2) 
 ; Statement: if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
(assert (>= var810 0)) ; Cond: i6 >= 0 
(define-const var573 var1267 var3903-UNDEFINED) ; Statement: $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED> 
 ; Statement: if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3) 
(assert (not (= var3365 (cast-from-var1267-to-var1185 var573)))) ; Cond: r3 != $r4 
(define-const var1119 Int (var1117_toInteger/1184266250 var3365)) ; Statement: $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3) 
(assert true) ; Non Conditional
(define-const var3715 Int (var2937_max/1360571700 var1119 0)) ; Statement: $i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0) 
(define-const var1544 Int (- var594 var810)) ; Statement: $i1 = i0 - i6 
(define-const var3845 Int (var2937_min/-1112089438 var3715 var1544)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1) 
 ; Statement: if $i4 > 0 goto $i3 = i6 + $i4 
(assert (not (> var3845 0))) ; Negate: Cond: $i4 > 0  
(define-const var1352 String "") ; Statement: $r5 = "" 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1117_toString/-1831155339=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var1117_toInteger/1184266250=([java.lang.Object], int), cast-from-var1267-to-var1185=([jdk.nashorn.internal.runtime.Undefined], java.lang.Object), var2937_max/1360571700=([int, int], int), var2937_min/-1112089438=([int, int], int)}
; {var1185=java.lang.Object, var2514=r0, var1114=r2, var3365=r3, var1117=jdk.nashorn.internal.runtime.JSType, var2316=r1, var594=i0, var810=i6, var1267=jdk.nashorn.internal.runtime.Undefined, var3903=jdk.nashorn.internal.runtime.ScriptRuntime, var573=$r4, var1119=$i7, var2937=java.lang.Math, var3715=$i2, var1544=$i1, var3845=$i4, var1352=$r5}
; {java.lang.Object=var1185, r0=var2514, r2=var1114, r3=var3365, jdk.nashorn.internal.runtime.JSType=var1117, r1=var2316, i0=var594, i6=var810, jdk.nashorn.internal.runtime.Undefined=var1267, jdk.nashorn.internal.runtime.ScriptRuntime=var3903, $r4=var573, $i7=var1119, java.lang.Math=var2937, $i2=var3715, $i1=var1544, $i4=var3845, $r5=var1352}
;seq <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r2 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: java.lang.String toString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	i6 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r2);	if i6 >= 0 goto $r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	$r4 = <jdk.nashorn.internal.runtime.ScriptRuntime: jdk.nashorn.internal.runtime.Undefined UNDEFINED>;	if r3 != $r4 goto $i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3);	$i7 = staticinvoke <jdk.nashorn.internal.runtime.JSType: int toInteger(java.lang.Object)>(r3);	$i2 = staticinvoke <java.lang.Math: int max(int,int)>($i7, 0);	$i1 = i0 - i6;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i2, $i1);	if $i4 > 0 goto $i3 = i6 + $i4;	$r5 = "";	goto [?= return $r5];	return $r5
;block_num 6