(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2713 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1997898014 (var2713) String)
(declare-fun subSequence/-1833955413 (String Int Int) String)
(declare-const null-var2713 var2713)
(declare-const null-Int Int)
(declare-const var568 var2713) ; Statement: r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer 
(assert (not (= var568 null-var2713)))
(declare-const var1545 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1545 null-Int)))
(declare-const var288 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var288 null-Int)))
(define-const var2132 String (buffer/1997898014 var568)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer> 
(assert true)
(define-const var2793 String (subSequence/-1833955413 var2132 var1545 var288)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.CharSequence subSequence(int,int)>(i0, i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1997898014=([com.github.jknack.handlebars.Options$InMemoryBuffer], java.lang.StringBuilder), subSequence/-1833955413=([java.lang.StringBuilder, int, int], java.lang.CharSequence)}
; {var2713=com.github.jknack.handlebars.Options$InMemoryBuffer, var568=r0, var1545=i0, var288=i1, var2132=$r1, var2793=$r2}
; {com.github.jknack.handlebars.Options$InMemoryBuffer=var2713, r0=var568, i0=var1545, i1=var288, $r1=var2132, $r2=var2793}
;seq <java.lang.StringBuilder: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.StringBuilder: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.Options$InMemoryBuffer;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = r0.<com.github.jknack.handlebars.Options$InMemoryBuffer: java.lang.StringBuilder buffer>;	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.CharSequence subSequence(int,int)>(i0, i1);	return $r2
;block_num 1