(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3083 0)
(declare-sort var604 0)
(declare-sort var3940 0)
(declare-sort var1726 0)
(declare-sort var3237 0)
(declare-sort var682 0)
(declare-sort var1833 0)
(declare-sort var901 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliasVar/1569814532 (var3083) var3940)
(declare-fun getInitialValue/-1551612773 (var3237) var1726)
(declare-fun cast-from-var3940-to-var3237 (var3940) var3237)
(declare-fun var682_getAliasedNamespace/-1915179944 (var1726) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getScope/-2100111362 (var3237) var1833)
(declare-fun cast-from-var1833-to-var901 (var1833) var901)
(declare-fun getOwnSlot/1483543251 (var1833 String) var3237)
(declare-fun cast-from-var901-to-var1833 (var901) var1833)
(declare-fun cast-from-var3237-to-var3940 (var3237) var3940)
(declare-const null-var3083 var3083)
(declare-const null-var604 var604)
(declare-const null-var3940 var3940)
(declare-const var2448 var3083) ; Statement: r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasUsage 
(assert (not (= var2448 null-var3083)))
(declare-const var3207 var604) ; Statement: r8 := @parameter0: java.util.Set 
(assert (not (= var3207 null-var604)))
(define-const var884 var3940 (aliasVar/1569814532 var2448)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var1013 var1726 (getInitialValue/-1551612773 (cast-from-var3940-to-var3237 var884))) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>() 
(define-const var1698 String (var682_getAliasedNamespace/-1915179944 var1013)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2) 
(assert true)
(define-const var760 Int (indexOf/-1037706067 var1698 46)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(46) 
(define-const var2534 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r10 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var760 var2534)))) ; Negate: Cond: i0 != $i2  
(define-const var3110 String var1698) ; Statement: $r10 = r3 
 ; Statement: goto [?= $r4 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar>] 
(assert true) ; Non Conditional
(define-const var1487 var3940 (aliasVar/1569814532 var2448)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var3138 var1833 (getScope/-2100111362 (cast-from-var3940-to-var3237 var1487))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: com.google.javascript.jscomp.AbstractScope getScope()>() 
(define-const var1868 var901 (cast-from-var1833-to-var901 var3138)) ; Statement: $r6 = (com.google.javascript.jscomp.Scope) $r5 
(assert true)
(define-const var2000 var3237 (getOwnSlot/1483543251 (cast-from-var901-to-var1833 var1868) var3110)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>($r10) 
(define-const var1512 var3940 (cast-from-var3237-to-var3940 var2000)) ; Statement: $r9 = (com.google.javascript.jscomp.Var) $r7 
 ; Statement: if $r9 == null goto $z1 = 0 
(assert (= var1512 null-var3940)) ; Cond: $r9 == null 
(define-const var1592 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {aliasVar/1569814532=([com.google.javascript.jscomp.ScopedAliases$AliasUsage], com.google.javascript.jscomp.Var), getInitialValue/-1551612773=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.rhino.Node), cast-from-var3940-to-var3237=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), var682_getAliasedNamespace/-1915179944=([com.google.javascript.rhino.Node], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), getScope/-2100111362=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.AbstractScope), cast-from-var1833-to-var901=([com.google.javascript.jscomp.AbstractScope], com.google.javascript.jscomp.Scope), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var901-to-var1833=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), cast-from-var3237-to-var3940=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var)}
; {var3083=com.google.javascript.jscomp.ScopedAliases$AliasUsage, var2448=r0, var604=java.util.Set, var3207=r8, var3940=com.google.javascript.jscomp.Var, var884=$r1, var1726=com.google.javascript.rhino.Node, var3237=com.google.javascript.jscomp.AbstractVar, var1013=r2, var682=com.google.javascript.jscomp.ScopedAliases, var1698=r3, var760=i0, var2534=$i2, var3110=$r10, var1487=$r4, var1833=com.google.javascript.jscomp.AbstractScope, var3138=$r5, var901=com.google.javascript.jscomp.Scope, var1868=$r6, var2000=$r7, var1512=$r9, var1592=$z1}
; {com.google.javascript.jscomp.ScopedAliases$AliasUsage=var3083, r0=var2448, java.util.Set=var604, r8=var3207, com.google.javascript.jscomp.Var=var3940, $r1=var884, com.google.javascript.rhino.Node=var1726, com.google.javascript.jscomp.AbstractVar=var3237, r2=var1013, com.google.javascript.jscomp.ScopedAliases=var682, r3=var1698, i0=var760, $i2=var2534, $r10=var3110, $r4=var1487, com.google.javascript.jscomp.AbstractScope=var1833, $r5=var3138, com.google.javascript.jscomp.Scope=var901, $r6=var1868, $r7=var2000, $r9=var1512, $z1=var1592}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasUsage;	r8 := @parameter0: java.util.Set;	$r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>();	r3 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2);	i0 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r10 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r10 = r3;	goto [?= $r4 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar>];	$r4 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: com.google.javascript.jscomp.AbstractScope getScope()>();	$r6 = (com.google.javascript.jscomp.Scope) $r5;	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>($r10);	$r9 = (com.google.javascript.jscomp.Var) $r7;	if $r9 == null goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 5