(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var839 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDefaultNS/-140015768 (var839) String)
(declare-fun getPrefixForNamespace/728125261 (var839 String) String)
(declare-const null-String String)
(declare-const null-var839 var839)
(declare-const var3127 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3127 null-String)))
(declare-const var694 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var694 null-String)))
(declare-const var3500 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3500 null-String)))
(declare-const var1395 var839) ; Statement: r0 := @parameter3: freemarker.core.Environment 
(assert (not (= var1395 null-var839)))
(assert true)
(define-const var3208 String (getDefaultNS/-140015768 var1395)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDefaultNS()>() 
 ; Statement: if r1 == null goto $r3 = "" 
(assert (= var3208 null-String)) ; Cond: r1 == null 
(define-const var1797 String "") ; Statement: $r3 = "" 
(assert true)
(define-const var1501 Bool (= var1797 var3500)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2) 
(assert (= (ite var1501 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3548 String (getPrefixForNamespace/728125261 var1395 var3500)) ; Statement: r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto $r6 = new java.lang.StringBuilder 
(assert (not (not (= var3548 null-String)))) ; Negate: Cond: r4 != null  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getDefaultNS/-140015768=([freemarker.core.Environment], java.lang.String), getPrefixForNamespace/728125261=([freemarker.core.Environment, java.lang.String], java.lang.String)}
; {var3127=r5, var240=null_type, var694=r8, var3500=r2, var839=freemarker.core.Environment, var1395=r0, var3208=r1, var1797=$r3, var1501=$z0, var3548=r4}
; {r5=var3127, null_type=var240, r8=var694, r2=var3500, freemarker.core.Environment=var839, r0=var1395, r1=var3208, $r3=var1797, $z0=var1501, r4=var3548}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r0 := @parameter3: freemarker.core.Environment;	r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDefaultNS()>();	if r1 == null goto $r3 = "";	$r3 = "";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2);	r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2);	if r4 != null goto $r6 = new java.lang.StringBuilder;	return 0
;block_num 4