(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1984 0)
(declare-sort var1873 0)
(declare-sort var2337 0)
(declare-sort var1216 0)
(declare-sort var1581 0)
(declare-sort var2339 0)
(declare-sort var1402 0)
(declare-sort var2704 0)
(declare-sort var1864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliasVar/1569814532 (var1216) var2337)
(declare-fun cast-from-var1984-to-var1216 (var1984) var1216)
(declare-fun getInitialValue/-1551612773 (var2339) var1581)
(declare-fun cast-from-var2337-to-var2339 (var2337) var2339)
(declare-fun getName/-1096558387 (var2339) String)
(declare-fun aliasReference/1569814532 (var1216) var1581)
(declare-fun getString/-897720134 (var1581) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1402_getAliasedNamespace/-1915179944 (var1581) String)
(declare-fun var1864_checkNotNull/1446102589 (var2704) var2704)
(declare-fun cast-from-String-to-var2704 (String) var2704)
(declare-fun cast-from-var2704-to-String (var2704) String)
(declare-fun var1864_checkState/-499612547 (Bool String var2704 var2704) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun setString/330292484 (var1581 String) void)
(declare-const null-var1984 var1984)
(declare-const null-var1873 var1873)
(declare-const var2374 var1984) ; Statement: r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode 
(assert (not (= var2374 null-var1984)))
(declare-const var2485 var1873) ; Statement: r13 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var2485 null-var1873)))
(define-const var3710 var2337 (aliasVar/1569814532 (cast-from-var1984-to-var1216 var2374))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var1435 var1581 (getInitialValue/-1551612773 (cast-from-var2337-to-var2339 var3710))) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>() 
(define-const var2361 var2337 (aliasVar/1569814532 (cast-from-var1984-to-var1216 var2374))) ; Statement: $r3 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var972 String (getName/-1096558387 (cast-from-var2337-to-var2339 var2361))) ; Statement: r4 = virtualinvoke $r3.<com.google.javascript.jscomp.Var: java.lang.String getName()>() 
(define-const var2759 var1581 (aliasReference/1569814532 (cast-from-var1984-to-var1216 var2374))) ; Statement: $r5 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.rhino.Node aliasReference> 
(assert true)
(define-const var3084 String (getString/-897720134 var2759)) ; Statement: r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2355 Bool (startsWith/-1785782452 var3084 "$jscomp$scope$")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$jscomp$scope$") 
 ; Statement: if $z0 == 0 goto $r7 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2) 
(assert (= (ite var2355 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2837 String (var1402_getAliasedNamespace/-1915179944 var1435)) ; Statement: $r7 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2) 
(define-const var3024 var2704 (var1864_checkNotNull/1446102589 (cast-from-String-to-var2704 var2837))) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>($r7) 
(define-const var294 String (cast-from-var2704-to-String var3024)) ; Statement: r9 = (java.lang.String) $r8 
(assert true)
(define-const var2284 Bool (startsWith/-1785782452 var3084 var972)) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>(r4) 
;(assert (var1864_checkState/-499612547 var2284 "%s must start with %s" (cast-from-String-to-var2704 var3084) (cast-from-String-to-var2704 var972))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z1, "%s must start with %s", r6, r4) 

(declare-const var2284!1 Bool)
(declare-const var196 String)
(declare-const var3084!1 String)
(declare-const var972!1 String)
(assert true)
(define-const var1884 Int (length/-134980193 var972!1)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(assert (and true (and (>= var1884 0) (>= (str.len var3084!1) var1884))))
(define-const var123 String (substring/850833817 var3084!1 var1884)) ; Statement: $r10 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int)>($i0) 
(define-const var3645 String (str.++ "\u0001\u0001" var294 var123)) ; Statement: r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r9, $r10) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001") 
(define-const var2926 var1581 (aliasReference/1569814532 (cast-from-var1984-to-var1216 var2374))) ; Statement: $r12 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.rhino.Node aliasReference> 
(assert true)
;(assert (setString/330292484 var2926 var3645)) ; Statement: virtualinvoke $r12.<com.google.javascript.rhino.Node: void setString(java.lang.String)>(r11) 

(declare-const var2926!1 var1581)
(declare-const var3645!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {aliasVar/1569814532=([com.google.javascript.jscomp.ScopedAliases$AliasUsage], com.google.javascript.jscomp.Var), cast-from-var1984-to-var1216=([com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode], com.google.javascript.jscomp.ScopedAliases$AliasUsage), getInitialValue/-1551612773=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.rhino.Node), cast-from-var2337-to-var2339=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), getName/-1096558387=([com.google.javascript.jscomp.AbstractVar], java.lang.String), aliasReference/1569814532=([com.google.javascript.jscomp.ScopedAliases$AliasUsage], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1402_getAliasedNamespace/-1915179944=([com.google.javascript.rhino.Node], java.lang.String), var1864_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2704=([java.lang.String], java.lang.Object), cast-from-var2704-to-String=([java.lang.Object], java.lang.String), var1864_checkState/-499612547=([boolean, java.lang.String, java.lang.Object, java.lang.Object], void), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), setString/330292484=([com.google.javascript.rhino.Node, java.lang.String], void)}
; {var1984=com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode, var2374=r0, var1873=com.google.javascript.jscomp.AbstractCompiler, var2485=r13, var2337=com.google.javascript.jscomp.Var, var1216=com.google.javascript.jscomp.ScopedAliases$AliasUsage, var3710=$r1, var1581=com.google.javascript.rhino.Node, var2339=com.google.javascript.jscomp.AbstractVar, var1435=r2, var2361=$r3, var972=r4, var2759=$r5, var3084=r6, var2355=$z0, var1402=com.google.javascript.jscomp.ScopedAliases, var2837=$r7, var2704=java.lang.Object, var1864=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3024=$r8, var294=r9, var2284=$z1, var196="%s must start with %s", var1884=$i0, var123=$r10, var3645=r11, var2926=$r12}
; {com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode=var1984, r0=var2374, com.google.javascript.jscomp.AbstractCompiler=var1873, r13=var2485, com.google.javascript.jscomp.Var=var2337, com.google.javascript.jscomp.ScopedAliases$AliasUsage=var1216, $r1=var3710, com.google.javascript.rhino.Node=var1581, com.google.javascript.jscomp.AbstractVar=var2339, r2=var1435, $r3=var2361, r4=var972, $r5=var2759, r6=var3084, $z0=var2355, com.google.javascript.jscomp.ScopedAliases=var1402, $r7=var2837, java.lang.Object=var2704, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1864, $r8=var3024, r9=var294, $z1=var2284, "%s must start with %s"=var196, $i0=var1884, $r10=var123, r11=var3645, $r12=var2926}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode;	r13 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	$r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>();	$r3 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar>;	r4 = virtualinvoke $r3.<com.google.javascript.jscomp.Var: java.lang.String getName()>();	$r5 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.rhino.Node aliasReference>;	r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$jscomp$scope$");	if $z0 == 0 goto $r7 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2);	$r7 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2);	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>($r7);	r9 = (java.lang.String) $r8;	$z1 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>(r4);	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean,java.lang.String,java.lang.Object,java.lang.Object)>($z1, "%s must start with %s", r6, r4);	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$r10 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int)>($i0);	r11 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r9, $r10) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\u0001");	$r12 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.rhino.Node aliasReference>;	virtualinvoke $r12.<com.google.javascript.rhino.Node: void setString(java.lang.String)>(r11);	return
;block_num 2