(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var843 0)
(declare-sort var1446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var843-to-var1446 (var843) var1446)
(declare-fun getClass/1258963082 (var1446) ClassObject)
(declare-fun cast-from-var1446-to-var843 (var1446) var843)
(declare-fun name/-383701400 (var843) String)
(declare-const null-var843 var843)
(declare-const null-var1446 var1446)
(declare-const var3171 var843) ; Statement: r0 := @this: org.slf4j.helpers.SubstituteLogger 
(assert (not (= var3171 null-var843)))
(declare-const var512 var1446) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var512 null-var1446)))
 ; Statement: if r0 != r1 goto (branch) 
(assert (not (= (cast-from-var843-to-var1446 var3171) var512))) ; Cond: r0 != r1 
 ; Statement: if r1 == null goto return 0 
(assert (not (= var512 null-var1446))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var3813 ClassObject (getClass/1258963082 (cast-from-var843-to-var1446 var3171))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1457 ClassObject (getClass/1258963082 var512)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r3 == $r2 goto r4 = (org.slf4j.helpers.SubstituteLogger) r1 
(assert (= var3813 var1457)) ; Cond: $r3 == $r2 
(define-const var3818 var843 (cast-from-var1446-to-var843 var512)) ; Statement: r4 = (org.slf4j.helpers.SubstituteLogger) r1 
(define-const var3935 String (name/-383701400 var3171)) ; Statement: $r6 = r0.<org.slf4j.helpers.SubstituteLogger: java.lang.String name> 
(define-const var2510 String (name/-383701400 var3818)) ; Statement: $r5 = r4.<org.slf4j.helpers.SubstituteLogger: java.lang.String name> 
(assert true)
(define-const var3602 Bool (= var3935 var2510)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto return 1 
(assert (not (= (ite var3602 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var843-to-var1446=([org.slf4j.helpers.SubstituteLogger], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1446-to-var843=([java.lang.Object], org.slf4j.helpers.SubstituteLogger), name/-383701400=([org.slf4j.helpers.SubstituteLogger], java.lang.String)}
; {var843=org.slf4j.helpers.SubstituteLogger, var3171=r0, var1446=java.lang.Object, var512=r1, var3813=$r3, var1457=$r2, var3818=r4, var3935=$r6, var2510=$r5, var3602=$z0}
; {org.slf4j.helpers.SubstituteLogger=var843, r0=var3171, java.lang.Object=var1446, r1=var512, $r3=var3813, $r2=var1457, r4=var3818, $r6=var3935, $r5=var2510, $z0=var3602}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.slf4j.helpers.SubstituteLogger;	r1 := @parameter0: java.lang.Object;	if r0 != r1 goto (branch);	if r1 == null goto return 0;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	if $r3 == $r2 goto r4 = (org.slf4j.helpers.SubstituteLogger) r1;	r4 = (org.slf4j.helpers.SubstituteLogger) r1;	$r6 = r0.<org.slf4j.helpers.SubstituteLogger: java.lang.String name>;	$r5 = r4.<org.slf4j.helpers.SubstituteLogger: java.lang.String name>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z0 != 0 goto return 1;	return 1
;block_num 5