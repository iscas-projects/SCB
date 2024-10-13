(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1770 0)
(declare-sort var2605 0)
(declare-sort var3728 0)
(declare-sort var2979 0)
(declare-sort var2175 0)
(declare-sort var3434 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1324186377 (var3728) var2175)
(declare-fun ordinal/-291641772 (var3434) Int)
(declare-fun cast-from-var2175-to-var3434 (var2175) var3434)
(declare-fun getFirstChild/2090828207 (var3728) var3728)
(declare-fun getNext/-860917720 (var3728) var3728)
(declare-fun buildReplacement/1336252236 (var1770 var2605 var3728 var3728 String) var3728)
(declare-const null-var1770 var1770)
(declare-const null-var2605 var2605)
(declare-const null-var3728 var3728)
(declare-const null-String String)
(declare-const var2979-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var894 var1770) ; Statement: r8 := @this: com.google.javascript.jscomp.ReplaceStrings 
(assert (not (= var894 null-var1770)))
(declare-const var5 var2605) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var5 null-var2605)))
(declare-const var2398 var3728) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2398 null-var3728)))
(declare-const var2211 var3728) ; Statement: r23 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2211 null-var3728)))
(declare-const var3357 String) ; Statement: r7 := @parameter3: java.lang.StringBuilder 
(assert (not (= var3357 null-String)))
(define-const var3332 (Array Int Int) var2979-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r1 = <com.google.javascript.jscomp.ReplaceStrings$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var1144 var2175 (getToken/1324186377 var2398)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var209 Int (ordinal/-291641772 (cast-from-var2175-to-var3434 var1144))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var1233 Int (select var3332 var209)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 4: goto $r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 5: goto r25 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 6: goto r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 7: goto $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();     default: goto $r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>; } 
(assert (and (= var1233 6) (and (not (= var1233 5)) (and (not (= var1233 4)) true)))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Non Conditional   
(assert true)
(define-const var1489 var3728 (getFirstChild/2090828207 var2398)) ; Statement: r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var3512 var3728 (getNext/-860917720 var1489)) ; Statement: r14 = virtualinvoke r13.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>() 
(assert true)
(define-const var1351 var3728 (buildReplacement/1336252236 var894 var5 var1489 var2211 var3357)) ; Statement: r24 = virtualinvoke r8.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.rhino.Node buildReplacement(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,java.lang.StringBuilder)>(r3, r13, r23, r7) 
(assert true)
(define-const var3616 var3728 (buildReplacement/1336252236 var894 var5 var3512 var1351 var3357)) ; Statement: $r15 = virtualinvoke r8.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.rhino.Node buildReplacement(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,java.lang.StringBuilder)>(r3, r14, r24, r7) 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2175-to-var3434=([com.google.javascript.rhino.Token], java.lang.Enum), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getNext/-860917720=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), buildReplacement/1336252236=([com.google.javascript.jscomp.ReplaceStrings, com.google.javascript.jscomp.NodeTraversal, com.google.javascript.rhino.Node, com.google.javascript.rhino.Node, java.lang.StringBuilder], com.google.javascript.rhino.Node)}
; {var1770=com.google.javascript.jscomp.ReplaceStrings, var894=r8, var2605=com.google.javascript.jscomp.NodeTraversal, var5=r3, var3728=com.google.javascript.rhino.Node, var2398=r0, var2211=r23, var3357=r7, var2979=com.google.javascript.jscomp.ReplaceStrings$1, var3332=$r1, var2175=com.google.javascript.rhino.Token, var1144=$r2, var3434=java.lang.Enum, var209=$i0, var1233=$i1, var1489=r13, var3512=r14, var1351=r24, var3616=$r15}
; {com.google.javascript.jscomp.ReplaceStrings=var1770, r8=var894, com.google.javascript.jscomp.NodeTraversal=var2605, r3=var5, com.google.javascript.rhino.Node=var3728, r0=var2398, r23=var2211, r7=var3357, com.google.javascript.jscomp.ReplaceStrings$1=var2979, $r1=var3332, com.google.javascript.rhino.Token=var2175, $r2=var1144, java.lang.Enum=var3434, $i0=var209, $i1=var1233, r13=var1489, r14=var3512, r24=var1351, $r15=var3616}
;seq 
;cnt {}
;stmts r8 := @this: com.google.javascript.jscomp.ReplaceStrings;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r23 := @parameter2: com.google.javascript.rhino.Node;	r7 := @parameter3: java.lang.StringBuilder;	$r1 = <com.google.javascript.jscomp.ReplaceStrings$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 4: goto $r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 5: goto r25 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 6: goto r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 7: goto $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();     default: goto $r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>; };	r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r14 = virtualinvoke r13.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getNext()>();	r24 = virtualinvoke r8.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.rhino.Node buildReplacement(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,java.lang.StringBuilder)>(r3, r13, r23, r7);	$r15 = virtualinvoke r8.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.rhino.Node buildReplacement(com.google.javascript.jscomp.NodeTraversal,com.google.javascript.rhino.Node,com.google.javascript.rhino.Node,java.lang.StringBuilder)>(r3, r14, r24, r7);	return $r15
;block_num 2