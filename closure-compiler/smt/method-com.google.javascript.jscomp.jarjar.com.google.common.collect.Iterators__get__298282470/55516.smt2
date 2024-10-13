(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3479 0)
(declare-sort var1783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3479_checkNonnegative/2010596707 (Int) void)
(declare-fun var3479_advance/-1019384132 (Iterator Int) Int)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun Iterator_next/-1124697587 (Iterator) var1783)
(declare-const null-Iterator Iterator)
(declare-const null-Int Int)
(declare-const var1508 Iterator) ; Statement: r0 := @parameter0: java.util.Iterator 
(assert (not (= var1508 null-Iterator)))
(declare-const var122 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var122 null-Int)))
;(assert (var3479_checkNonnegative/2010596707 var122)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: void checkNonnegative(int)>(i0) 

(declare-const var122!1 Int)
(define-const var2848 Int (var3479_advance/-1019384132 var1508 var122!1)) ; Statement: i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: int advance(java.util.Iterator,int)>(r0, i0) 
(define-const var568 Bool (Iterator_hasNext/-1669924200 var1508)) ; Statement: $z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 != 0 goto $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(assert (not (= (ite var568 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2196 var1783 (Iterator_next/-1124697587 var1508)) ; Statement: $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>() 
(declare-const var1508!1 Iterator)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3479_checkNonnegative/2010596707=([int], void), var3479_advance/-1019384132=([java.util.Iterator, int], int), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), Iterator_next/-1124697587=([java.util.Iterator], java.lang.Object)}
; {var1508=r0, var122=i0, var3479=com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators, var2848=i1, var568=$z0, var1783=java.lang.Object, var2196=$r1}
; {r0=var1508, i0=var122, com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators=var3479, i1=var2848, $z0=var568, java.lang.Object=var1783, $r1=var2196}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.util.Iterator;	i0 := @parameter1: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: void checkNonnegative(int)>(i0);	i1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.collect.Iterators: int advance(java.util.Iterator,int)>(r0, i0);	$z0 = interfaceinvoke r0.<java.util.Iterator: boolean hasNext()>();	if $z0 != 0 goto $r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	$r1 = interfaceinvoke r0.<java.util.Iterator: java.lang.Object next()>();	return $r1
;block_num 2