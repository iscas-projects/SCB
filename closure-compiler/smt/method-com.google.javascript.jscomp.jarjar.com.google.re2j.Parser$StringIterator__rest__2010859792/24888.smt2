(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun str/789274456 (var2196) String)
(declare-fun pos/789274456 (var2196) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2196 var2196)
(declare-const var972 var2196) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var972 null-var2196)))
(define-const var1867 String (str/789274456 var972)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(define-const var2301 Int (pos/789274456 var972)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(assert (and true (and (>= var2301 0) (>= (str.len var1867) var2301))))
(define-const var2676 String (substring/850833817 var1867 var2301)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>($i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2196=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var972=r0, var1867=$r1, var2301=$i0, var2676=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var2196, r0=var972, $r1=var1867, $i0=var2301, $r2=var2676}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int)>($i0);	return $r2
;block_num 1