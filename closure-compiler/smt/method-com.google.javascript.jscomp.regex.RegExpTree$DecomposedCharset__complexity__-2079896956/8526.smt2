(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1829 0)
(declare-sort var3498 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inverted/-1785785728 (var1829) Bool)
(declare-fun namedGroups/-1785785728 (var1829) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ranges/-1785785728 (var1829) var3498)
(declare-fun var1829_complexity/1867965366 (var3498) Int)
(declare-const null-var1829 var1829)
(declare-const var710 var1829) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset 
(assert (not (= var710 null-var1829)))
(define-const var3302 Bool (inverted/-1785785728 var710)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted> 
 ; Statement: if $z0 == 0 goto $z1 = 0 
(assert (= (ite var3302 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3731 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var1911 String (namedGroups/-1785785728 var710)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups> 
(assert true)
(define-const var3024 Int (length/-134980193 var1911)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1748 Int (+ (ite var3731 1 0) var3024)) ; Statement: $i2 = $z1 + $i0 
(define-const var1483 var3498 (ranges/-1785785728 var710)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(define-const var3341 Int (var1829_complexity/1867965366 var1483)) ; Statement: $i1 = staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: int complexity(com.google.javascript.jscomp.regex.CharRanges)>($r2) 
(define-const var155 Int (+ var1748 var3341)) ; Statement: $i3 = $i2 + $i1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {inverted/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], boolean), namedGroups/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], java.lang.String), length/-134980193=([java.lang.String], int), ranges/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], com.google.javascript.jscomp.regex.CharRanges), var1829_complexity/1867965366=([com.google.javascript.jscomp.regex.CharRanges], int)}
; {var1829=com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, var710=r0, var3302=$z0, var3731=$z1, var1911=$r1, var3024=$i0, var1748=$i2, var3498=com.google.javascript.jscomp.regex.CharRanges, var1483=$r2, var3341=$i1, var155=$i3}
; {com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset=var1829, r0=var710, $z0=var3302, $z1=var3731, $r1=var1911, $i0=var3024, $i2=var1748, com.google.javascript.jscomp.regex.CharRanges=var3498, $r2=var1483, $i1=var3341, $i3=var155}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset;	$z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted>;	if $z0 == 0 goto $z1 = 0;	$z1 = 0;	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i2 = $z1 + $i0;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$i1 = staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: int complexity(com.google.javascript.jscomp.regex.CharRanges)>($r2);	$i3 = $i2 + $i1;	return $i3
;block_num 3