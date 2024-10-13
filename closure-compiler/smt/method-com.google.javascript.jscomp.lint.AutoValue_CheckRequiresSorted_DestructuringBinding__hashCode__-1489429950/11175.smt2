(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var696 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exportedName/-1717308051 (var696) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun localName/-1717308051 (var696) String)
(declare-fun isShorthandProperty/-1717308051 (var696) Bool)
(declare-const null-var696 var696)
(declare-const var1381 var696) ; Statement: r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding 
(assert (not (= var1381 null-var696)))
(define-const var1997 String (exportedName/-1717308051 var1381)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String exportedName> 
(assert true)
(define-const var711 Int (hashCode/-467973558 var1997)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1890 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var711)))) ; Statement: i3 = 1000003 ^ $i0 
(define-const var382 Int (* var1890 1000003)) ; Statement: i4 = i3 * 1000003 
(define-const var2361 String (localName/-1717308051 var1381)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String localName> 
(assert true)
(define-const var1178 Int (hashCode/-467973558 var2361)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var273 Int (bv2nat (bvxor ((_ int2bv 64) var382) ((_ int2bv 64) var1178)))) ; Statement: i5 = i4 ^ $i1 
(define-const var2676 Int (* var273 1000003)) ; Statement: i6 = i5 * 1000003 
(define-const var3741 Bool (isShorthandProperty/-1717308051 var1381)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: boolean isShorthandProperty> 
 ; Statement: if $z0 == 0 goto $s7 = 1237 
(assert (= (ite var3741 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3104 Int 1237) ; Statement: $s7 = 1237 
(assert true) ; Non Conditional
(define-const var2053 Int (bv2nat (bvxor ((_ int2bv 64) var2676) ((_ int2bv 64) var3104)))) ; Statement: $i2 = i6 ^ $s7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {exportedName/-1717308051=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding], java.lang.String), hashCode/-467973558=([java.lang.String], int), localName/-1717308051=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding], java.lang.String), isShorthandProperty/-1717308051=([com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding], boolean)}
; {var696=com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding, var1381=r0, var1997=$r1, var711=$i0, var1890=i3, var382=i4, var2361=$r2, var1178=$i1, var273=i5, var2676=i6, var3741=$z0, var3104=$s7, var2053=$i2}
; {com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding=var696, r0=var1381, $r1=var1997, $i0=var711, i3=var1890, i4=var382, $r2=var2361, $i1=var1178, i5=var273, i6=var2676, $z0=var3741, $s7=var3104, $i2=var2053}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding;	$r1 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String exportedName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i3 = 1000003 ^ $i0;	i4 = i3 * 1000003;	$r2 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: java.lang.String localName>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i5 = i4 ^ $i1;	i6 = i5 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.lint.AutoValue_CheckRequiresSorted_DestructuringBinding: boolean isShorthandProperty>;	if $z0 == 0 goto $s7 = 1237;	$s7 = 1237;	$i2 = i6 ^ $s7;	return $i2
;block_num 3