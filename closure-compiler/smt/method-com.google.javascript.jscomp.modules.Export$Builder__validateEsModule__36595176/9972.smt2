(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var783 0)
(declare-sort var1824 0)
(declare-sort var425 0)
(declare-sort var1016 0)
(declare-sort var868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun closureNamespace/1147214340 (var1824) String)
(declare-fun var1016_checkState/1431124798 (Bool) void)
(declare-fun importName/-2000336172 (var1824) String)
(declare-fun var1016_checkState/1633726539 (Bool var868) void)
(declare-fun cast-from-String-to-var868 (String) var868)
(declare-fun localName/-474063648 (var1824) String)
(declare-fun moduleRequest/-157486253 (var1824) String)
(declare-const null-var783 var783)
(declare-const null-var1824 var1824)
(declare-const null-String String)
(declare-const var3480 var783) ; Statement: r14 := @this: com.google.javascript.jscomp.modules.Export$Builder 
(assert (not (= var3480 null-var783)))
(declare-const var1659 var1824) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.modules.Export 
(assert (not (= var1659 null-var1824)))
(assert true)
(define-const var1213 String (closureNamespace/1147214340 var1659)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String closureNamespace()>() 
 ; Statement: if $r1 != null goto $z1 = 0 
(assert (not (= var1213 null-String))) ; Cond: $r1 != null 
(define-const var508 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var1016_checkState/1431124798 var508)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1) 

(declare-const var508!1 Bool)
(define-const var3178 String "*") ; Statement: $r3 = "*" 
(assert true)
(define-const var1550 String (importName/-2000336172 var1659)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>() 
(assert true)
(define-const var460 Bool (= var3178 var1550)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $z2 = 1 
(assert (= (ite var460 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2342 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.")] 
(assert true) ; Non Conditional
;(assert (var1016_checkState/1633726539 var2342 (cast-from-String-to-var868 "Star exports should not have exported / local names."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.") 

(declare-const var2342!1 Bool)
(declare-const var696 String)
(assert true)
(define-const var3385 String (localName/-474063648 var1659)) ; Statement: $r15 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String localName()>() 
 ; Statement: if $r15 == null goto $z3 = 1 
(assert (= var3385 null-String)) ; Cond: $r15 == null 
(define-const var702 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.")] 
(assert true) ; Non Conditional
;(assert (var1016_checkState/1633726539 var702 (cast-from-String-to-var868 "Local exports should not have module requests."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.") 

(declare-const var702!1 Bool)
(declare-const var1789 String)
(assert true)
(define-const var1822 String (moduleRequest/-157486253 var1659)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>() 
 ; Statement: if $r4 == null goto $z4 = 1 
(assert (= var1822 null-String)) ; Cond: $r4 == null 
(define-const var3847 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.")] 
(assert true) ; Non Conditional
;(assert (var1016_checkState/1633726539 var3847 (cast-from-String-to-var868 "Reexports should not have local names."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.") 

(declare-const var3847!1 Bool)
(declare-const var1805 String)
(assert true)
(define-const var3720 String (moduleRequest/-157486253 var1659)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>() 
 ; Statement: if $r5 == null goto $z5 = 1 
(assert (= var3720 null-String)) ; Cond: $r5 == null 
(define-const var2088 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.")] 
(assert true) ; Non Conditional
;(assert (var1016_checkState/1633726539 var2088 (cast-from-String-to-var868 "Reexports should have import names."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.") 

(declare-const var2088!1 Bool)
(declare-const var3979 String)
(assert true)
(define-const var2383 String (importName/-2000336172 var1659)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>() 
 ; Statement: if $r6 == null goto $z6 = 1 
(assert (= var2383 null-String)) ; Cond: $r6 == null 
(define-const var2833 Bool (ite (= 1 1) true false)) ; Statement: $z6 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.")] 
(assert true) ; Non Conditional
;(assert (var1016_checkState/1633726539 var2833 (cast-from-String-to-var868 "Exports with an import name should be a reexport."))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.") 

(declare-const var2833!1 Bool)
(declare-const var123 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {closureNamespace/1147214340=([com.google.javascript.jscomp.modules.Export], java.lang.String), var1016_checkState/1431124798=([boolean], void), importName/-2000336172=([com.google.javascript.jscomp.modules.Export], java.lang.String), var1016_checkState/1633726539=([boolean, java.lang.Object], void), cast-from-String-to-var868=([java.lang.String], java.lang.Object), localName/-474063648=([com.google.javascript.jscomp.modules.Export], java.lang.String), moduleRequest/-157486253=([com.google.javascript.jscomp.modules.Export], java.lang.String)}
; {var783=com.google.javascript.jscomp.modules.Export$Builder, var3480=r14, var1824=com.google.javascript.jscomp.modules.Export, var1659=r0, var1213=$r1, var425=null_type, var508=$z1, var1016=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3178=$r3, var1550=$r2, var460=$z0, var2342=$z2, var868=java.lang.Object, var696="Star exports should not have exported / local names.", var3385=$r15, var702=$z3, var1789="Local exports should not have module requests.", var1822=$r4, var3847=$z4, var1805="Reexports should not have local names.", var3720=$r5, var2088=$z5, var3979="Reexports should have import names.", var2383=$r6, var2833=$z6, var123="Exports with an import name should be a reexport."}
; {com.google.javascript.jscomp.modules.Export$Builder=var783, r14=var3480, com.google.javascript.jscomp.modules.Export=var1824, r0=var1659, $r1=var1213, null_type=var425, $z1=var508, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1016, $r3=var3178, $r2=var1550, $z0=var460, $z2=var2342, java.lang.Object=var868, "Star exports should not have exported / local names."=var696, $r15=var3385, $z3=var702, "Local exports should not have module requests."=var1789, $r4=var1822, $z4=var3847, "Reexports should not have local names."=var1805, $r5=var3720, $z5=var2088, "Reexports should have import names."=var3979, $r6=var2383, $z6=var2833, "Exports with an import name should be a reexport."=var123}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r14 := @this: com.google.javascript.jscomp.modules.Export$Builder;	r0 := @parameter0: com.google.javascript.jscomp.modules.Export;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String closureNamespace()>();	if $r1 != null goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z1);	$r3 = "*";	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $z2 = 1;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z2, "Star exports should not have exported / local names.");	$r15 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String localName()>();	if $r15 == null goto $z3 = 1;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z3, "Local exports should not have module requests.");	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>();	if $r4 == null goto $z4 = 1;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z4, "Reexports should not have local names.");	$r5 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String moduleRequest()>();	if $r5 == null goto $z5 = 1;	$z5 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z5, "Reexports should have import names.");	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.modules.Export: java.lang.String importName()>();	if $r6 == null goto $z6 = 1;	$z6 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.")];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.Object)>($z6, "Exports with an import name should be a reexport.");	return
;block_num 13