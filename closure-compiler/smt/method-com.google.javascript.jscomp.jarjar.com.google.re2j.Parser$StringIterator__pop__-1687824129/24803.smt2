(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1064 0)
(declare-sort var3827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun str/789274456 (var1064) String)
(declare-fun pos/789274456 (var1064) Int)
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-fun var3827_charCount/-1254868283 (Int) Int)
(declare-const null-var1064 var1064)
(declare-const var1398 var1064) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var1398 null-var1064)))
(define-const var1876 String (str/789274456 var1398)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str> 
(define-const var394 Int (pos/789274456 var1398)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(assert true)
(define-const var1983 Int (codePointAt/-1532245030 var1876 var394)) ; Statement: i1 = virtualinvoke $r1.<java.lang.String: int codePointAt(int)>($i0) 
(define-const var3039 Int (pos/789274456 var1398)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> 
(define-const var64 Int (var3827_charCount/-1254868283 var1983)) ; Statement: $i3 = staticinvoke <java.lang.Character: int charCount(int)>(i1) 
(define-const var81 Int (+ var3039 var64)) ; Statement: $i4 = $i2 + $i3 
(declare-const var1398!1 var1064)
(assert (not (= var1398!1 null-var1064)))
(assert (= (pos/789274456 var1398!1) var81)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> = $i4 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {str/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), pos/789274456=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], int), codePointAt/-1532245030=([java.lang.String, int], int), var3827_charCount/-1254868283=([int], int)}
; {var1064=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var1398=r0, var1876=$r1, var394=$i0, var1983=i1, var3039=$i2, var3827=java.lang.Character, var64=$i3, var81=$i4}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var1064, r0=var1398, $r1=var1876, $i0=var394, i1=var1983, $i2=var3039, java.lang.Character=var3827, $i3=var64, $i4=var81}
;seq <java.lang.String: int codePointAt(int)>
;cnt {"<java.lang.String: int codePointAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String str>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	i1 = virtualinvoke $r1.<java.lang.String: int codePointAt(int)>($i0);	$i2 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos>;	$i3 = staticinvoke <java.lang.Character: int charCount(int)>(i1);	$i4 = $i2 + $i3;	r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: int pos> = $i4;	return i1
;block_num 1