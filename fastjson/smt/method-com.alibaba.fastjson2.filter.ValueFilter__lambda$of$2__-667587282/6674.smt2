(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2608 0)
(declare-sort var3073 0)
(declare-sort var2624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3073_get/1088891777 (var3073 var2624) var2624)
(declare-const null-String String)
(declare-const null-var3073 var3073)
(declare-const null-var2624 var2624)
(declare-const var754 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var754 null-String)))
(declare-const var3511 var3073) ; Statement: r1 := @parameter1: java.util.Map 
(assert (not (= var3511 null-var3073)))
(declare-const var2545 var2624) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var2545 null-var2624)))
(declare-const var2225 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var2225 null-String)))
(declare-const var541 var2624) ; Statement: r2 := @parameter4: java.lang.Object 
(assert (not (= var541 null-var2624)))
 ; Statement: if r0 == null goto $r4 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
(assert (= var754 null-String)) ; Cond: r0 == null 
(define-const var3027 var2624 (var3073_get/1088891777 var3511 var541)) ; Statement: $r4 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2) 
 ; Statement: if $r4 != null goto return $r4 
(assert (not (= var3027 null-var2624))) ; Cond: $r4 != null 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var3073_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object)}
; {var754=r0, var2608=null_type, var3073=java.util.Map, var3511=r1, var2624=java.lang.Object, var2545=r5, var2225=r3, var541=r2, var3027=$r4}
; {r0=var754, null_type=var2608, java.util.Map=var3073, r1=var3511, java.lang.Object=var2624, r5=var2545, r3=var2225, r2=var541, $r4=var3027}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Map;	r5 := @parameter2: java.lang.Object;	r3 := @parameter3: java.lang.String;	r2 := @parameter4: java.lang.Object;	if r0 == null goto $r4 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	$r4 = interfaceinvoke r1.<java.util.Map: java.lang.Object get(java.lang.Object)>(r2);	if $r4 != null goto return $r4;	return $r4
;block_num 3