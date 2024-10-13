(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2031 0)
(declare-sort var2530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun setLength/307228644 (var2031 Int) void)
(declare-fun get/1366604162 (var2031) var2530)
(declare-const null-String String)
(declare-const null-var2031 var2031)
(declare-const var1951 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1951 null-String)))
(declare-const var1769 var2031) ; Statement: r1 := @parameter1: org.apache.lucene.util.IntsRefBuilder 
(assert (not (= var1769 null-var2031)))
(define-const var299 Int 0) ; Statement: i4 = 0 
(define-const var828 Int 0) ; Statement: i5 = 0 
(define-const var1340 Int (String_length/-667254855 var1951)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void setLength(int)>(i5) 
(assert (>= var299 var1340)) ; Cond: i4 >= i0 
(assert true)
;(assert (setLength/307228644 var1769 var828)) ; Statement: virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void setLength(int)>(i5) 

(declare-const var1769!1 var2031)
(declare-const var828!1 Int)
(assert true)
(define-const var1009 var2530 (get/1366604162 var1769!1)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: org.apache.lucene.util.IntsRef get()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), setLength/307228644=([org.apache.lucene.util.IntsRefBuilder, int], void), get/1366604162=([org.apache.lucene.util.IntsRefBuilder], org.apache.lucene.util.IntsRef)}
; {var1951=r0, var2031=org.apache.lucene.util.IntsRefBuilder, var1769=r1, var299=i4, var828=i5, var1340=i0, var2530=org.apache.lucene.util.IntsRef, var1009=$r2}
; {r0=var1951, org.apache.lucene.util.IntsRefBuilder=var2031, r1=var1769, i4=var299, i5=var828, i0=var1340, org.apache.lucene.util.IntsRef=var2530, $r2=var1009}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: org.apache.lucene.util.IntsRefBuilder;	i4 = 0;	i5 = 0;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i4 >= i0 goto virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void setLength(int)>(i5);	virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void setLength(int)>(i5);	$r2 = virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: org.apache.lucene.util.IntsRef get()>();	return $r2
;block_num 3