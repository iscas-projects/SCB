(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3973 0)
(declare-sort var2128 0)
(declare-sort var2446 0)
(declare-sort var2762 0)
(declare-sort var2172 0)
(declare-sort var801 0)
(declare-sort var3922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLastChild/1278987161 (var2446) var2446)
(declare-fun getString/-897720134 (var2446) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun importRequests/-1452091976 (var3973) var2762)
(declare-fun resolveModuleAsPath/727076413 (var2128 String) var2128)
(declare-fun toString/1999241737 (var2128) String)
(declare-fun var2172_normalizePath/712906543 (String) String)
(declare-fun getVarNameOfImport/-1522563591 (var3973 var2446) String)
(declare-fun var801_create/-760919937 (String String) var801)
(declare-fun var2762_add/-1142548109 (var2762 var3922) Bool)
(declare-fun cast-from-var801-to-var3922 (var801) var3922)
(declare-fun imports/-1452091976 (var3973) var2762)
(declare-fun cast-from-var2446-to-var3922 (var2446) var3922)
(declare-const null-var3973 var3973)
(declare-const null-var2128 var2128)
(declare-const null-var2446 var2446)
(declare-const var349 var3973) ; Statement: r3 := @this: com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter 
(assert (not (= var349 null-var3973)))
(declare-const var1739 var2128) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath 
(assert (not (= var1739 null-var2128)))
(declare-const var1599 var2446) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1599 null-var2446)))
(assert true)
(define-const var3783 var2446 (getLastChild/1278987161 var1599)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var2477 String (getString/-897720134 var3783)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var57 Bool (contains/1009244746 var2477 (cast-from-String-to-String "://"))) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("://") 
 ; Statement: if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.util.Set importRequests> 
(assert (= (ite var57 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1788 var2762 (importRequests/-1452091976 var349)) ; Statement: $r5 = r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.util.Set importRequests> 
(assert true)
(define-const var1014 var2446 (getLastChild/1278987161 var1599)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var2891 String (getString/-897720134 var1014)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2007 var2128 (resolveModuleAsPath/727076413 var1739 var2891)) ; Statement: $r8 = virtualinvoke r4.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath resolveModuleAsPath(java.lang.String)>($r7) 
(assert true)
(define-const var2850 String (toString/1999241737 var2007)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: java.lang.String toString()>() 
(define-const var776 String (var2172_normalizePath/712906543 var2850)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules: java.lang.String normalizePath(java.lang.String)>($r9) 
(assert true)
(define-const var2443 String (getVarNameOfImport/-1522563591 var349 var1599)) ; Statement: $r10 = virtualinvoke r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.lang.String getVarNameOfImport(com.google.javascript.rhino.Node)>(r0) 
(define-const var1544 var801 (var801_create/-760919937 var776 var2443)) ; Statement: $r12 = staticinvoke <com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest: com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest create(java.lang.String,java.lang.String)>($r11, $r10) 
;(assert (var2762_add/-1142548109 var1788 (cast-from-var801-to-var3922 var1544))) ; Statement: interfaceinvoke $r5.<java.util.Set: boolean add(java.lang.Object)>($r12) 

(declare-const var1788!1 var2762)
(declare-const var1544!1 var801)
(define-const var1707 var2762 (imports/-1452091976 var349)) ; Statement: $r13 = r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.util.Set imports> 
;(assert (var2762_add/-1142548109 var1707 (cast-from-var2446-to-var3922 var1599))) ; Statement: interfaceinvoke $r13.<java.util.Set: boolean add(java.lang.Object)>(r0) 

(declare-const var1707!1 var2762)
(declare-const var1599!1 var2446)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), importRequests/-1452091976=([com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter], java.util.Set), resolveModuleAsPath/727076413=([com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, java.lang.String], com.google.javascript.jscomp.deps.ModuleLoader$ModulePath), toString/1999241737=([com.google.javascript.jscomp.deps.ModuleLoader$ModulePath], java.lang.String), var2172_normalizePath/712906543=([java.lang.String], java.lang.String), getVarNameOfImport/-1522563591=([com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter, com.google.javascript.rhino.Node], java.lang.String), var801_create/-760919937=([java.lang.String, java.lang.String], com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest), var2762_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-var801-to-var3922=([com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest], java.lang.Object), imports/-1452091976=([com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter], java.util.Set), cast-from-var2446-to-var3922=([com.google.javascript.rhino.Node], java.lang.Object)}
; {var3973=com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter, var349=r3, var2128=com.google.javascript.jscomp.deps.ModuleLoader$ModulePath, var1739=r4, var2446=com.google.javascript.rhino.Node, var1599=r0, var3783=$r1, var2477=$r2, var57=$z0, var2762=java.util.Set, var1788=$r5, var1014=$r6, var2891=$r7, var2007=$r8, var2850=$r9, var2172=com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules, var776=$r11, var2443=$r10, var801=com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest, var1544=$r12, var3922=java.lang.Object, var1707=$r13}
; {com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter=var3973, r3=var349, com.google.javascript.jscomp.deps.ModuleLoader$ModulePath=var2128, r4=var1739, com.google.javascript.rhino.Node=var2446, r0=var1599, $r1=var3783, $r2=var2477, $z0=var57, java.util.Set=var2762, $r5=var1788, $r6=var1014, $r7=var2891, $r8=var2007, $r9=var2850, com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules=var2172, $r11=var776, $r10=var2443, com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest=var801, $r12=var1544, java.lang.Object=var3922, $r13=var1707}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: java.lang.String toString()>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter;	r4 := @parameter0: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath;	r0 := @parameter1: com.google.javascript.rhino.Node;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean contains(java.lang.CharSequence)>("://");	if $z0 == 0 goto $r5 = r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.util.Set importRequests>;	$r5 = r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.util.Set importRequests>;	$r6 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r7 = virtualinvoke $r6.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r8 = virtualinvoke r4.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath resolveModuleAsPath(java.lang.String)>($r7);	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.deps.ModuleLoader$ModulePath: java.lang.String toString()>();	$r11 = staticinvoke <com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules: java.lang.String normalizePath(java.lang.String)>($r9);	$r10 = virtualinvoke r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.lang.String getVarNameOfImport(com.google.javascript.rhino.Node)>(r0);	$r12 = staticinvoke <com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest: com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$ModuleRequest create(java.lang.String,java.lang.String)>($r11, $r10);	interfaceinvoke $r5.<java.util.Set: boolean add(java.lang.Object)>($r12);	$r13 = r3.<com.google.javascript.jscomp.Es6RewriteModulesToCommonJsModules$Rewriter: java.util.Set imports>;	interfaceinvoke $r13.<java.util.Set: boolean add(java.lang.Object)>(r0);	return
;block_num 2