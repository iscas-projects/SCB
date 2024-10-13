(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort var2240 0)
(declare-sort var690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rest/2010859792 (var2240) String)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2103 var2103)
(declare-const null-var2240 var2240)
(declare-const null-var690 var690)
(declare-const var1281 var2103) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser 
(assert (not (= var1281 null-var2103)))
(declare-const var3502 var2240) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator 
(assert (not (= var3502 null-var2240)))
(declare-const var2891 var690) ; Statement: r6 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.re2j.CharClass 
(assert (not (= var2891 null-var690)))
(assert true)
(define-const var1488 String (rest/2010859792 var3502)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String rest()>() 
(assert true)
(define-const var3681 Int (indexOf/-1209756239 var1488 ":]")) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(":]") 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 2 
(assert (not (>= var3681 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {rest/2010859792=([com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator], java.lang.String), indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2103=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser, var1281=r7, var2240=com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator, var3502=r0, var690=com.google.javascript.jscomp.jarjar.com.google.re2j.CharClass, var2891=r6, var1488=r1, var3681=i0}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Parser=var2103, r7=var1281, com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator=var2240, r0=var3502, com.google.javascript.jscomp.jarjar.com.google.re2j.CharClass=var690, r6=var2891, r1=var1488, i0=var3681}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator;	r6 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.re2j.CharClass;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Parser$StringIterator: java.lang.String rest()>();	i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>(":]");	if i0 >= 0 goto $i1 = i0 + 2;	return 0
;block_num 2