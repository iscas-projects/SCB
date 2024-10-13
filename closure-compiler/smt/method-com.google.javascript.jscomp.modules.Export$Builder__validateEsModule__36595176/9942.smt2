(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2610 0)
(declare-sort var3343 0)
(declare-sort var3376 0)
(declare-sort var2383 0)
(declare-sort var3142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun closureNamespace/1147214340 (var3343) String)
(declare-fun var2383_checkState/1431124798 (Bool) void)
(declare-fun importName/-2000336172 (var3343) String)
(declare-fun var2383_checkState/1633726539 (Bool var3142) void)
(declare-fun cast-from-String-to-var3142 (String) var3142)
(declare-fun localName/-474063648 (var3343) String)
(declare-fun moduleRequest/-157486253 (var3343) String)
(declare-const null-var2610 var2610)
(declare-const null-var3343 var3343)
(declare-const null-String String)
(declare-const var3405 var2610) ; Statement: r14 := @this: com.google.javascript.jscomp.modules.Export$Builder 
(assert (not (= var3405 null-var2610)))
(declare-const var1292 var3343) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.modules.Export 
(assert (not (= var1292 null-var3343)))
(assert true)
(define-const var701 String (closureNamespace/1147214340 var1292)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String closureNamespace()>() 
 ; Statement: if $r1 != null goto $z1 = 0 
(assert (not (not (= var701 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var349 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2383_checkState/1431124798 var349)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var349!1 Bool)
(define-const var2461 String "*") ; Statement: $r3 = "*" 
(assert true)
(define-const var1749 String (importName/-2000336172 var1292)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>() 
(assert true)
(define-const var3401 Bool (= var2461 var1749)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 1 
(assert (= (ite var3401 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1108 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.")] 
(assert true) ; Non Conditional
;(assert (var2383_checkState/1633726539 var1108 (cast-from-String-to-var3142 "Star exports should not have exported / local names."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.") 

(declare-const var1108!1 Bool)
(declare-const var1027 String)
(assert true)
(define-const var2552 String (localName/-474063648 var1292)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String localName()>() 
 ; Statement: if $r15 == null goto $z3 = 1 
(assert (= var2552 null-String)) ; Cond: $r15 == null 
(define-const var2004 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.")] 
(assert true) ; Non Conditional
;(assert (var2383_checkState/1633726539 var2004 (cast-from-String-to-var3142 "Local exports should not have module requests."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.") 

(declare-const var2004!1 Bool)
(declare-const var533 String)
(assert true)
(define-const var3507 String (moduleRequest/-157486253 var1292)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>() 
 ; Statement: if $r4 == null goto $z4 = 1 
(assert (= var3507 null-String)) ; Cond: $r4 == null 
(define-const var3487 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.")] 
(assert true) ; Non Conditional
;(assert (var2383_checkState/1633726539 var3487 (cast-from-String-to-var3142 "Reexports should not have local names."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.") 

(declare-const var3487!1 Bool)
(declare-const var71 String)
(assert true)
(define-const var2317 String (moduleRequest/-157486253 var1292)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>() 
 ; Statement: if $r5 == null goto $z5 = 1 
(assert (= var2317 null-String)) ; Cond: $r5 == null 
(define-const var340 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.")] 
(assert true) ; Non Conditional
;(assert (var2383_checkState/1633726539 var340 (cast-from-String-to-var3142 "Reexports should have import names."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.") 

(declare-const var340!1 Bool)
(declare-const var2229 String)
(assert true)
(define-const var700 String (importName/-2000336172 var1292)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>() 
 ; Statement: if $r6 == null goto $z6 = 1 
(assert (= var700 null-String)) ; Cond: $r6 == null 
(define-const var3656 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.")] 
(assert true) ; Non Conditional
;(assert (var2383_checkState/1633726539 var3656 (cast-from-String-to-var3142 "Exports with an import name should be a reexport."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.") 

(declare-const var3656!1 Bool)
(declare-const var2156 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {closureNamespace/1147214340=([com.google.javascript.jscomp.modules.Export], java.lang.String), var2383_checkState/1431124798=([boolean], void), importName/-2000336172=([com.google.javascript.jscomp.modules.Export], java.lang.String), var2383_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-String-to-var3142=([java.lang.String], java.lang.Object), localName/-474063648=([com.google.javascript.jscomp.modules.Export], java.lang.String), moduleRequest/-157486253=([com.google.javascript.jscomp.modules.Export], java.lang.String)}
; {var2610=com.google.javascript.jscomp.modules.Export$Builder, var3405=r14, var3343=com.google.javascript.jscomp.modules.Export, var1292=r0, var701=$r1, var3376=null_type, var349=$z1, var2383=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2461=$r3, var1749=$r2, var3401=$z0, var1108=$z2, var3142=java.lang.Object, var1027="Star exports should not have exported / local names.", var2552=$r15, var2004=$z3, var533="Local exports should not have module requests.", var3507=$r4, var3487=$z4, var71="Reexports should not have local names.", var2317=$r5, var340=$z5, var2229="Reexports should have import names.", var700=$r6, var3656=$z6, var2156="Exports with an import name should be a reexport."}
; {com.google.javascript.jscomp.modules.Export$Builder=var2610, r14=var3405, com.google.javascript.jscomp.modules.Export=var3343, r0=var1292, $r1=var701, null_type=var3376, $z1=var349, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2383, $r3=var2461, $r2=var1749, $z0=var3401, $z2=var1108, java.lang.Object=var3142, "Star exports should not have exported / local names."=var1027, $r15=var2552, $z3=var2004, "Local exports should not have module requests."=var533, $r4=var3507, $z4=var3487, "Reexports should not have local names."=var71, $r5=var2317, $z5=var340, "Reexports should have import names."=var2229, $r6=var700, $z6=var3656, "Exports with an import name should be a reexport."=var2156}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r14 := @this: com.google.javascript.jscomp.modules.Export$Builder;	r0 := @parameter0: com.google.javascript.jscomp.modules.Export;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String closureNamespace()>();	if $r1 != null goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = "*";	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 1;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.");	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String localName()>();	if $r15 == null goto $z3 = 1;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.");	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>();	if $r4 == null goto $z4 = 1;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.");	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>();	if $r5 == null goto $z5 = 1;	$z5 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.");	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>();	if $r6 == null goto $z6 = 1;	$z6 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.");	return
;block_num 13