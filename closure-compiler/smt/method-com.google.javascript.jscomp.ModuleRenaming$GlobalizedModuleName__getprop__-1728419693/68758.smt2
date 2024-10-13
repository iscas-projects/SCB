(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var283 0)
(declare-sort var2960 0)
(declare-sort var756 0)
(declare-sort var2845 0)
(declare-sort var2697 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var756_checkArgument/1735511034 (Bool) void)
(declare-fun aliasName/389220794 (var283) var2845)
(declare-fun getprop/678717747 (var2845 String) var2845)
(declare-fun rootNameType/-476947547 (var283) var2697)
(declare-fun var283_create/1442107254 (var2845 var2697) var283)
(declare-const null-var283 var283)
(declare-const null-String String)
(declare-const var2291 var283) ; Statement: r1 := @this: com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName 
(assert (not (= var2291 null-var283)))
(declare-const var300 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var300 null-String)))
(assert true)
(define-const var966 Bool (isEmpty/-1285796103 var300)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var966 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3528 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var756_checkArgument/1735511034 var3528)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2) 

(declare-const var3528!1 Bool)
(assert true)
(define-const var896 var2845 (aliasName/389220794 var2291)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName: com.google.javascript.rhino.QualifiedName aliasName()>() 
(assert true)
(define-const var2944 var2845 (getprop/678717747 var896 var300)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.rhino.QualifiedName: com.google.javascript.rhino.QualifiedName getprop(java.lang.String)>(r0) 
(assert true)
(define-const var3188 var2697 (rootNameType/-476947547 var2291)) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName: com.google.javascript.rhino.jstype.JSType rootNameType()>() 
(define-const var2899 var283 (var283_create/1442107254 var2944 var3188)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName: com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName create(com.google.javascript.rhino.QualifiedName,com.google.javascript.rhino.jstype.JSType)>($r3, $r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var756_checkArgument/1735511034=([boolean], void), aliasName/389220794=([com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName], com.google.javascript.rhino.QualifiedName), getprop/678717747=([com.google.javascript.rhino.QualifiedName, java.lang.String], com.google.javascript.rhino.QualifiedName), rootNameType/-476947547=([com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName], com.google.javascript.rhino.jstype.JSType), var283_create/1442107254=([com.google.javascript.rhino.QualifiedName, com.google.javascript.rhino.jstype.JSType], com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName)}
; {var283=com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName, var2291=r1, var300=r0, var2960=null_type, var966=$z0, var3528=$z2, var756=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2845=com.google.javascript.rhino.QualifiedName, var896=$r2, var2944=$r3, var2697=com.google.javascript.rhino.jstype.JSType, var3188=$r4, var2899=$r5}
; {com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName=var283, r1=var2291, r0=var300, null_type=var2960, $z0=var966, $z2=var3528, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var756, com.google.javascript.rhino.QualifiedName=var2845, $r2=var896, $r3=var2944, com.google.javascript.rhino.jstype.JSType=var2697, $r4=var3188, $r5=var2899}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z2);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName: com.google.javascript.rhino.QualifiedName aliasName()>();	$r3 = virtualinvoke $r2.<com.google.javascript.rhino.QualifiedName: com.google.javascript.rhino.QualifiedName getprop(java.lang.String)>(r0);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName: com.google.javascript.rhino.jstype.JSType rootNameType()>();	$r5 = staticinvoke <com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName: com.google.javascript.jscomp.ModuleRenaming$GlobalizedModuleName create(com.google.javascript.rhino.QualifiedName,com.google.javascript.rhino.jstype.JSType)>($r3, $r4);	return $r5
;block_num 3