(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun str/789274456 (var1723) String)
(declare-fun pos/789274456 (var1723) Int)
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-const null-var1723 var1723)
(declare-const var3170 var1723) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var3170 null-var1723)))
(define-const var3150 String (str/789274456 var3170)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(define-const var223 Int (pos/789274456 var3170)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(assert true)
(define-const var1773 Int (codePointAt/-1532245030 var3150 var223)) ; Statement: $i1 = virtualinvoke $r1.<java.lang.String: int codePointAt(int)>($i0) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), codePointAt/-1532245030=([java.lang.String, int], int)}
; {var1723=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var3170=r0, var3150=$r1, var223=$i0, var1773=$i1}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var1723, r0=var3170, $r1=var3150, $i0=var223, $i1=var1773}
;seq <java.lang.String: int codePointAt(int)>
;cnt {"<java.lang.String: int codePointAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$i1 = virtualinvoke $r1.<java.lang.String: int codePointAt(int)>($i0);	return $i1
;block_num 1