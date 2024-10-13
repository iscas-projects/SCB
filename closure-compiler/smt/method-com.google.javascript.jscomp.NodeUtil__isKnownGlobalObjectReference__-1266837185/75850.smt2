(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2908 0)
(declare-sort var1653 0)
(declare-sort var153 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1324186377 (var2908) var153)
(declare-fun ordinal/-291641772 (var2952) Int)
(declare-fun cast-from-var153-to-var2952 (var153) var2952)
(declare-const null-var2908 var2908)
(declare-const var1653-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var419 var2908) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var419 null-var2908)))
(define-const var741 (Array Int Int) var1653-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var1135 var153 (getToken/1324186377 var419)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var620 Int (ordinal/-291641772 (cast-from-var153-to-var2952 var1135))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var2209 Int (select var741 var620)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: lookupswitch($i1) {     case 16: goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 72: goto $r3 = <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.QualifiedName GLOBAL_OBJECT>;     default: goto return 0; } 
(assert (and (not (= var2209 72)) (and (not (= var2209 16)) true))) ; Intersect: Negate: Cond: $i1 == 72   and Intersect: Negate: Cond: $i1 == 16   and Non Conditional  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var153-to-var2952=([com.google.javascript.rhino.Token], java.lang.Enum)}
; {var2908=com.google.javascript.rhino.Node, var419=r0, var1653=com.google.javascript.jscomp.NodeUtil$3, var741=$r1, var153=com.google.javascript.rhino.Token, var1135=$r2, var2952=java.lang.Enum, var620=$i0, var2209=$i1}
; {com.google.javascript.rhino.Node=var2908, r0=var419, com.google.javascript.jscomp.NodeUtil$3=var1653, $r1=var741, com.google.javascript.rhino.Token=var153, $r2=var1135, java.lang.Enum=var2952, $i0=var620, $i1=var2209}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$r1 = <com.google.javascript.jscomp.NodeUtil$3: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r1[$i0];	lookupswitch($i1) {     case 16: goto $r5 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 72: goto $r3 = <com.google.javascript.jscomp.NodeUtil: com.google.javascript.rhino.QualifiedName GLOBAL_OBJECT>;     default: goto return 0; };	return 0
;block_num 2