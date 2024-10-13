(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exportedName/-1717308051 (var232) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun localName/-1717308051 (var232) String)
(declare-fun isShorthandProperty/-1717308051 (var232) Bool)
(declare-const null-var232 var232)
(declare-const var2929 var232) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding 
(assert (not (= var2929 null-var232)))
(define-const var2865 String (exportedName/-1717308051 var2929)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String exportedName> 
(assert true)
(define-const var2975 Int (hashCode/-467973558 var2865)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3160 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2975)))) ; Statement: i3 = 1000003 ^ $i0 
(define-const var723 Int (* var3160 1000003)) ; Statement: i4 = i3 * 1000003 
(define-const var1477 String (localName/-1717308051 var2929)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String localName> 
(assert true)
(define-const var832 Int (hashCode/-467973558 var1477)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2720 Int (bv2nat (bvxor ((_ int2bv 64) var723) ((_ int2bv 64) var832)))) ; Statement: i5 = i4 ^ $i1 
(define-const var156 Int (* var2720 1000003)) ; Statement: i6 = i5 * 1000003 
(define-const var3036 Bool (isShorthandProperty/-1717308051 var2929)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: boolean isShorthandProperty> 
 ; Statement: if $z0 == 0 goto $s7 = 1237 
(assert (not (= (ite var3036 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3334 Int 1231) ; Statement: $s7 = 1231 
 ; Statement: goto [?= $i2 = i6 ^ $s7] 
(assert true) ; Non Conditional
(define-const var2964 Int (bv2nat (bvxor ((_ int2bv 64) var156) ((_ int2bv 64) var3334)))) ; Statement: $i2 = i6 ^ $s7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {exportedName/-1717308051=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding], java.lang.String), hashCode/-467973558=([java.lang.String], int), localName/-1717308051=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding], java.lang.String), isShorthandProperty/-1717308051=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding], boolean)}
; {var232=com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding, var2929=r0, var2865=$r1, var2975=$i0, var3160=i3, var723=i4, var1477=$r2, var832=$i1, var2720=i5, var156=i6, var3036=$z0, var3334=$s7, var2964=$i2}
; {com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding=var232, r0=var2929, $r1=var2865, $i0=var2975, i3=var3160, i4=var723, $r2=var1477, $i1=var832, i5=var2720, i6=var156, $z0=var3036, $s7=var3334, $i2=var2964}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding;	$r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String exportedName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 1000003 ^ $i0;	i4 = i3 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String localName>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i5 = i4 ^ $i1;	i6 = i5 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: boolean isShorthandProperty>;	if $z0 == 0 goto $s7 = 1237;	$s7 = 1231;	goto [?= $i2 = i6 ^ $s7];	$i2 = i6 ^ $s7;	return $i2
;block_num 3