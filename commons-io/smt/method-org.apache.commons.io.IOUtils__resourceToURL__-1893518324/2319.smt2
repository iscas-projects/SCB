(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var199 0)
(declare-sort var2765 0)
(declare-sort var1761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResource/282459787 (var2765 String) var1761)
(declare-const null-String String)
(declare-const null-var2765 var2765)
(declare-const null-var1761 var1761)
(declare-const var1420 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1420 null-String)))
(declare-const var2706 var2765) ; Statement: r0 := @parameter1: java.lang.ClassLoader 
(assert (not (= var2706 null-var2765)))
 ; Statement: if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
(assert (not (= var2706 null-var2765))) ; Cond: r0 != null 
(assert true)
(define-const var1150 var1761 (getResource/282459787 var2706 var1420)) ; Statement: $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
(assert true) ; Non Conditional
 ; Statement: if $r8 != null goto return $r8 
(assert (not (= var1150 null-var1761))) ; Cond: $r8 != null 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL)}
; {var1420=r1, var199=null_type, var2765=java.lang.ClassLoader, var2706=r0, var1761=java.net.URL, var1150=$r8}
; {r1=var1420, null_type=var199, java.lang.ClassLoader=var2765, r0=var2706, java.net.URL=var1761, $r8=var1150}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.ClassLoader;	if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	$r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	if $r8 != null goto return $r8;	return $r8
;block_num 4