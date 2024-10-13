(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1544 0)
(declare-sort var1050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inverted/-1785785728 (var1544) Bool)
(declare-fun namedGroups/-1785785728 (var1544) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ranges/-1785785728 (var1544) var1050)
(declare-fun var1544_complexity/1867965366 (var1050) Int)
(declare-const null-var1544 var1544)
(declare-const var2106 var1544) ; Statement: r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset 
(assert (not (= var2106 null-var1544)))
(define-const var3409 Bool (inverted/-1785785728 var2106)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted> 
 ; Statement: if $z0 == 0 goto $z1 = 0 
(assert (not (= (ite var3409 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var816 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>] 
(assert true) ; Non Conditional
(define-const var3952 String (namedGroups/-1785785728 var2106)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups> 
(assert true)
(define-const var964 Int (length/-134980193 var3952)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var1007 Int (+ (ite var816 1 0) var964)) ; Statement: $i2 = $z1 + $i0 
(define-const var411 var1050 (ranges/-1785785728 var2106)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges> 
(define-const var2355 Int (var1544_complexity/1867965366 var411)) ; Statement: $i1 = staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: int complexity(com.google.javascript.jscomp.regex.CharRanges)>($r2) 
(define-const var2402 Int (+ var1007 var2355)) ; Statement: $i3 = $i2 + $i1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {inverted/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], boolean), namedGroups/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], java.lang.String), length/-134980193=([java.lang.String], int), ranges/-1785785728=([com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset], com.google.javascript.jscomp.regex.CharRanges), var1544_complexity/1867965366=([com.google.javascript.jscomp.regex.CharRanges], int)}
; {var1544=com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset, var2106=r0, var3409=$z0, var816=$z1, var3952=$r1, var964=$i0, var1007=$i2, var1050=com.google.javascript.jscomp.regex.CharRanges, var411=$r2, var2355=$i1, var2402=$i3}
; {com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset=var1544, r0=var2106, $z0=var3409, $z1=var816, $r1=var3952, $i0=var964, $i2=var1007, com.google.javascript.jscomp.regex.CharRanges=var1050, $r2=var411, $i1=var2355, $i3=var2402}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset;	$z0 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: boolean inverted>;	if $z0 == 0 goto $z1 = 0;	$z1 = 1;	goto [?= $r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>];	$r1 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: java.lang.String namedGroups>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$i2 = $z1 + $i0;	$r2 = r0.<com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: com.google.javascript.jscomp.regex.CharRanges ranges>;	$i1 = staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$DecomposedCharset: int complexity(com.google.javascript.jscomp.regex.CharRanges)>($r2);	$i3 = $i2 + $i1;	return $i3
;block_num 3