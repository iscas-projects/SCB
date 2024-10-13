(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var762 0)
(declare-sort var2520 0)
(declare-sort var1279 0)
(declare-sort var2125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1324186377 (var762) var1279)
(declare-fun ordinal/-291641772 (var2125) Int)
(declare-fun cast-from-var1279-to-var2125 (var1279) var2125)
(declare-fun getString/-897720134 (var762) String)
(declare-const null-var762 var762)
(declare-const var2520-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var3999 var762) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3999 null-var762)))
(define-const var3678 (Array Int Int) var2520-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var19 var1279 (getToken/1324186377 var3999)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var2472 Int (ordinal/-291641772 (cast-from-var1279-to-var2125 var19))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var407 Int (select var3678 var2472)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 16: goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 72: goto $r3 = <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.QualifiedName GLOBAL_OBJECT>;     default: goto return 0; } 
(assert (and (= var407 16) true)) ; Intersect: Cond: $i1 == 16  and Non Conditional 
(assert true)
(define-const var3622 String (getString/-897720134 var3999)) ; Statement: $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var3139 Bool (= var3622 "Object")) ; Statement: $z2 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("Object") 
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1279-to-var2125=([com.google.javascript.rhino.Token], java.lang.Enum), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var762=com.google.javascript.rhino.Node, var3999=r0, var2520=com.google.javascript.jscomp.NodeUtil$3, var3678=$r1, var1279=com.google.javascript.rhino.Token, var19=$r2, var2125=java.lang.Enum, var2472=$i0, var407=$i1, var3622=$r5, var3139=$z2}
; {com.google.javascript.rhino.Node=var762, r0=var3999, com.google.javascript.jscomp.NodeUtil$3=var2520, $r1=var3678, com.google.javascript.rhino.Token=var1279, $r2=var19, java.lang.Enum=var2125, $i0=var2472, $i1=var407, $r5=var3622, $z2=var3139}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 16: goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 72: goto $r3 = <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.QualifiedName GLOBAL_OBJECT>;     default: goto return 0; };	$r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z2 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("Object");	return $z2
;block_num 2