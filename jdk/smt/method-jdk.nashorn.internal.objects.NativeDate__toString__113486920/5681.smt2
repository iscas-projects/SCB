(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2573 0)
(declare-sort var2632 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isValidDate/1137688615 (var2573) Bool)
(declare-fun var2573_toString/-131954917 (var2632) String)
(declare-fun cast-from-var2573-to-var2632 (var2573) var2632)
(declare-fun toString/-1749764803 (String) String)
(declare-const null-var2573 var2573)
(declare-const var2118 var2573) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeDate 
(assert (not (= var2118 null-var2573)))
(assert true)
(define-const var3923 Bool (isValidDate/1137688615 var2118)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>() 
 ; Statement: if $z0 == 0 goto $r2 = "Invalid Date" 
(assert (not (= (ite var3923 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var220 String (var2573_toString/-131954917 (cast-from-var2573-to-var2632 var2118))) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.objects.NativeDate: java.lang.String toString(java.lang.Object)>(r0) 
(assert true)
(define-const var2108 String (toString/-1749764803 var220)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toString()>() 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isValidDate/1137688615=([jdk.nashorn.internal.objects.NativeDate], boolean), var2573_toString/-131954917=([java.lang.Object], java.lang.String), cast-from-var2573-to-var2632=([jdk.nashorn.internal.objects.NativeDate], java.lang.Object), toString/-1749764803=([java.lang.String], java.lang.String)}
; {var2573=jdk.nashorn.internal.objects.NativeDate, var2118=r0, var3923=$z0, var2632=java.lang.Object, var220=$r1, var2108=$r2}
; {jdk.nashorn.internal.objects.NativeDate=var2573, r0=var2118, $z0=var3923, java.lang.Object=var2632, $r1=var220, $r2=var2108}
;seq <jdk.nashorn.internal.objects.NativeDate: java.lang.String toString(java.lang.Object)>;	<java.lang.String: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeDate;	$z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>();	if $z0 == 0 goto $r2 = "Invalid Date";	$r1 = staticinvoke <jdk.nashorn.internal.objects.NativeDate: java.lang.String toString(java.lang.Object)>(r0);	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toString()>();	goto [?= return $r2];	return $r2
;block_num 3