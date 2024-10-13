(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var2880 0)
(declare-sort var1214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2880_checkObjectToString/539912867 (var2305) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1214_min/-1112089438 (Int Int) Int)
(declare-fun var1214_max/1360571700 (Int Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2305 var2305)
(declare-const null-Int Int)
(declare-const var2749 var2305) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2749 null-var2305)))
(declare-const var3222 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3222 null-Int)))
(declare-const var767 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var767 null-Int)))
(define-const var2733 String (var2880_checkObjectToString/539912867 var2749)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(assert true)
(define-const var154 Int (length/-134980193 var2733)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0) 
(assert (>= var3222 0)) ; Cond: i1 >= 0 
(define-const var3871 Int (var1214_min/-1112089438 var3222 var154)) ; Statement: $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0) 
(assert true) ; Non Conditional
(define-const var1243 Int var3871) ; Statement: i2 = $i7 
 ; Statement: if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0) 
(assert (not (>= var767 0))) ; Negate: Cond: i3 >= 0  
(define-const var1966 Int (+ var154 var767)) ; Statement: $i5 = i0 + i3 
(define-const var1753 Int (var1214_max/1360571700 var1966 0)) ; Statement: $i8 = staticinvoke <java.lang.Math: int max(int,int)>($i5, 0) 
 ; Statement: goto [?= $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8)] 
(assert true) ; Non Conditional
(define-const var1231 Int (var1214_min/-1112089438 var1243 var1753)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8) 
(assert (and true (and (>= var1231 0) (>= (str.len var2733) var1753) (>= var1753 var1231))))
(define-const var2896 String (substring/-1240304868 var2733 var1231 var1753)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i4, $i8) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2880_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var1214_min/-1112089438=([int, int], int), var1214_max/1360571700=([int, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2305=java.lang.Object, var2749=r0, var3222=i1, var767=i3, var2880=jdk.nashorn.internal.objects.NativeString, var2733=r1, var154=i0, var1214=java.lang.Math, var3871=$i7, var1243=i2, var1966=$i5, var1753=$i8, var1231=$i4, var2896=$r2}
; {java.lang.Object=var2305, r0=var2749, i1=var3222, i3=var767, jdk.nashorn.internal.objects.NativeString=var2880, r1=var2733, i0=var154, java.lang.Math=var1214, $i7=var3871, i2=var1243, $i5=var1966, $i8=var1753, $i4=var1231, $r2=var2896}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i1 := @parameter1: int;	i3 := @parameter2: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 0 goto $i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0);	$i7 = staticinvoke <java.lang.Math: int min(int,int)>(i1, i0);	i2 = $i7;	if i3 >= 0 goto $i8 = staticinvoke <java.lang.Math: int min(int,int)>(i3, i0);	$i5 = i0 + i3;	$i8 = staticinvoke <java.lang.Math: int max(int,int)>($i5, 0);	goto [?= $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8)];	$i4 = staticinvoke <java.lang.Math: int min(int,int)>(i2, $i8);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i4, $i8);	return $r2
;block_num 5