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
(declare-const var1318 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1318 null-String)))
(declare-const var2241 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var2241 null-String)))
(define-const var1777 Int (String_length/-667254855 var1318)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1274 Int (String_length/-667254855 var2241)) ; Statement: i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(define-const var3318 (Array Int Int) arr-Int-init) ; Statement: r2 = newarray (char)[i0] 
(define-const var3370 Int 0) ; Statement: i17 = 0 
(assert true) ; Non Conditional
(define-const var190 Int (div var1777 var1274)) ; Statement: $i2 = i0 / i1 
(define-const var2576 Int (+ var190 1)) ; Statement: $i3 = $i2 + 1 
 ; Statement: if i17 >= $i3 goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2) 
(assert (>= var3370 var2576)) ; Cond: i17 >= $i3 
(define-const var3163 String (String_valueOf/-911079903 var3318)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), arr-Int-init=([], char[]), String_valueOf/-911079903=([char[]], java.lang.String)}
; {var1318=r0, var2241=r1, var1777=i0, var1274=i1, var3318=r2, var3370=i17, var190=$i2, var2576=$i3, var3163=$r3}
; {r0=var1318, r1=var2241, i0=var1777, i1=var1274, r2=var3318, i17=var3370, $i2=var190, $i3=var2576, $r3=var3163}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: int length()>;	<java.lang.String: java.lang.String valueOf(char[])>
;cnt {"<java.lang.CharSequence: int length()>": 2,"<java.lang.String: java.lang.String valueOf(char[])>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	r2 = newarray (char)[i0];	i17 = 0;	$i2 = i0 / i1;	$i3 = $i2 + 1;	if i17 >= $i3 goto $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2);	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char[])>(r2);	return $r3
;block_num 3