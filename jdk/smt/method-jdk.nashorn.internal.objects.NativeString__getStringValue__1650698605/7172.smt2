(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1367 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1064022155 (var1367) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var1367 var1367)
(declare-const var2326 var1367) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var2326 null-var1367)))
(define-const var3858 String (value/1064022155 var2326)) ; Statement: $r1 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value> 
(define-const var2624 Bool true) ; Statement: $z0 = $r1 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value> 
(assert (= (ite var2624 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3728 String (value/1064022155 var2326)) ; Statement: $r2 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value> 
(define-const var353 String (String_toString/-1426662429 var3728)) ; Statement: $r4 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1064022155=([jdk.nashorn.internal.objects.NativeString], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1367=jdk.nashorn.internal.objects.NativeString, var2326=r0, var3858=$r1, var2624=$z0, var3728=$r2, var353=$r4}
; {jdk.nashorn.internal.objects.NativeString=var1367, r0=var2326, $r1=var3858, $z0=var2624, $r2=var3728, $r4=var353}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeString;	$r1 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value>;	$z0 = $r1 instanceof java.lang.String;	if $z0 == 0 goto $r2 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value>;	$r2 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value>;	$r4 = interfaceinvoke $r2.<java.lang.CharSequence: java.lang.String toString()>();	return $r4
;block_num 3