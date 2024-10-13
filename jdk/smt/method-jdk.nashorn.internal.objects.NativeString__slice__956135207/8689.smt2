(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var248 0)
(declare-sort var411 0)
(declare-sort var445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var411_checkObjectToString/539912867 (var248) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var445_min/-1112089438 (Int Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var248 var248)
(declare-const null-Int Int)
(declare-const var901 var248) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var901 null-var248)))
(declare-const var3900 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3900 null-Int)))
(define-const var2923 String (var411_checkObjectToString/539912867 var901)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
 ; Statement: if i0 >= 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (>= var3900 0)) ; Cond: i0 >= 0 
(assert true)
(define-const var2853 Int (length/-134980193 var2923)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3085 Int (var445_min/-1112089438 var3900 var2853)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>(i0, $i1) 
(assert true) ; Non Conditional
(assert (and true (and (>= var3085 0) (>= (str.len var2923) var3085))))
(define-const var2593 String (substring/850833817 var2923 var3085)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i4) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var411_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), var445_min/-1112089438=([int, int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var248=java.lang.Object, var901=r0, var3900=i0, var411=jdk.nashorn.internal.objects.NativeString, var2923=r1, var2853=$i1, var445=java.lang.Math, var3085=$i4, var2593=$r2}
; {java.lang.Object=var248, r0=var901, i0=var3900, jdk.nashorn.internal.objects.NativeString=var411, r1=var2923, $i1=var2853, java.lang.Math=var445, $i4=var3085, $r2=var2593}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	if i0 >= 0 goto $i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	$i4 = staticinvoke <java.lang.Math: int min(int,int)>(i0, $i1);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>($i4);	return $r2
;block_num 3