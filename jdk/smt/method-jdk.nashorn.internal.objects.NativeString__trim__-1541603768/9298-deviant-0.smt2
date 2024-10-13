(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2412 0)
(declare-sort var1411 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1411_checkObjectToString/539912867 (var2412) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2412 var2412)
(declare-const var2029 var2412) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2029 null-var2412)))
(define-const var2928 String (var1411_checkObjectToString/539912867 var2029)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var1236 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var2799 Int (length/-134980193 var2928)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2312 Int (- var2799 1)) ; Statement: i5 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i4 > i5 goto (branch) 
(assert (> var1236 var2312)) ; Cond: i4 > i5 
 ; Statement: if i5 <= i4 goto $i1 = i5 + 1 
(assert (<= var2312 var1236)) ; Cond: i5 <= i4 
(define-const var3320 Int (+ var2312 1)) ; Statement: $i1 = i5 + 1 
(assert (not (and true (and (>= var1236 0) (>= (str.len var2928) var3320) (>= var3320 var1236)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1411_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2412=java.lang.Object, var2029=r0, var1411=jdk.nashorn.internal.objects.NativeString, var2928=r1, var1236=i4, var2799=$i0, var2312=i5, var3320=$i1, var533=$r2}
; {java.lang.Object=var2412, r0=var2029, jdk.nashorn.internal.objects.NativeString=var1411, r1=var2928, i4=var1236, $i0=var2799, i5=var2312, $i1=var3320, $r2=var533}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i4 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	i5 = $i0 - 1;	if i4 > i5 goto (branch);	if i5 <= i4 goto $i1 = i5 + 1;	$i1 = i5 + 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i4, $i1);	return $r2
;block_num 4