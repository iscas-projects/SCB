(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String_valueOf/-911079903 ((Array Int Int)) String)
(declare-const null-String String)
(declare-const var1868 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1868 null-String)))
(declare-const var2862 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2862 null-String)))
(define-const var3280 Int (String_length/-667254855 var1868)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3091 Int (String_length/-667254855 var2862)) ; Statement: i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var1255 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (char)[i0] 
(define-const var2621 Int 0) ; Statement: i22 = 0 
(assert true) ; Non Conditional
 ; Statement: if i22 >= i0 goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2) 
(assert (>= var2621 var3280)) ; Cond: i22 >= i0 
(define-const var3173 String (String_valueOf/-911079903 var1255)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), arr-Int-init=([], char[]), String_valueOf/-911079903=([char[]], java.lang.String)}
; {var1868=r0, var2862=r1, var3280=i0, var3091=i1, var1255=r2, var2621=i22, var3173=$r3}
; {r0=var1868, r1=var2862, i0=var3280, i1=var3091, r2=var1255, i22=var2621, $r3=var3173}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.String: java.lang.String valueOf(char[])>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.String: java.lang.String valueOf(char[])>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	r2 = newarray (char)[i0];	i22 = 0;	if i22 >= i0 goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2);	return $r3
;block_num 3