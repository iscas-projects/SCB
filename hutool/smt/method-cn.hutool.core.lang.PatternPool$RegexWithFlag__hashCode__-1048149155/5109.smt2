(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2867 0)
(declare-sort var1146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun flag/1701683178 (var2867) Int)
(declare-fun regex/1701683178 (var2867) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2867 var2867)
(declare-const null-String String)
(declare-const var3984 var2867) ; Statement: r0 := @this: cn.hutool.core.lang.PatternPool$RegexWithFlag 
(assert (not (= var3984 null-var2867)))
(define-const var3799 Int (flag/1701683178 var3984)) ; Statement: $i0 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: int flag> 
(define-const var702 Int (+ 31 var3799)) ; Statement: i3 = 31 + $i0 
(define-const var3854 Int (* 31 var702)) ; Statement: $i1 = 31 * i3 
(define-const var1673 String (regex/1701683178 var3984)) ; Statement: $r1 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: java.lang.String regex> 
 ; Statement: if $r1 != null goto $r2 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: java.lang.String regex> 
(assert (not (= var1673 null-String))) ; Cond: $r1 != null 
(define-const var1899 String (regex/1701683178 var3984)) ; Statement: $r2 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: java.lang.String regex> 
(assert true)
(define-const var2558 Int (hashCode/-467973558 var1899)) ; Statement: $i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2835 Int (+ var3854 var2558)) ; Statement: $i2 = $i1 + $i4 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {flag/1701683178=([cn.hutool.core.lang.PatternPool$RegexWithFlag], int), regex/1701683178=([cn.hutool.core.lang.PatternPool$RegexWithFlag], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2867=cn.hutool.core.lang.PatternPool$RegexWithFlag, var3984=r0, var3799=$i0, var702=i3, var3854=$i1, var1673=$r1, var1146=null_type, var1899=$r2, var2558=$i4, var2835=$i2}
; {cn.hutool.core.lang.PatternPool$RegexWithFlag=var2867, r0=var3984, $i0=var3799, i3=var702, $i1=var3854, $r1=var1673, null_type=var1146, $r2=var1899, $i4=var2558, $i2=var2835}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: cn.hutool.core.lang.PatternPool$RegexWithFlag;	$i0 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: int flag>;	i3 = 31 + $i0;	$i1 = 31 * i3;	$r1 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: java.lang.String regex>;	if $r1 != null goto $r2 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: java.lang.String regex>;	$r2 = r0.<cn.hutool.core.lang.PatternPool$RegexWithFlag: java.lang.String regex>;	$i4 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i2 = $i1 + $i4;	return $i2
;block_num 3