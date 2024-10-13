(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var580 0)
(declare-sort var472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var472_checkObjectToString/539912867 (var580) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var580 var580)
(declare-const null-Int Int)
(declare-const var1201 var580) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1201 null-var580)))
(declare-const var2378 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2378 null-Int)))
(declare-const var3549 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3549 null-Int)))
(define-const var253 String (var472_checkObjectToString/539912867 var1201)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(assert true)
(define-const var2733 Int (length/-134980193 var253)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (not (>= var2378 0))) ; Negate: Cond: i1 >= 0  
(define-const var3142 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= i2 = $i4] 
(assert true) ; Non Conditional
(define-const var3172 Int var3142) ; Statement: i2 = $i4 
 ; Statement: if i3 >= 0 goto (branch) 
(assert (not (>= var3549 0))) ; Negate: Cond: i3 >= 0  
(define-const var3476 Int 0) ; Statement: $i5 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i5 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i2) 
(assert (not (>= var3172 var3476))) ; Negate: Cond: i2 >= $i5  
(assert (not (and true (and (>= var3172 0) (>= (str.len var253) var3476) (>= var3476 var3172)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var472_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var580=java.lang.Object, var1201=r0, var2378=i1, var3549=i3, var472=jdk.nashorn.internal.objects.NativeString, var253=r1, var2733=i0, var3142=$i4, var3172=i2, var3476=$i5, var3304=$r3}
; {java.lang.Object=var580, r0=var1201, i1=var2378, i3=var3549, jdk.nashorn.internal.objects.NativeString=var472, r1=var253, i0=var2733, $i4=var3142, i2=var3172, $i5=var3476, $r3=var3304}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i1 := @parameter1: int;	i3 := @parameter2: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 0 goto (branch);	$i4 = 0;	goto [?= i2 = $i4];	i2 = $i4;	if i3 >= 0 goto (branch);	$i5 = 0;	goto [?= (branch)];	if i2 >= $i5 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i2);	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i2, $i5);	return $r3
;block_num 6