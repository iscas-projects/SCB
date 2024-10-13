(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1178 0)
(declare-sort var1586 0)
(declare-sort var3262 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3262_checkNotNull/1446102589 (var1586) var1586)
(declare-fun isActuallyE/-817329468 (var1178 var1586) Bool)
(declare-const null-var1178 var1178)
(declare-const null-var1586 var1586)
(declare-const var3455 var1178) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset 
(assert (not (= var3455 null-var1178)))
(declare-const var3788 var1586) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3788 null-var1586)))
;(assert (var3262_checkNotNull/1446102589 var3788)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var3788!1 var1586)
(assert true)
(define-const var3934 Bool (isActuallyE/-817329468 var3455 var3788!1)) ; Statement: $z0 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset: boolean isActuallyE(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3934 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3262_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), isActuallyE/-817329468=([com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset, java.lang.Object], boolean)}
; {var1178=com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset, var3455=r1, var1586=java.lang.Object, var3788=r0, var3262=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3934=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset=var1178, r1=var3455, java.lang.Object=var1586, r0=var3788, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3262, $z0=var3934}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset;	r0 := @parameter0: java.lang.Object;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$z0 = specialinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.EnumMultiset: boolean isActuallyE(java.lang.Object)>(r0);	if $z0 != 0 goto return;	return
;block_num 2