(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun strToFind/881651207 (var188) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var188 var188)
(declare-const null-Int Int)
(declare-const var3649 var188) ; Statement: r0 := @this: cn.hutool.core.text.finder.StrFinder 
(assert (not (= var3649 null-var188)))
(declare-const var1239 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1239 null-Int)))
 ; Statement: if i0 >= 0 goto $r1 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence strToFind> 
(assert (>= var1239 0)) ; Cond: i0 >= 0 
(define-const var580 String (strToFind/881651207 var3649)) ; Statement: $r1 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence strToFind> 
(define-const var820 Int (String_length/-667254855 var580)) ; Statement: $i1 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var1598 Int (+ var1239 var820)) ; Statement: $i2 = i0 + $i1 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {strToFind/881651207=([cn.hutool.core.text.finder.StrFinder], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var188=cn.hutool.core.text.finder.StrFinder, var3649=r0, var1239=i0, var580=$r1, var820=$i1, var1598=$i2}
; {cn.hutool.core.text.finder.StrFinder=var188, r0=var3649, i0=var1239, $r1=var580, $i1=var820, $i2=var1598}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.finder.StrFinder;	i0 := @parameter0: int;	if i0 >= 0 goto $r1 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence strToFind>;	$r1 = r0.<cn.hutool.core.text.finder.StrFinder: java.lang.CharSequence strToFind>;	$i1 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$i2 = i0 + $i1;	return $i2
;block_num 2