(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3405 0)
(declare-sort var786 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var786_checkObjectToString/539912867 (var3405) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3405 var3405)
(declare-const var2271 var3405) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var2271 null-var3405)))
(define-const var1816 String (var786_checkObjectToString/539912867 var2271)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(define-const var1035 Int 0) ; Statement: i4 = 0 
(assert true)
(define-const var3848 Int (length/-134980193 var1816)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1025 Int (- var3848 1)) ; Statement: i1 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i4 > i1 goto $i2 = i1 + 1 
(assert (> var1035 var1025)) ; Cond: i4 > i1 
(define-const var1822 Int (+ var1025 1)) ; Statement: $i2 = i1 + 1 
(assert (and true (and (>= var1035 0) (>= (str.len var1816) var1822) (>= var1822 var1035))))
(define-const var1865 String (substring/-1240304868 var1816 var1035 var1822)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i4, $i2) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var786_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3405=java.lang.Object, var2271=r0, var786=jdk.nashorn.internal.objects.NativeString, var1816=r1, var1035=i4, var3848=$i0, var1025=i1, var1822=$i2, var1865=$r2}
; {java.lang.Object=var3405, r0=var2271, jdk.nashorn.internal.objects.NativeString=var786, r1=var1816, i4=var1035, $i0=var3848, i1=var1025, $i2=var1822, $r2=var1865}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	i4 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	i1 = $i0 - 1;	if i4 > i1 goto $i2 = i1 + 1;	$i2 = i1 + 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i4, $i2);	return $r2
;block_num 3