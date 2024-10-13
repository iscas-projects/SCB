(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2435 0)
(declare-sort var1373 0)
(declare-sort var346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStringKey/273658248 (var2435) Bool)
(declare-fun var1373_checkArgument/1735511034 (Bool) void)
(declare-fun getParent/-1802087535 (var2435) var2435)
(declare-fun isObjectLit/-1056552194 (var2435) Bool)
(declare-fun getString/-897720134 (var2435) String)
(declare-fun var346-init () var346)
(declare-fun <init>/-1962235990 (var346 String var2435) void)
(declare-const null-var2435 var2435)
(declare-const var2009 var2435) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2009 null-var2435)))
(assert true)
(define-const var796 Bool (isStringKey/273658248 var2009)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringKey()>() 
;(assert (var1373_checkArgument/1735511034 var796)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var796!1 Bool)
(assert true)
(define-const var2025 var2435 (getParent/-1802087535 var2009)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>() 
(assert true)
(define-const var141 Bool (isObjectLit/-1056552194 var2025)) ; Statement: $z1 = virtualinvoke $r1.<com.google.javascript.rhino.Node: boolean isObjectLit()>() 
;(assert (var1373_checkArgument/1735511034 var141)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var141!1 Bool)
(assert true)
(define-const var1444 String (getString/-897720134 var2009)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var749 String (str.++ "this.\u0001" var1444)) ; Statement: r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("this.\u0001") 
(assert true)
(define-const var2600 String (getString/-897720134 var2009)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1391 Bool (= var2600 "properties")) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("properties") 
 ; Statement: if $z2 == 0 goto $r8 = new com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration 
(assert (= (ite var1391 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3193 var346 var346-init) ; Statement: $r8 = new com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration 
(assert true)
;(assert (<init>/-1962235990 var3193 var749 var2009)) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration: void <init>(java.lang.String,com.google.javascript.rhino.Node)>(r3, r0) 

(declare-const var3193!1 var346)
(declare-const var749!1 String)
(declare-const var2009!1 var2435)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isStringKey/273658248=([com.google.javascript.rhino.Node], boolean), var1373_checkArgument/1735511034=([boolean], void), getParent/-1802087535=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isObjectLit/-1056552194=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), var346-init=([], com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration), <init>/-1962235990=([com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration, java.lang.String, com.google.javascript.rhino.Node], void)}
; {var2435=com.google.javascript.rhino.Node, var2009=r0, var796=$z0, var1373=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2025=$r1, var141=$z1, var1444=$r2, var749=r3, var2600=$r4, var1391=$z2, var346=com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration, var3193=$r8}
; {com.google.javascript.rhino.Node=var2435, r0=var2009, $z0=var796, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1373, $r1=var2025, $z1=var141, $r2=var1444, r3=var749, $r4=var2600, $z2=var1391, com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration=var346, $r8=var3193}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringKey()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getParent()>();	$z1 = virtualinvoke $r1.<com.google.javascript.rhino.Node: boolean isObjectLit()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	r3 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r2) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("this.\u0001");	$r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z2 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("properties");	if $z2 == 0 goto $r8 = new com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration;	$r8 = new com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration;	specialinvoke $r8.<com.google.javascript.jscomp.ijs.PotentialDeclaration$StringKeyDeclaration: void <init>(java.lang.String,com.google.javascript.rhino.Node)>(r3, r0);	return $r8
;block_num 2