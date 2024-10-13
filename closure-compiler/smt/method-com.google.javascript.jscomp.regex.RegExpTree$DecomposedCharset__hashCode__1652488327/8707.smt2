(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var2759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ranges/-1785785728 (var701) var2759)
(declare-fun hashCode/860189847 (var2759) Int)
(declare-fun namedGroups/-1785785728 (var701) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun inverted/-1785785728 (var701) Bool)
(declare-const null-var701 var701)
(declare-const var3853 var701) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset 
(assert (not (= var3853 null-var701)))
(define-const var3742 var2759 (ranges/-1785785728 var3853)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert true)
(define-const var3348 Int (hashCode/860189847 var3742)) ; Statement: $i3 = virtualinvoke $r1.<com.google.javascript.jscomp.regex.CharRanges: int hashCode()>() 
(define-const var3466 String (namedGroups/-1785785728 var3853)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups> 
(assert true)
(define-const var1638 Int (hashCode/-467973558 var3466)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3818 Bool (inverted/-1785785728 var3853)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted> 
 ; Statement: if $z0 == 0 goto $z1 = 0 
(assert (= (ite var3818 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1154 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var245 Int (+ var1638 (ite var1154 1 0))) ; Statement: $i1 = $i0 + $z1 
(define-const var3898 Int (* 31 var245)) ; Statement: $i2 = 31 * $i1 
(define-const var669 Int (+ var3348 var3898)) ; Statement: $i4 = $i3 + $i2 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {ranges/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], com.google.javascript.jscomp.regex.CharRanges), hashCode/860189847=([com.google.javascript.jscomp.regex.CharRanges], int), namedGroups/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], java.lang.String), hashCode/-467973558=([java.lang.String], int), inverted/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], boolean)}
; {var701=com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, var3853=r0, var2759=com.google.javascript.jscomp.regex.CharRanges, var3742=$r1, var3348=$i3, var3466=$r2, var1638=$i0, var3818=$z0, var1154=$z1, var245=$i1, var3898=$i2, var669=$i4}
; {com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset=var701, r0=var3853, com.google.javascript.jscomp.regex.CharRanges=var2759, $r1=var3742, $i3=var3348, $r2=var3466, $i0=var1638, $z0=var3818, $z1=var1154, $i1=var245, $i2=var3898, $i4=var669}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$i3 = virtualinvoke $r1.<com.google.javascript.jscomp.regex.CharRanges: int hashCode()>();	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted>;	if $z0 == 0 goto $z1 = 0;	$z1 = 0;	$i1 = $i0 + $z1;	$i2 = 31 * $i1;	$i4 = $i3 + $i2;	return $i4
;block_num 3