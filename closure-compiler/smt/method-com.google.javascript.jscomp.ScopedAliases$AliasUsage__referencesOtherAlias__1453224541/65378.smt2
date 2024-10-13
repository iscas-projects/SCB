(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort var2200 0)
(declare-sort var2245 0)
(declare-sort var1066 0)
(declare-sort var420 0)
(declare-sort var3848 0)
(declare-sort var1419 0)
(declare-sort var2330 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun aliasVar/1569814532 (var3373) var2245)
(declare-fun getInitialValue/-1551612773 (var420) var1066)
(declare-fun cast-from-var2245-to-var420 (var2245) var420)
(declare-fun var3848_getAliasedNamespace/-1915179944 (var1066) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun getScope/-2100111362 (var420) var1419)
(declare-fun cast-from-var1419-to-var2330 (var1419) var2330)
(declare-fun getOwnSlot/1483543251 (var1419 String) var420)
(declare-fun cast-from-var2330-to-var1419 (var2330) var1419)
(declare-fun cast-from-var420-to-var2245 (var420) var2245)
(declare-const null-var3373 var3373)
(declare-const null-var2200 var2200)
(declare-const null-var2245 var2245)
(declare-const var1954 var3373) ; Statement: r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasUsage 
(assert (not (= var1954 null-var3373)))
(declare-const var3893 var2200) ; Statement: r8 := @parameter0: java.util.Set 
(assert (not (= var3893 null-var2200)))
(define-const var2328 var2245 (aliasVar/1569814532 var1954)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var766 var1066 (getInitialValue/-1551612773 (cast-from-var2245-to-var420 var2328))) ; Statement: r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>() 
(define-const var1647 String (var3848_getAliasedNamespace/-1915179944 var766)) ; Statement: r3 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2) 
(assert true)
(define-const var1135 Int (indexOf/-1037706067 var1647 46)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(46) 
(define-const var241 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r10 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var1135 var241))) ; Cond: i0 != $i2 
(assert (and true (and (>= 0 0) (>= (str.len var1647) var1135) (>= var1135 0))))
(define-const var367 String (substring/-1240304868 var1647 0 var1135)) ; Statement: $r10 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
(define-const var2550 var2245 (aliasVar/1569814532 var1954)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar> 
(assert true)
(define-const var821 var1419 (getScope/-2100111362 (cast-from-var2245-to-var420 var2550))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: com.google.javascript.jscomp.AbstractScope getScope()>() 
(define-const var2659 var2330 (cast-from-var1419-to-var2330 var821)) ; Statement: $r6 = (com.google.javascript.jscomp.Scope) $r5 
(assert true)
(define-const var2652 var420 (getOwnSlot/1483543251 (cast-from-var2330-to-var1419 var2659) var367)) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>($r10) 
(define-const var1509 var2245 (cast-from-var420-to-var2245 var2652)) ; Statement: $r9 = (com.google.javascript.jscomp.Var) $r7 
 ; Statement: if $r9 == null goto $z1 = 0 
(assert (= var1509 null-var2245)) ; Cond: $r9 == null 
(define-const var914 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {aliasVar/1569814532=([com.google.javascript.jscomp.ScopedAliases$AliasUsage], com.google.javascript.jscomp.Var), getInitialValue/-1551612773=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.rhino.Node), cast-from-var2245-to-var420=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar), var3848_getAliasedNamespace/-1915179944=([com.google.javascript.rhino.Node], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), getScope/-2100111362=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.AbstractScope), cast-from-var1419-to-var2330=([com.google.javascript.jscomp.AbstractScope], com.google.javascript.jscomp.Scope), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var2330-to-var1419=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), cast-from-var420-to-var2245=([com.google.javascript.jscomp.AbstractVar], com.google.javascript.jscomp.Var)}
; {var3373=com.google.javascript.jscomp.ScopedAliases$AliasUsage, var1954=r0, var2200=java.util.Set, var3893=r8, var2245=com.google.javascript.jscomp.Var, var2328=$r1, var1066=com.google.javascript.rhino.Node, var420=com.google.javascript.jscomp.AbstractVar, var766=r2, var3848=com.google.javascript.jscomp.ScopedAliases, var1647=r3, var1135=i0, var241=$i2, var367=$r10, var2550=$r4, var1419=com.google.javascript.jscomp.AbstractScope, var821=$r5, var2330=com.google.javascript.jscomp.Scope, var2659=$r6, var2652=$r7, var1509=$r9, var914=$z1}
; {com.google.javascript.jscomp.ScopedAliases$AliasUsage=var3373, r0=var1954, java.util.Set=var2200, r8=var3893, com.google.javascript.jscomp.Var=var2245, $r1=var2328, com.google.javascript.rhino.Node=var1066, com.google.javascript.jscomp.AbstractVar=var420, r2=var766, com.google.javascript.jscomp.ScopedAliases=var3848, r3=var1647, i0=var1135, $i2=var241, $r10=var367, $r4=var2550, com.google.javascript.jscomp.AbstractScope=var1419, $r5=var821, com.google.javascript.jscomp.Scope=var2330, $r6=var2659, $r7=var2652, $r9=var1509, $z1=var914}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ScopedAliases$AliasUsage;	r8 := @parameter0: java.util.Set;	$r1 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar>;	r2 = virtualinvoke $r1.<com.google.javascript.jscomp.Var: com.google.javascript.rhino.Node getInitialValue()>();	r3 = staticinvoke <com.google.javascript.jscomp.ScopedAliases: java.lang.String getAliasedNamespace(com.google.javascript.rhino.Node)>(r2);	i0 = virtualinvoke r3.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r10 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r10 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r4 = r0.<com.google.javascript.jscomp.ScopedAliases$AliasUsage: com.google.javascript.jscomp.Var aliasVar>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.Var: com.google.javascript.jscomp.AbstractScope getScope()>();	$r6 = (com.google.javascript.jscomp.Scope) $r5;	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>($r10);	$r9 = (com.google.javascript.jscomp.Var) $r7;	if $r9 == null goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 5