(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isValidDate/1137688615 (var1109) Bool)
(declare-const null-var1109 var1109)
(declare-const var3902 var1109) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeDate 
(assert (not (= var3902 null-var1109)))
(assert true)
(define-const var1745 Bool (isValidDate/1137688615 var3902)) ; Statement: $z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>() 
 ; Statement: if $z0 == 0 goto $r2 = "Invalid Date" 
(assert (= (ite var1745 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3264 String "Invalid Date") ; Statement: $r2 = "Invalid Date" 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isValidDate/1137688615=([jdk.nashorn.internal.objects.NativeDate], boolean)}
; {var1109=jdk.nashorn.internal.objects.NativeDate, var3902=r0, var1745=$z0, var3264=$r2}
; {jdk.nashorn.internal.objects.NativeDate=var1109, r0=var3902, $z0=var1745, $r2=var3264}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeDate;	$z0 = specialinvoke r0.<jdk.nashorn.internal.objects.NativeDate: boolean isValidDate()>();	if $z0 == 0 goto $r2 = "Invalid Date";	$r2 = "Invalid Date";	return $r2
;block_num 3