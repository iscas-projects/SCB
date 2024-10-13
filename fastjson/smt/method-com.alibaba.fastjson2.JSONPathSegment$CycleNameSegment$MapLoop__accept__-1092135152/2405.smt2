(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1153 0)
(declare-sort var3504 0)
(declare-sort var3866 0)
(declare-sort var882 0)
(declare-sort var604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1311331493 (var1153) var3866)
(declare-fun name/-1001561857 (var3866) String)
(declare-fun cast-from-var3504-to-var882 (var3504) var882)
(declare-fun var882_forEach/1471512036 (var882 var604) void)
(declare-fun cast-from-var1153-to-var604 (var1153) var604)
(declare-const null-var1153 var1153)
(declare-const null-var3504 var3504)
(declare-const var1822 var1153) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop 
(assert (not (= var1822 null-var1153)))
(declare-const var1598 var3504) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1598 null-var3504)))
(declare-const var1646 var3504) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1646 null-var3504)))
(define-const var3904 var3866 (this$0/-1311331493 var1822)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop: com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment this$0> 
(define-const var735 String (name/-1001561857 var3904)) ; Statement: $r3 = $r1.<com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment: java.lang.String name> 
(assert true)
(define-const var3726 Bool false) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto $z1 = r4 instanceof java.util.Map 
(assert (= (ite var3726 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3605 Bool false) ; Statement: $z1 = r4 instanceof java.util.Map 
 ; Statement: if $z1 == 0 goto $z2 = r4 instanceof java.util.List 
(assert (not (= (ite var3605 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var693 var882 (cast-from-var3504-to-var882 var1646)) ; Statement: $r8 = (java.util.Map) r4 
;(assert (var882_forEach/1471512036 var693 (cast-from-var1153-to-var604 var1822))) ; Statement: interfaceinvoke $r8.<java.util.Map: void forEach(java.util.function.BiConsumer)>(r0) 

(declare-const var693!1 var882)
(declare-const var1822!1 var1153)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1311331493=([com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop], com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment), name/-1001561857=([com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment], java.lang.String), cast-from-var3504-to-var882=([java.lang.Object], java.util.Map), var882_forEach/1471512036=([java.util.Map, java.util.function.BiConsumer], void), cast-from-var1153-to-var604=([com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop], java.util.function.BiConsumer)}
; {var1153=com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop, var1822=r0, var3504=java.lang.Object, var1598=r2, var1646=r4, var3866=com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment, var3904=$r1, var735=$r3, var3726=$z0, var3605=$z1, var882=java.util.Map, var693=$r8, var604=java.util.function.BiConsumer}
; {com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop=var1153, r0=var1822, java.lang.Object=var3504, r2=var1598, r4=var1646, com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment=var3866, $r1=var3904, $r3=var735, $z0=var3726, $z1=var3605, java.util.Map=var882, $r8=var693, java.util.function.BiConsumer=var604}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop;	r2 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment$MapLoop: com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment this$0>;	$r3 = $r1.<com.alibaba.fastjson2.JSONPathSegment$CycleNameSegment: java.lang.String name>;	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto $z1 = r4 instanceof java.util.Map;	$z1 = r4 instanceof java.util.Map;	if $z1 == 0 goto $z2 = r4 instanceof java.util.List;	$r8 = (java.util.Map) r4;	interfaceinvoke $r8.<java.util.Map: void forEach(java.util.function.BiConsumer)>(r0);	goto [?= return];	return
;block_num 4