(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2492 0)
(declare-sort var490 0)
(declare-sort var3535 0)
(declare-sort var342 0)
(declare-sort var234 0)
(declare-sort var35 0)
(declare-sort var1336 0)
(declare-sort var2752 0)
(declare-sort var3671 0)
(declare-sort var2982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getInitialValue/-1551612773 (var342) var3535)
(declare-fun cast-from-var490-to-var342 (var490) var342)
(declare-fun aliasDefinitionsToDelete/1659417483 (var2492) var234)
(declare-fun getNameNode/992461691 (var342) var3535)
(declare-fun var234_add/328494887 (var234 var35) Bool)
(declare-fun cast-from-var3535-to-var35 (var3535) var35)
(declare-fun this$0/1659417483 (var2492) var1336)
(declare-fun invalidModuleGetHandling/893588433 (var1336) var2752)
(declare-fun shouldDelete/-1533923470 (var2752) Bool)
(declare-fun getName/-1096558387 (var342) String)
(declare-fun aliases/1659417483 (var2492) var3671)
(declare-fun var3671_put/1464166817 (var3671 var35 var35) var35)
(declare-fun cast-from-String-to-var35 (String) var35)
(declare-fun cast-from-var490-to-var35 (var490) var35)
(declare-fun var1336_getAliasedNamespace/-1915179944 (var3535) String)
(declare-fun transformation/1659417483 (var2492) var2982)
(declare-fun var2982_addAlias/1562478235 (var2982 String String) void)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2492 var2492)
(declare-const null-var490 var490)
(declare-const var3957 var2492) ; Statement: r2 := @this: com.google.javascript.jscomp.ScopedAliases$Traversal 
(assert (not (= var3957 null-var2492)))
(declare-const var2259 var490) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.Var 
(assert (not (= var2259 null-var490)))
(assert true)
(define-const var3889 var3535 (getInitialValue/-1551612773 (cast-from-var490-to-var342 var2259))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>() 
(define-const var2952 var234 (aliasDefinitionsToDelete/1659417483 var3957)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: java.util.List aliasDefinitionsToDelete> 
(assert true)
(define-const var3243 var3535 (getNameNode/992461691 (cast-from-var490-to-var342 var2259))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getNameNode()>() 
;(assert (var234_add/328494887 var2952 (cast-from-var3535-to-var35 var3243))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r4) 

(declare-const var2952!1 var234)
(declare-const var3243!1 var3535)
(define-const var2740 var1336 (this$0/1659417483 var3957)) ; Statement: $r5 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: com.google.javascript.jscomp.ScopedAliases this$0> 
(define-const var1311 var2752 (invalidModuleGetHandling/893588433 var2740)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.ScopedAliases: com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling invalidModuleGetHandling> 
(assert true)
(define-const var2194 Bool (shouldDelete/-1533923470 var1311)) ; Statement: $z0 = virtualinvoke $r6.<com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling: boolean shouldDelete()>() 
 ; Statement: if $z0 == 0 goto $r12 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>() 
(assert (= (ite var2194 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1986 String (getName/-1096558387 (cast-from-var490-to-var342 var2259))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>() 
(define-const var1611 var3671 (aliases/1659417483 var3957)) ; Statement: $r7 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: java.util.Map aliases> 
;(assert (var3671_put/1464166817 var1611 (cast-from-String-to-var35 var1986) (cast-from-var490-to-var35 var2259))) ; Statement: interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r12, r0) 

(declare-const var1611!1 var3671)
(declare-const var1986!1 String)
(declare-const var2259!1 var490)
(define-const var2253 String (var1336_getAliasedNamespace/-1915179944 var3889)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r1) 
(define-const var1817 var2982 (transformation/1659417483 var3957)) ; Statement: $r8 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: com.google.javascript.jscomp.CompilerOptions$AliasTransformation transformation> 
;(assert (var2982_addAlias/1562478235 var1817 var1986!1 var2253)) ; Statement: interfaceinvoke $r8.<com.google.javascript.jscomp.CompilerOptions$AliasTransformation: void addAlias(java.lang.String,java.lang.String)>($r12, $r13) 

(declare-const var1817!1 var2982)
(declare-const var1986!2 String)
(declare-const var2253!1 String)
(assert true)
(define-const var2520 Int (indexOf/-1037706067 var2253!1 46)) ; Statement: $i0 = virtualinvoke $r13.<java.lang.String: int indexOf(int)>(46) 
(define-const var1330 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto return 
(assert (= var2520 var1330)) ; Cond: $i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getInitialValue/-1551612773=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.rhino.Node), cast-from-var490-to-var342=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), aliasDefinitionsToDelete/1659417483=([com.google.javascript.jscomp.ScopedAliases$Traversal], java.util.List), getNameNode/992461691=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.rhino.Node), var234_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3535-to-var35=([com.google.javascript.rhino.Node], java.lang.Object), this$0/1659417483=([com.google.javascript.jscomp.ScopedAliases$Traversal], com.google.javascript.jscomp.ScopedAliases), invalidModuleGetHandling/893588433=([com.google.javascript.jscomp.ScopedAliases], com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling), shouldDelete/-1533923470=([com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling], boolean), getName/-1096558387=([com.google.javascript.jscomp.AbstractVar], java.lang.String), aliases/1659417483=([com.google.javascript.jscomp.ScopedAliases$Traversal], java.util.Map), var3671_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var35=([java.lang.String], java.lang.Object), cast-from-var490-to-var35=([com.google.javascript.jscomp.Var], java.lang.Object), var1336_getAliasedNamespace/-1915179944=([com.google.javascript.rhino.Node], java.lang.String), transformation/1659417483=([com.google.javascript.jscomp.ScopedAliases$Traversal], com.google.javascript.jscomp.CompilerOptions$AliasTransformation), var2982_addAlias/1562478235=([com.google.javascript.jscomp.CompilerOptions$AliasTransformation, java.lang.String, java.lang.String], void), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2492=com.google.javascript.jscomp.ScopedAliases$Traversal, var3957=r2, var490=com.google.javascript.jscomp.Var, var2259=r0, var3535=com.google.javascript.rhino.Node, var342=com.google.javascript.jscomp.AbstractVar, var3889=r1, var234=java.util.List, var2952=$r3, var3243=$r4, var35=java.lang.Object, var1336=com.google.javascript.jscomp.ScopedAliases, var2740=$r5, var2752=com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling, var1311=$r6, var2194=$z0, var1986=$r12, var3671=java.util.Map, var1611=$r7, var2253=$r13, var2982=com.google.javascript.jscomp.CompilerOptions$AliasTransformation, var1817=$r8, var2520=$i0, var1330=$i2}
; {com.google.javascript.jscomp.ScopedAliases$Traversal=var2492, r2=var3957, com.google.javascript.jscomp.Var=var490, r0=var2259, com.google.javascript.rhino.Node=var3535, com.google.javascript.jscomp.AbstractVar=var342, r1=var3889, java.util.List=var234, $r3=var2952, $r4=var3243, java.lang.Object=var35, com.google.javascript.jscomp.ScopedAliases=var1336, $r5=var2740, com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling=var2752, $r6=var1311, $z0=var2194, $r12=var1986, java.util.Map=var3671, $r7=var1611, $r13=var2253, com.google.javascript.jscomp.CompilerOptions$AliasTransformation=var2982, $r8=var1817, $i0=var2520, $i2=var1330}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.ScopedAliases$Traversal;	r0 := @parameter0: com.google.javascript.jscomp.Var;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>();	$r3 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: java.util.List aliasDefinitionsToDelete>;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getNameNode()>();	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>($r4);	$r5 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: com.google.javascript.jscomp.ScopedAliases this$0>;	$r6 = $r5.<com.google.javascript.jscomp.ScopedAliases: com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling invalidModuleGetHandling>;	$z0 = virtualinvoke $r6.<com.google.javascript.jscomp.ScopedAliases$InvalidModuleGetHandling: boolean shouldDelete()>();	if $z0 == 0 goto $r12 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>();	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.Var: java.lang.String getName()>();	$r7 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: java.util.Map aliases>;	interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r12, r0);	$r13 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r1);	$r8 = r2.<com.google.javascript.jscomp.ScopedAliases$Traversal: com.google.javascript.jscomp.CompilerOptions$AliasTransformation transformation>;	interfaceinvoke $r8.<com.google.javascript.jscomp.CompilerOptions$AliasTransformation: void addAlias(java.lang.String,java.lang.String)>($r12, $r13);	$i0 = virtualinvoke $r13.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 == $i2 goto return;	return
;block_num 3