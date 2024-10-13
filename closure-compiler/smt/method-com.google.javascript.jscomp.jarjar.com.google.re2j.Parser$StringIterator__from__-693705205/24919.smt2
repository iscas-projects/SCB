(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun str/789274456 (var3092) String)
(declare-fun pos/789274456 (var3092) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3092 var3092)
(declare-const null-Int Int)
(declare-const var3703 var3092) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var3703 null-var3092)))
(declare-const var2428 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2428 null-Int)))
(define-const var3511 String (str/789274456 var3703)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(define-const var2744 Int (pos/789274456 var3703)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(assert (and true (and (>= var2428 0) (>= (str.len var3511) var2744) (>= var2744 var2428))))
(define-const var290 String (substring/-1240304868 var3511 var2428 var2744)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3092=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var3703=r0, var2428=i0, var3511=$r1, var2744=$i1, var290=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var3092, r0=var3703, i0=var2428, $r1=var3511, $i1=var2744, $r2=var290}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i0, $i1);	return $r2
;block_num 1