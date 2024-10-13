(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3174 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun setLength/307228644 (var3174 Int) void)
(declare-fun growNoCopy/211616901 (var3174 Int) void)
(declare-fun get/1366604162 (var3174) var233)
(declare-const null-String String)
(declare-const null-var3174 var3174)
(declare-const var1942 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1942 null-String)))
(declare-const var2727 var3174) ; Statement: r1 := @parameter1: org.apache.lucene.util.IntsRefBuilder 
(assert (not (= var2727 null-var3174)))
(define-const var1458 Int (String_length/-667254855 var1942)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true)
;(assert (setLength/307228644 var2727 var1458)) ; Statement: virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void setLength(int)>(i0) 

(declare-const var2727!1 var3174)
(declare-const var1458!1 Int)
(assert true)
;(assert (growNoCopy/211616901 var2727!1 var1458!1)) ; Statement: virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void growNoCopy(int)>(i0) 

(declare-const var2727!2 var3174)
(declare-const var1458!2 Int)
(define-const var2778 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r2 = virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: org.apache.lucene.util.IntsRef get()>() 
(assert (>= var2778 var1458!2)) ; Cond: i2 >= i0 
(assert true)
(define-const var2972 var233 (get/1366604162 var2727!2)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: org.apache.lucene.util.IntsRef get()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), setLength/307228644=([org.apache.lucene.util.IntsRefBuilder, int], void), growNoCopy/211616901=([org.apache.lucene.util.IntsRefBuilder, int], void), get/1366604162=([org.apache.lucene.util.IntsRefBuilder], org.apache.lucene.util.IntsRef)}
; {var1942=r0, var3174=org.apache.lucene.util.IntsRefBuilder, var2727=r1, var1458=i0, var2778=i2, var233=org.apache.lucene.util.IntsRef, var2972=$r2}
; {r0=var1942, org.apache.lucene.util.IntsRefBuilder=var3174, r1=var2727, i0=var1458, i2=var2778, org.apache.lucene.util.IntsRef=var233, $r2=var2972}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: org.apache.lucene.util.IntsRefBuilder;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void setLength(int)>(i0);	virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: void growNoCopy(int)>(i0);	i2 = 0;	if i2 >= i0 goto $r2 = virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: org.apache.lucene.util.IntsRef get()>();	$r2 = virtualinvoke r1.<org.apache.lucene.util.IntsRefBuilder: org.apache.lucene.util.IntsRef get()>();	return $r2
;block_num 3