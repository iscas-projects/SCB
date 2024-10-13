(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var950 0)
(declare-sort var2510 0)
(declare-sort var2930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var950_put/1464166817 (var950 var2510 var2510) var2510)
(declare-fun cast-from-String-to-var2510 (String) var2510)
(declare-fun cast-from-var2510-to-String (var2510) String)
(declare-const null-var950 var950)
(declare-const null-var2510 var2510)
(declare-const null-String String)
(declare-const var1755 var950) ; Statement: r0 := @parameter0: java.util.Map 
(assert (not (= var1755 null-var950)))
(declare-const var1639 var2510) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var1639 null-var2510)))
(declare-const var2241 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2241 null-String)))
(define-const var3590 var2510 (var950_put/1464166817 var1755 var1639 (cast-from-String-to-var2510 var2241))) ; Statement: $r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 
(define-const var2751 String (cast-from-var2510-to-String var3590)) ; Statement: r4 = (java.lang.String) $r3 
 ; Statement: if r4 == null goto return 
(assert (= var2751 null-String)) ; Cond: r4 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var950_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2510=([java.lang.String], java.lang.Object), cast-from-var2510-to-String=([java.lang.Object], java.lang.String)}
; {var950=java.util.Map, var1755=r0, var2510=java.lang.Object, var1639=r1, var2241=r2, var2930=null_type, var3590=$r3, var2751=r4}
; {java.util.Map=var950, r0=var1755, java.lang.Object=var2510, r1=var1639, r2=var2241, null_type=var2930, $r3=var3590, r4=var2751}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.util.Map;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.String;	$r3 = interfaceinvoke r0.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	r4 = (java.lang.String) $r3;	if r4 == null goto return;	return
;block_num 2