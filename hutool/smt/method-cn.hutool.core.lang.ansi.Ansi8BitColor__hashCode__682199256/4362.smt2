(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/727099159 (var1023) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun code/727099159 (var1023) Int)
(declare-const null-var1023 var1023)
(declare-const var824 var1023) ; Statement: r0 := @this: cn.hutool.core.lang.ansi.Ansi8BitColor 
(assert (not (= var824 null-var1023)))
(define-const var1748 String (prefix/727099159 var824)) ; Statement: $r1 = r0.<cn.hutool.core.lang.ansi.Ansi8BitColor: java.lang.String prefix> 
(assert true)
(define-const var209 Int (hashCode/-467973558 var1748)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var2897 Int (* var209 31)) ; Statement: $i2 = $i0 * 31 
(define-const var839 Int (code/727099159 var824)) ; Statement: $i1 = r0.<cn.hutool.core.lang.ansi.Ansi8BitColor: int code> 
(define-const var3523 Int (+ var2897 var839)) ; Statement: $i3 = $i2 + $i1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/727099159=([cn.hutool.core.lang.ansi.Ansi8BitColor], java.lang.String), hashCode/-467973558=([java.lang.String], int), code/727099159=([cn.hutool.core.lang.ansi.Ansi8BitColor], int)}
; {var1023=cn.hutool.core.lang.ansi.Ansi8BitColor, var824=r0, var1748=$r1, var209=$i0, var2897=$i2, var839=$i1, var3523=$i3}
; {cn.hutool.core.lang.ansi.Ansi8BitColor=var1023, r0=var824, $r1=var1748, $i0=var209, $i2=var2897, $i1=var839, $i3=var3523}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.core.lang.ansi.Ansi8BitColor;	$r1 = r0.<cn.hutool.core.lang.ansi.Ansi8BitColor: java.lang.String prefix>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i2 = $i0 * 31;	$i1 = r0.<cn.hutool.core.lang.ansi.Ansi8BitColor: int code>;	$i3 = $i2 + $i1;	return $i3
;block_num 1