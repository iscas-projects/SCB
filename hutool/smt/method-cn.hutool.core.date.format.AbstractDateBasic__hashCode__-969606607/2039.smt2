(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1570 0)
(declare-sort var1432 0)
(declare-sort var1259 0)
(declare-sort var3508 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pattern/63795614 (var1570) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun timeZone/63795614 (var1570) var1432)
(declare-fun hashCode/1739917532 (var1259) Int)
(declare-fun cast-from-var1432-to-var1259 (var1432) var1259)
(declare-fun locale/63795614 (var1570) var3508)
(declare-fun hashCode/1639332149 (var3508) Int)
(declare-const null-var1570 var1570)
(declare-const var2071 var1570) ; Statement: r0 := @this: cn.hutool.core.date.format.AbstractDateBasic 
(assert (not (= var2071 null-var1570)))
(define-const var2637 String (pattern/63795614 var2071)) ; Statement: $r1 = r0.<cn.hutool.core.date.format.AbstractDateBasic: java.lang.String pattern> 
(assert true)
(define-const var2731 Int (hashCode/-467973558 var2637)) ; Statement: $i5 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1435 var1432 (timeZone/63795614 var2071)) ; Statement: $r2 = r0.<cn.hutool.core.date.format.AbstractDateBasic: java.util.TimeZone timeZone> 
(assert true)
(define-const var3004 Int (hashCode/1739917532 (cast-from-var1432-to-var1259 var1435))) ; Statement: $i2 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(define-const var2540 var3508 (locale/63795614 var2071)) ; Statement: $r3 = r0.<cn.hutool.core.date.format.AbstractDateBasic: java.util.Locale locale> 
(assert true)
(define-const var2406 Int (hashCode/1639332149 var2540)) ; Statement: $i0 = virtualinvoke $r3.<java.util.Locale: int hashCode()>() 
(define-const var3035 Int (* 13 var2406)) ; Statement: $i1 = 13 * $i0 
(define-const var499 Int (+ var3004 var3035)) ; Statement: $i3 = $i2 + $i1 
(define-const var1982 Int (* 13 var499)) ; Statement: $i4 = 13 * $i3 
(define-const var1791 Int (+ var2731 var1982)) ; Statement: $i6 = $i5 + $i4 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {pattern/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), hashCode/-467973558=([java.lang.String], int), timeZone/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.util.TimeZone), hashCode/1739917532=([java.lang.Object], int), cast-from-var1432-to-var1259=([java.util.TimeZone], java.lang.Object), locale/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.util.Locale), hashCode/1639332149=([java.util.Locale], int)}
; {var1570=cn.hutool.core.date.format.AbstractDateBasic, var2071=r0, var2637=$r1, var2731=$i5, var1432=java.util.TimeZone, var1435=$r2, var1259=java.lang.Object, var3004=$i2, var3508=java.util.Locale, var2540=$r3, var2406=$i0, var3035=$i1, var499=$i3, var1982=$i4, var1791=$i6}
; {cn.hutool.core.date.format.AbstractDateBasic=var1570, r0=var2071, $r1=var2637, $i5=var2731, java.util.TimeZone=var1432, $r2=var1435, java.lang.Object=var1259, $i2=var3004, java.util.Locale=var3508, $r3=var2540, $i0=var2406, $i1=var3035, $i3=var499, $i4=var1982, $i6=var1791}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.core.date.format.AbstractDateBasic;	$r1 = r0.<cn.hutool.core.date.format.AbstractDateBasic: java.lang.String pattern>;	$i5 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<cn.hutool.core.date.format.AbstractDateBasic: java.util.TimeZone timeZone>;	$i2 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$r3 = r0.<cn.hutool.core.date.format.AbstractDateBasic: java.util.Locale locale>;	$i0 = virtualinvoke $r3.<java.util.Locale: int hashCode()>();	$i1 = 13 * $i0;	$i3 = $i2 + $i1;	$i4 = 13 * $i3;	$i6 = $i5 + $i4;	return $i6
;block_num 1