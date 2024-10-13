(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun str/789274456 (var1830) String)
(declare-fun pos/789274456 (var1830) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1830 var1830)
(declare-const null-Int Int)
(declare-const var3181 var1830) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var3181 null-var1830)))
(declare-const var2820 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var2820 null-Int)))
(define-const var797 String (str/789274456 var3181)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(define-const var2833 Int (pos/789274456 var3181)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(assert (not (and true (and (> (str.len var797) var2833) (<= 0 var2833)))))
(check-sat)
(get-model)
(get-unsat-core)
; {str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1830=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var3181=r0, var2820=c1, var797=$r1, var2833=$i0, var2025=$c2, var3149=$i3, var353=$i4, var172=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var1830, r0=var3181, c1=var2820, $r1=var797, $i0=var2833, $c2=var2025, $i3=var3149, $i4=var353, $z0=var172}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	c1 := @parameter0: char;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i3 = (int) $c2;	$i4 = (int) c1;	if $i3 != $i4 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3