(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var684 0)
(declare-sort var2982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2982_checkObjectToString/539912867 (var684) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var684 var684)
(declare-const null-Int Int)
(declare-const var2643 var684) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2643 null-var684)))
(declare-const var1207 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1207 null-Int)))
(declare-const var1744 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1744 null-Int)))
(define-const var1144 String (var2982_checkObjectToString/539912867 var2643)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(assert true)
(define-const var2239 Int (length/-134980193 var1144)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i1 >= 0 goto (branch) 
(assert (not (>= var1207 0))) ; Negate: Cond: i1 >= 0  
(define-const var3272 Int 0) ; Statement: $i4 = 0 
 ; Statement: goto [?= i2 = $i4] 
(assert true) ; Non Conditional
(define-const var3973 Int var3272) ; Statement: i2 = $i4 
 ; Statement: if i3 >= 0 goto (branch) 
(assert (not (>= var1744 0))) ; Negate: Cond: i3 >= 0  
(define-const var2876 Int 0) ; Statement: $i5 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i5 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i2) 
(assert (>= var3973 var2876)) ; Cond: i2 >= $i5 
(assert (and true (and (>= var2876 0) (>= (str.len var1144) var3973) (>= var3973 var2876))))
(define-const var1215 String (substring/-1240304868 var1144 var2876 var3973)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i2) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2982_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var684=java.lang.Object, var2643=r0, var1207=i1, var1744=i3, var2982=jdk.nashorn.internal.objects.NativeString, var1144=r1, var2239=i0, var3272=$i4, var3973=i2, var2876=$i5, var1215=$r2}
; {java.lang.Object=var684, r0=var2643, i1=var1207, i3=var1744, jdk.nashorn.internal.objects.NativeString=var2982, r1=var1144, i0=var2239, $i4=var3272, i2=var3973, $i5=var2876, $r2=var1215}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	i1 := @parameter1: int;	i3 := @parameter2: int;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i1 >= 0 goto (branch);	$i4 = 0;	goto [?= i2 = $i4];	i2 = $i4;	if i3 >= 0 goto (branch);	$i5 = 0;	goto [?= (branch)];	if i2 >= $i5 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i2);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i5, i2);	return $r2
;block_num 6