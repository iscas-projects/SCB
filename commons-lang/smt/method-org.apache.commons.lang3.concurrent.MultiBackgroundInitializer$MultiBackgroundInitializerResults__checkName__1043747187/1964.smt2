(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2678 0)
(declare-sort var1546 0)
(declare-sort var1207 0)
(declare-sort var2568 0)
(declare-sort var930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun initializers/-1177927772 (var2678) var1207)
(declare-fun var1207_get/1088891777 (var1207 var2568) var2568)
(declare-fun cast-from-String-to-var2568 (String) var2568)
(declare-fun cast-from-var2568-to-var930 (var2568) var930)
(declare-const null-var2678 var2678)
(declare-const null-String String)
(declare-const null-var930 var930)
(declare-const var2276 var2678) ; Statement: r0 := @this: org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults 
(assert (not (= var2276 null-var2678)))
(declare-const var1579 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1579 null-String)))
(define-const var817 var1207 (initializers/-1177927772 var2276)) ; Statement: $r2 = r0.<org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults: java.util.Map initializers> 
(define-const var2500 var2568 (var1207_get/1088891777 var817 (cast-from-String-to-var2568 var1579))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var829 var930 (cast-from-var2568-to-var930 var2500)) ; Statement: r4 = (org.apache.commons.lang3.concurrent.BackgroundInitializer) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var829 null-var930))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {initializers/-1177927772=([org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults], java.util.Map), var1207_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2568=([java.lang.String], java.lang.Object), cast-from-var2568-to-var930=([java.lang.Object], org.apache.commons.lang3.concurrent.BackgroundInitializer)}
; {var2678=org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults, var2276=r0, var1579=r1, var1546=null_type, var1207=java.util.Map, var817=$r2, var2568=java.lang.Object, var2500=$r3, var930=org.apache.commons.lang3.concurrent.BackgroundInitializer, var829=r4}
; {org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults=var2678, r0=var2276, r1=var1579, null_type=var1546, java.util.Map=var1207, $r2=var817, java.lang.Object=var2568, $r3=var2500, org.apache.commons.lang3.concurrent.BackgroundInitializer=var930, r4=var829}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.commons.lang3.concurrent.MultiBackgroundInitializer$MultiBackgroundInitializerResults: java.util.Map initializers>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.apache.commons.lang3.concurrent.BackgroundInitializer) $r3;	if r4 != null goto return r4;	return r4
;block_num 2