(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun str/789274456 (var3400) String)
(declare-fun pos/789274456 (var3400) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3400 var3400)
(declare-const null-Int Int)
(declare-const var3447 var3400) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var3447 null-var3400)))
(declare-const var1326 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var1326 null-Int)))
(define-const var1693 String (str/789274456 var3447)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(define-const var99 Int (pos/789274456 var3447)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(assert (not (and true (and (> (str.len var1693) var99) (<= 0 var99)))))
(check-sat)
(get-model)
(get-unsat-core)
; {str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3400=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var3447=r0, var1326=c1, var1693=$r1, var99=$i0, var496=$c2, var1748=$i3, var3739=$i4, var3333=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var3400, r0=var3447, c1=var1326, $r1=var1693, $i0=var99, $c2=var496, $i3=var1748, $i4=var3739, $z0=var3333}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	c1 := @parameter0: char;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	$i3 = (int) $c2;	$i4 = (int) c1;	if $i3 != $i4 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3