(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1602 0)
(declare-sort var2098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ranges/-1785785728 (var1602) var2098)
(declare-fun hashCode/860189847 (var2098) Int)
(declare-fun namedGroups/-1785785728 (var1602) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun inverted/-1785785728 (var1602) Bool)
(declare-const null-var1602 var1602)
(declare-const var1453 var1602) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset 
(assert (not (= var1453 null-var1602)))
(define-const var522 var2098 (ranges/-1785785728 var1453)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(assert true)
(define-const var53 Int (hashCode/860189847 var522)) ; Statement: $i3 = virtualinvoke $r1.<com.google.javascript.jscomp.regex.CharRanges: int hashCode()>() 
(define-const var781 String (namedGroups/-1785785728 var1453)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups> 
(assert true)
(define-const var1707 Int (hashCode/-467973558 var781)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3146 Bool (inverted/-1785785728 var1453)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted> 
 ; Statement: if $z0 == 0 goto $z1 = 0 
(assert (not (= (ite var3146 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3905 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $i1 = $i0 + $z1] 
(assert true) ; Non Conditional
(define-const var785 Int (+ var1707 (ite var3905 1 0))) ; Statement: $i1 = $i0 + $z1 
(define-const var1549 Int (* 31 var785)) ; Statement: $i2 = 31 * $i1 
(define-const var3804 Int (+ var53 var1549)) ; Statement: $i4 = $i3 + $i2 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {ranges/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], com.google.javascript.jscomp.regex.CharRanges), hashCode/860189847=([com.google.javascript.jscomp.regex.CharRanges], int), namedGroups/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], java.lang.String), hashCode/-467973558=([java.lang.String], int), inverted/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], boolean)}
; {var1602=com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, var1453=r0, var2098=com.google.javascript.jscomp.regex.CharRanges, var522=$r1, var53=$i3, var781=$r2, var1707=$i0, var3146=$z0, var3905=$z1, var785=$i1, var1549=$i2, var3804=$i4}
; {com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset=var1602, r0=var1453, com.google.javascript.jscomp.regex.CharRanges=var2098, $r1=var522, $i3=var53, $r2=var781, $i0=var1707, $z0=var3146, $z1=var3905, $i1=var785, $i2=var1549, $i4=var3804}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$i3 = virtualinvoke $r1.<com.google.javascript.jscomp.regex.CharRanges: int hashCode()>();	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>;	$i0 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted>;	if $z0 == 0 goto $z1 = 0;	$z1 = 1;	goto [?= $i1 = $i0 + $z1];	$i1 = $i0 + $z1;	$i2 = 31 * $i1;	$i4 = $i3 + $i2;	return $i4
;block_num 3