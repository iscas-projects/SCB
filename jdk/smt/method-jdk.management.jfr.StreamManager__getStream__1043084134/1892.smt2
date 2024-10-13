(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1574 0)
(declare-sort var3922 0)
(declare-sort var677 0)
(declare-sort var3914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun streams/-1209721817 (var1574) var3922)
(declare-fun Int_valueOf/-1102777585 (Int) Int)
(declare-fun var3922_get/1088891777 (var3922 var677) var677)
(declare-fun cast-from-Int-to-var677 (Int) var677)
(declare-fun cast-from-var677-to-var3914 (var677) var3914)
(declare-const null-var1574 var1574)
(declare-const null-Int Int)
(declare-const null-var3914 var3914)
(declare-const var3003 var1574) ; Statement: r0 := @this: jdk.management.jfr.StreamManager 
(assert (not (= var3003 null-var1574)))
(declare-const var3039 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3039 null-Int)))
(define-const var1909 var3922 (streams/-1209721817 var3003)) ; Statement: $r1 = r0.<jdk.management.jfr.StreamManager: java.util.Map streams> 
(define-const var823 Int (Int_valueOf/-1102777585 var3039)) ; Statement: $r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0) 
(define-const var979 var677 (var3922_get/1088891777 var1909 (cast-from-Int-to-var677 var823))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var3485 var3914 (cast-from-var677-to-var3914 var979)) ; Statement: r4 = (jdk.management.jfr.Stream) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var3485 null-var3914))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {streams/-1209721817=([jdk.management.jfr.StreamManager], java.util.Map), Int_valueOf/-1102777585=([long], java.lang.Long), var3922_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var677=([java.lang.Long], java.lang.Object), cast-from-var677-to-var3914=([java.lang.Object], jdk.management.jfr.Stream)}
; {var1574=jdk.management.jfr.StreamManager, var3003=r0, var3039=l0, var3922=java.util.Map, var1909=$r1, var823=$r2, var677=java.lang.Object, var979=$r3, var3914=jdk.management.jfr.Stream, var3485=r4}
; {jdk.management.jfr.StreamManager=var1574, r0=var3003, l0=var3039, java.util.Map=var3922, $r1=var1909, $r2=var823, java.lang.Object=var677, $r3=var979, jdk.management.jfr.Stream=var3914, r4=var3485}
;seq 
;cnt {}
;stmts r0 := @this: jdk.management.jfr.StreamManager;	l0 := @parameter0: long;	$r1 = r0.<jdk.management.jfr.StreamManager: java.util.Map streams>;	$r2 = staticinvoke <java.lang.Long: java.lang.Long valueOf(long)>(l0);	$r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (jdk.management.jfr.Stream) $r3;	if r4 != null goto return r4;	return r4
;block_num 2