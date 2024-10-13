(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var735 0)
(declare-sort var1232 0)
(declare-sort var2617 0)
(declare-sort var2682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1232_containsKey/1715618542 (var1232 var2682) Bool)
(declare-fun cast-from-String-to-var2682 (String) var2682)
(declare-fun var1232_put/1464166817 (var1232 var2682 var2682) var2682)
(declare-fun cast-from-var735-to-var2682 (var735) var2682)
(declare-const null-String String)
(declare-const null-var735 var735)
(declare-const var2617-ARCH_TO_PROCESSOR var1232)
(declare-const var282 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var282 null-String)))
(declare-const var1233 var735) ; Statement: r2 := @parameter1: org.apache.commons.lang3.arch.Processor 
(assert (not (= var1233 null-var735)))
(define-const var3017 var1232 var2617-ARCH_TO_PROCESSOR) ; Statement: $r1 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR> 
(define-const var3980 Bool (var1232_containsKey/1715618542 var3017 (cast-from-String-to-var2682 var282))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.Map: boolean containsKey(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR> 
(assert (= (ite var3980 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1985 var1232 var2617-ARCH_TO_PROCESSOR) ; Statement: $r3 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR> 
;(assert (var1232_put/1464166817 var1985 (cast-from-String-to-var2682 var282) (cast-from-var735-to-var2682 var1233))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r2) 

(declare-const var1985!1 var1232)
(declare-const var282!1 String)
(declare-const var1233!1 var735)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1232_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2682=([java.lang.String], java.lang.Object), var1232_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var735-to-var2682=([org.apache.commons.lang3.arch.Processor], java.lang.Object)}
; {var282=r0, var1969=null_type, var735=org.apache.commons.lang3.arch.Processor, var1233=r2, var1232=java.util.Map, var2617=org.apache.commons.lang3.ArchUtils, var3017=$r1, var2682=java.lang.Object, var3980=$z0, var1985=$r3}
; {r0=var282, null_type=var1969, org.apache.commons.lang3.arch.Processor=var735, r2=var1233, java.util.Map=var1232, org.apache.commons.lang3.ArchUtils=var2617, $r1=var3017, java.lang.Object=var2682, $z0=var3980, $r3=var1985}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.commons.lang3.arch.Processor;	$r1 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR>;	$z0 = interfaceinvoke $r1.<java.util.Map: boolean containsKey(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR>;	$r3 = <org.apache.commons.lang3.ArchUtils: java.util.Map ARCH_TO_PROCESSOR>;	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r0, r2);	return
;block_num 2