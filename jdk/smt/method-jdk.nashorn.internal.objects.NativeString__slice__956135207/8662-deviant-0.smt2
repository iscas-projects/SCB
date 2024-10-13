(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1707 0)
(declare-sort var2250 0)
(declare-sort var3728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2250_checkObjectToString/539912867 (var1707) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3728_max/1360571700 (Int Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1707 var1707)
(declare-const null-Int Int)
(declare-const var3722 var1707) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3722 null-var1707)))
(declare-const var462 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var462 null-Int)))
(define-const var1812 String (var2250_checkObjectToString/539912867 var3722)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
 ; Statement: if i0 >= 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (>= var462 0))) ; Negate: Cond: i0 >= 0  
(assert true)
(define-const var508 Int (length/-134980193 var1812)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3943 Int (+ var508 var462)) ; Statement: $i3 = $i2 + i0 
(define-const var3830 Int (var3728_max/1360571700 var3943 0)) ; Statement: $i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, 0) 
 ; Statement: goto [?= $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i4)] 
(assert true) ; Non Conditional
(assert (not (and true (and (>= var3830 0) (>= (str.len var1812) var3830)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2250_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var3728_max/1360571700=([int, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1707=java.lang.Object, var3722=r0, var462=i0, var2250=jdk.nashorn.internal.objects.NativeString, var1812=r1, var508=$i2, var3943=$i3, var3728=java.lang.Math, var3830=$i4, var2242=$r2}
; {java.lang.Object=var1707, r0=var3722, i0=var462, jdk.nashorn.internal.objects.NativeString=var2250, r1=var1812, $i2=var508, $i3=var3943, java.lang.Math=var3728, $i4=var3830, $r2=var2242}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	if i0 >= 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i3 = $i2 + i0;	$i4 = staticinvoke <java.lang.Math: int max(int,int)>($i3, 0);	goto [?= $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i4)];	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i4);	return $r2
;block_num 3