(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3184 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3184-to-var657 (var3184) var657)
(declare-fun getClass/1258963082 (var657) ClassObject)
(declare-fun cast-from-var657-to-var3184 (var657) var3184)
(declare-fun name/-383701400 (var3184) String)
(declare-const null-var3184 var3184)
(declare-const null-var657 var657)
(declare-const var1967 var3184) ; Statement: r0 := @this: org.slf4j.helpers.SubstituteLogger 
(assert (not (= var1967 null-var3184)))
(declare-const var3836 var657) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3836 null-var657)))
 ; Statement: if r0 != r1 goto (branch) 
(assert (not (= (cast-from-var3184-to-var657 var1967) var3836))) ; Cond: r0 != r1 
 ; Statement: if r1 == null goto return 0 
(assert (not (= var3836 null-var657))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var525 ClassObject (getClass/1258963082 (cast-from-var3184-to-var657 var1967))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1570 ClassObject (getClass/1258963082 var3836)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r3 == $r2 goto r4 = (org.slf4j.helpers.SubstituteLogger) r1 
(assert (= var525 var1570)) ; Cond: $r3 == $r2 
(define-const var1951 var3184 (cast-from-var657-to-var3184 var3836)) ; Statement: r4 = (org.slf4j.helpers.SubstituteLogger) r1 
(define-const var1433 String (name/-383701400 var1967)) ; Statement: $r6 = r0.<org.slf4j.helpers.SubstituteLogger: java.lang.String name> 
(define-const var864 String (name/-383701400 var1951)) ; Statement: $r5 = r4.<org.slf4j.helpers.SubstituteLogger: java.lang.String name> 
(assert true)
(define-const var2262 Bool (= var1433 var864)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto return 1 
(assert (not (not (= (ite var2262 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3184-to-var657=([org.slf4j.helpers.SubstituteLogger], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var657-to-var3184=([java.lang.Object], org.slf4j.helpers.SubstituteLogger), name/-383701400=([org.slf4j.helpers.SubstituteLogger], java.lang.String)}
; {var3184=org.slf4j.helpers.SubstituteLogger, var1967=r0, var657=java.lang.Object, var3836=r1, var525=$r3, var1570=$r2, var1951=r4, var1433=$r6, var864=$r5, var2262=$z0}
; {org.slf4j.helpers.SubstituteLogger=var3184, r0=var1967, java.lang.Object=var657, r1=var3836, $r3=var525, $r2=var1570, r4=var1951, $r6=var1433, $r5=var864, $z0=var2262}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.slf4j.helpers.SubstituteLogger;	r1 := @parameter0: java.lang.Object;	if r0 != r1 goto (branch);	if r1 == null goto return 0;	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	if $r3 == $r2 goto r4 = (org.slf4j.helpers.SubstituteLogger) r1;	r4 = (org.slf4j.helpers.SubstituteLogger) r1;	$r6 = r0.<org.slf4j.helpers.SubstituteLogger: java.lang.String name>;	$r5 = r4.<org.slf4j.helpers.SubstituteLogger: java.lang.String name>;	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z0 != 0 goto return 1;	return 0
;block_num 5