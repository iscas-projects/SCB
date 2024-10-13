(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1781 0)
(declare-sort var3151 0)
(declare-sort var1673 0)
(declare-sort var2337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1324186377 (var1781) var1673)
(declare-fun ordinal/-291641772 (var2337) Int)
(declare-fun cast-from-var1673-to-var2337 (var1673) var2337)
(declare-const null-var1781 var1781)
(declare-const var3151-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var2885 var1781) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2885 null-var1781)))
(define-const var3103 (Array Int Int) var3151-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var2773 var1673 (getToken/1324186377 var2885)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var2323 Int (ordinal/-291641772 (cast-from-var1673-to-var2337 var2773))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var822 Int (select var3103 var2323)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 3: goto return 1;     case 16: goto $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto return 0; } 
(assert (and (not (= var822 16)) (and (not (= var822 3)) true))) ; Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 3   and Non Conditional  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1673-to-var2337=([com.google.javascript.rhino.Token], java.lang.Enum)}
; {var1781=com.google.javascript.rhino.Node, var2885=r0, var3151=com.google.javascript.jscomp.NodeUtil$3, var3103=$r1, var1673=com.google.javascript.rhino.Token, var2773=$r2, var2337=java.lang.Enum, var2323=$i0, var822=$i1}
; {com.google.javascript.rhino.Node=var1781, r0=var2885, com.google.javascript.jscomp.NodeUtil$3=var3151, $r1=var3103, com.google.javascript.rhino.Token=var1673, $r2=var2773, java.lang.Enum=var2337, $i0=var2323, $i1=var822}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 3: goto return 1;     case 16: goto $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto return 0; };	return 0
;block_num 2