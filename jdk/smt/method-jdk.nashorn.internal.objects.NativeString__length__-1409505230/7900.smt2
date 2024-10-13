(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2643 0)
(declare-sort var2292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2292_getCharSequence/-714004093 (var2643) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-const null-var2643 var2643)
(declare-const var166 var2643) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var166 null-var2643)))
(define-const var3139 String (var2292_getCharSequence/-714004093 var166)) ; Statement: $r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence getCharSequence(java.lang.Object)>(r0) 
(define-const var1021 Int (String_length/-667254855 var3139)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var1318 Int (Int_valueOf/-1371140006 var1021)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2292_getCharSequence/-714004093=([java.lang.Object], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), Int_valueOf/-1371140006=([int], java.lang.Integer)}
; {var2643=java.lang.Object, var166=r0, var2292=jdk.nashorn.internal.objects.NativeString, var3139=$r1, var1021=$i0, var1318=$r2}
; {java.lang.Object=var2643, r0=var166, jdk.nashorn.internal.objects.NativeString=var2292, $r1=var3139, $i0=var1021, $r2=var1318}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	$r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.CharSequence getCharSequence(java.lang.Object)>(r0);	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i0);	return $r2
;block_num 1