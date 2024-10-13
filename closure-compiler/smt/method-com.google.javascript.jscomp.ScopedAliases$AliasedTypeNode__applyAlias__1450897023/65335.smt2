(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var293 0)
(declare-sort var3666 0)
(declare-sort var2945 0)
(declare-sort var3795 0)
(declare-sort var3404 0)
(declare-sort var3604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliasVar/1569814532 (var3795) var2945)
(declare-fun cast-from-var293-to-var3795 (var293) var3795)
(declare-fun getInitialValue/-1551612773 (var3604) var3404)
(declare-fun cast-from-var2945-to-var3604 (var2945) var3604)
(declare-fun getName/-1096558387 (var3604) String)
(declare-fun aliasReference/1569814532 (var3795) var3404)
(declare-fun getString/-897720134 (var3404) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var293 var293)
(declare-const null-var3666 var3666)
(declare-const var947 var293) ; Statement: r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode 
(assert (not (= var947 null-var293)))
(declare-const var2867 var3666) ; Statement: r13 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var2867 null-var3666)))
(define-const var2592 var2945 (aliasVar/1569814532 (cast-from-var293-to-var3795 var947))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var3916 var3404 (getInitialValue/-1551612773 (cast-from-var2945-to-var3604 var2592))) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>() 
(define-const var384 var2945 (aliasVar/1569814532 (cast-from-var293-to-var3795 var947))) ; Statement: $r3 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var3479 String (getName/-1096558387 (cast-from-var2945-to-var3604 var384))) ; Statement: r4 = virtualinvoke $r3.<com.google.javascript.jscomp.Var: java.lang.String getName()>() 
(define-const var1410 var3404 (aliasReference/1569814532 (cast-from-var293-to-var3795 var947))) ; Statement: $r5 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.rhino.Node aliasReference> 
(assert true)
(define-const var2064 String (getString/-897720134 var1410)) ; Statement: r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3668 Bool (startsWith/-1785782452 var2064 "$jscomp$scope$")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$jscomp$scope$") 
 ; Statement: if $z0 == 0 goto $r7 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2) 
(assert (not (= (ite var3668 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {aliasVar/1569814532=([com.google.javascript.jscomp.ScopedAliases$AliasUsage], com.google.javascript.jscomp.Var), cast-from-var293-to-var3795=([com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode], com.google.javascript.jscomp.ScopedAliases$AliasUsage), getInitialValue/-1551612773=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.rhino.Node), cast-from-var2945-to-var3604=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), getName/-1096558387=([com.google.javascript.jscomp.AbstractVar], java.lang.String), aliasReference/1569814532=([com.google.javascript.jscomp.ScopedAliases$AliasUsage], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var293=com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode, var947=r0, var3666=com.google.javascript.jscomp.AbstractCompiler, var2867=r13, var2945=com.google.javascript.jscomp.Var, var3795=com.google.javascript.jscomp.ScopedAliases$AliasUsage, var2592=$r1, var3404=com.google.javascript.rhino.Node, var3604=com.google.javascript.jscomp.AbstractVar, var3916=r2, var384=$r3, var3479=r4, var1410=$r5, var2064=r6, var3668=$z0}
; {com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode=var293, r0=var947, com.google.javascript.jscomp.AbstractCompiler=var3666, r13=var2867, com.google.javascript.jscomp.Var=var2945, com.google.javascript.jscomp.ScopedAliases$AliasUsage=var3795, $r1=var2592, com.google.javascript.rhino.Node=var3404, com.google.javascript.jscomp.AbstractVar=var3604, r2=var3916, $r3=var384, r4=var3479, $r5=var1410, r6=var2064, $z0=var3668}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode;	r13 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	$r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>();	$r3 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.jscomp.Var aliasVar>;	r4 = virtualinvoke $r3.<com.google.javascript.jscomp.Var: java.lang.String getName()>();	$r5 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasedTypeNode: com.google.javascript.rhino.Node aliasReference>;	r6 = virtualinvoke $r5.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke r6.<java.lang.String: boolean startsWith(java.lang.String)>("$jscomp$scope$");	if $z0 == 0 goto $r7 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2);	return
;block_num 2