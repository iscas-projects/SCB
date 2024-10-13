(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2627 0)
(declare-sort var1634 0)
(declare-sort var899 0)
(declare-sort var3329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1634_checkNotNull/1446102589 (var899) var899)
(declare-fun cast-from-String-to-var899 (String) var899)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var3329_ipStringToBytes/649607717 (String) (Array Int Int))
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var572 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var572 null-String)))
;(assert (var1634_checkNotNull/1446102589 (cast-from-String-to-var899 var572))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var572!1 String)
(assert true)
(define-const var3803 Bool (startsWith/-1785782452 var572!1 "[")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[") 
 ; Statement: if $z0 == 0 goto r2 = r0 
(assert (= (ite var3803 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2415 String var572!1) ; Statement: r2 = r0 
(define-const var276 Int 4) ; Statement: b3 = 4 
(assert true) ; Non Conditional
(define-const var3757 (Array Int Int) (var3329_ipStringToBytes/649607717 var2415)) ; Statement: $r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: byte[] ipStringToBytes(java.lang.String)>(r2) 
 ; Statement: if $r3 == null goto return null 
(assert (= var3757 null-__Array__Int__Int__)) ; Cond: $r3 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var1634_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var899=([java.lang.String], java.lang.Object), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var3329_ipStringToBytes/649607717=([java.lang.String], byte[])}
; {var572=r0, var2627=null_type, var1634=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var899=java.lang.Object, var3803=$z0, var2415=r2, var276=b3, var3329=com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses, var3757=$r3}
; {r0=var572, null_type=var2627, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1634, java.lang.Object=var899, $z0=var3803, r2=var2415, b3=var276, com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses=var3329, $r3=var3757}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("[");	if $z0 == 0 goto r2 = r0;	r2 = r0;	b3 = 4;	$r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: byte[] ipStringToBytes(java.lang.String)>(r2);	if $r3 == null goto return null;	return null
;block_num 4