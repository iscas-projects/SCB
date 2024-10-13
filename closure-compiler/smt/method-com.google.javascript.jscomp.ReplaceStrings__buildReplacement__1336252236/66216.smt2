(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1955 0)
(declare-sort var2518 0)
(declare-sort var2147 0)
(declare-sort var3727 0)
(declare-sort var1832 0)
(declare-sort var585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1324186377 (var2147) var1832)
(declare-fun ordinal/-291641772 (var585) Int)
(declare-fun cast-from-var1832-to-var585 (var1832) var585)
(declare-fun getString/-897720134 (var2147) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var1955 var1955)
(declare-const null-var2518 var2518)
(declare-const null-var2147 var2147)
(declare-const null-String String)
(declare-const var3727-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var3438 var1955) ; Statement: r8 := @this: com.google.javascript.jscomp.ReplaceStrings 
(assert (not (= var3438 null-var1955)))
(declare-const var1343 var2518) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var1343 null-var2518)))
(declare-const var3041 var2147) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3041 null-var2147)))
(declare-const var3987 var2147) ; Statement: r23 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var3987 null-var2147)))
(declare-const var345 String) ; Statement: r7 := @parameter3: java.lang.StringBuilder 
(assert (not (= var345 null-String)))
(define-const var2628 (Array Int Int) var3727-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r1 = <com.google.javascript.jscomp.ReplaceStrings$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var3781 var1832 (getToken/1324186377 var3041)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var783 Int (ordinal/-291641772 (cast-from-var1832-to-var585 var3781))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var2170 Int (select var2628 var783)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 4: goto $r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 5: goto r25 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 6: goto r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 7: goto $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();     default: goto $r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>; } 
(assert (and (= var2170 4) true)) ; Intersect: Cond: $i1 == 4  and Non Conditional 
(assert true)
(define-const var3899 String (getString/-897720134 var3041)) ; Statement: $r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
;(assert (append/672562846 var345 var3899)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var345!1 String)
(assert (= var345!1 (str.++ var345 var3899)))
 ; Statement: return r23 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1832-to-var585=([com.google.javascript.rhino.Token], java.lang.Enum), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1955=com.google.javascript.jscomp.ReplaceStrings, var3438=r8, var2518=com.google.javascript.jscomp.NodeTraversal, var1343=r3, var2147=com.google.javascript.rhino.Node, var3041=r0, var3987=r23, var345=r7, var3727=com.google.javascript.jscomp.ReplaceStrings$1, var2628=$r1, var1832=com.google.javascript.rhino.Token, var3781=$r2, var585=java.lang.Enum, var783=$i0, var2170=$i1, var3899=$r22}
; {com.google.javascript.jscomp.ReplaceStrings=var1955, r8=var3438, com.google.javascript.jscomp.NodeTraversal=var2518, r3=var1343, com.google.javascript.rhino.Node=var2147, r0=var3041, r23=var3987, r7=var345, com.google.javascript.jscomp.ReplaceStrings$1=var3727, $r1=var2628, com.google.javascript.rhino.Token=var1832, $r2=var3781, java.lang.Enum=var585, $i0=var783, $i1=var2170, $r22=var3899}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.ReplaceStrings;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r23 := @parameter2: com.google.javascript.rhino.Node;	r7 := @parameter3: java.lang.StringBuilder;	$r1 = <com.google.javascript.jscomp.ReplaceStrings$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 4: goto $r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 5: goto r25 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 6: goto r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 7: goto $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();     default: goto $r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>; };	$r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	return r23
;block_num 2