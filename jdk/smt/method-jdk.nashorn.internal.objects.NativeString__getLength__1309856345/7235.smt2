(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2206 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/1064022155 (var2206) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-const null-var2206 var2206)
(declare-const var865 var2206) ; Statement: r0 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var865 null-var2206)))
(define-const var843 String (value/1064022155 var865)) ; Statement: $r1 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value> 
(define-const var3227 Int (String_length/-667254855 var843)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var779 Int (Int_valueOf/-1371140006 var3227)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {value/1064022155=([jdk.nashorn.internal.objects.NativeString], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), Int_valueOf/-1371140006=([int], java.lang.Integer)}
; {var2206=jdk.nashorn.internal.objects.NativeString, var865=r0, var843=$r1, var3227=$i0, var779=$r2}
; {jdk.nashorn.internal.objects.NativeString=var2206, r0=var865, $r1=var843, $i0=var3227, $r2=var779}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.objects.NativeString;	$r1 = r0.<jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence value>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	return $r2
;block_num 1