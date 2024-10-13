(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3341 0)
(declare-sort var3994 0)
(declare-sort var647 0)
(declare-sort var385 0)
(declare-sort var2125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var647) String)
(declare-fun toggleModuleNames/-1406849449 (var3341) var385)
(declare-fun var385_contains/1636690605 (var385 var2125) Bool)
(declare-fun cast-from-String-to-var2125 (String) var2125)
(declare-const null-var3341 var3341)
(declare-const null-var3994 var3994)
(declare-const null-var647 var647)
(declare-const var210 var3341) ; Statement: r2 := @this: com.google.javascript.jscomp.GatherModuleMetadata$Finder 
(assert (not (= var210 null-var3341)))
(declare-const var3520 var3994) ; Statement: r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var3520 null-var3994)))
(declare-const var2317 var647) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2317 null-var647)))
(assert true)
(define-const var3862 String (getString/-897720134 var2317)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var2877 var385 (toggleModuleNames/-1406849449 var210)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.GatherModuleMetadata$Finder: java.util.Set toggleModuleNames> 
(define-const var1462 Bool (var385_contains/1636690605 var2877 (cast-from-String-to-var2125 var3862))) ; Statement: $z0 = interfaceinvoke $r3.<java.util.Set: boolean contains(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r18 = "goog" 
(assert (= (ite var1462 1 0) 0)) ; Cond: $z0 == 0 
(define-const var813 String "goog") ; Statement: $r18 = "goog" 
(assert true)
(define-const var2880 Bool (= var813 var3862)) ; Statement: $z5 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z5 != 0 goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(assert (not (not (= (ite var2880 1 0) 0)))) ; Negate: Cond: $z5 != 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), toggleModuleNames/-1406849449=([com.google.javascript.jscomp.GatherModuleMetadata$Finder], java.util.Set), var385_contains/1636690605=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var2125=([java.lang.String], java.lang.Object)}
; {var3341=com.google.javascript.jscomp.GatherModuleMetadata$Finder, var210=r2, var3994=com.google.javascript.jscomp.NodeTraversal, var3520=r4, var647=com.google.javascript.rhino.Node, var2317=r0, var3862=r1, var385=java.util.Set, var2877=$r3, var2125=java.lang.Object, var1462=$z0, var813=$r18, var2880=$z5}
; {com.google.javascript.jscomp.GatherModuleMetadata$Finder=var3341, r2=var210, com.google.javascript.jscomp.NodeTraversal=var3994, r4=var3520, com.google.javascript.rhino.Node=var647, r0=var2317, r1=var3862, java.util.Set=var385, $r3=var2877, java.lang.Object=var2125, $z0=var1462, $r18=var813, $z5=var2880}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.GatherModuleMetadata$Finder;	r4 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r3 = r2.<com.google.javascript.jscomp.GatherModuleMetadata$Finder: java.util.Set toggleModuleNames>;	$z0 = interfaceinvoke $r3.<java.util.Set: boolean contains(java.lang.Object)>(r1);	if $z0 == 0 goto $r18 = "goog";	$r18 = "goog";	$z5 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z5 != 0 goto $r5 = virtualinvoke r4.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	return
;block_num 3