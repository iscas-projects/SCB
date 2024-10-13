(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2209 0)
(declare-sort var1289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun <init>/1668378889 (var1289 String (Array Int Int) (Array Int Int)) void)
(declare-fun cast-from-var2209-to-var1289 (var2209) var1289)
(declare-const null-var2209 var2209)
(declare-const var2194 var2209) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Invisible 
(assert (not (= var2194 null-var2209)))
(define-const var211 String "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9") ; Statement: $r1 = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9" 
(assert true)
(define-const var965 (Array Int Int) (toCharArray/415275702 var211)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>() 
(define-const var2047 String " \u00a0\u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufffb") ; Statement: $r2 = " \u00a0\u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufffb" 
(assert true)
(define-const var2748 (Array Int Int) (toCharArray/415275702 var2047)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>() 
(assert true)
;(assert (<init>/1668378889 (cast-from-var2209-to-var1289 var2194) "CharMatcher.invisible()" var965 var2748)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher: void <init>(java.lang.String,char[],char[])>("CharMatcher.invisible()", $r4, $r3) 

(declare-const var2194!1 var2209)
(declare-const var1958 String)
(declare-const var965!1 (Array Int Int))
(declare-const var2748!1 (Array Int Int))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), <init>/1668378889=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher, java.lang.String, char[], char[]], void), cast-from-var2209-to-var1289=([com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Invisible], com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher)}
; {var2209=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Invisible, var2194=r0, var211=$r1, var965=$r4, var2047=$r2, var2748=$r3, var1289=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher, var1958="CharMatcher.invisible()"}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Invisible=var2209, r0=var2194, $r1=var211, $r4=var965, $r2=var2047, $r3=var2748, com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher=var1289, "CharMatcher.invisible()"=var1958}
;seq <java.lang.String: char[] toCharArray()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$Invisible;	$r1 = "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9";	$r4 = virtualinvoke $r1.<java.lang.String: char[] toCharArray()>();	$r2 = " \u00a0\u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufffb";	$r3 = virtualinvoke $r2.<java.lang.String: char[] toCharArray()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher$RangesMatcher: void <init>(java.lang.String,char[],char[])>("CharMatcher.invisible()", $r4, $r3);	return
;block_num 1