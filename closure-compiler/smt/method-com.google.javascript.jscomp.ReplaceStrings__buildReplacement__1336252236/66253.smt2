(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var602 0)
(declare-sort var3080 0)
(declare-sort var1532 0)
(declare-sort var3399 0)
(declare-sort var456 0)
(declare-sort var2560 0)
(declare-sort var1425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1324186377 (var1532) var456)
(declare-fun ordinal/-291641772 (var2560) Int)
(declare-fun cast-from-var456-to-var2560 (var456) var2560)
(declare-fun placeholderToken/1104890379 (var602) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1425_string/730211268 (String) var1532)
(declare-fun var1425_add/389755309 (var1532 var1532) var1532)
(declare-fun cloneTree/-1529247050 (var1532) var1532)
(declare-const null-var602 var602)
(declare-const null-var3080 var3080)
(declare-const null-var1532 var1532)
(declare-const null-String String)
(declare-const var3399-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var1302 var602) ; Statement: r8 := @this: com.google.javascript.jscomp.ReplaceStrings 
(assert (not (= var1302 null-var602)))
(declare-const var2838 var3080) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var2838 null-var3080)))
(declare-const var3268 var1532) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3268 null-var1532)))
(declare-const var2544 var1532) ; Statement: r23 := @parameter2: com.google.javascript.rhino.Node 
(assert (not (= var2544 null-var1532)))
(declare-const var2487 String) ; Statement: r7 := @parameter3: java.lang.StringBuilder 
(assert (not (= var2487 null-String)))
(define-const var3316 (Array Int Int) var3399-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r1 = <com.google.javascript.jscomp.ReplaceStrings$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var1044 var456 (getToken/1324186377 var3268)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var2522 Int (ordinal/-291641772 (cast-from-var456-to-var2560 var1044))) ; Statement: $i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var1639 Int (select var3316 var2522)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 4: goto $r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 5: goto r25 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 6: goto r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 7: goto $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();     default: goto $r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>; } 
(assert (and (not (= var1639 7)) (and (not (= var1639 6)) (and (not (= var1639 5)) (and (not (= var1639 4)) true))))) ; Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Non Conditional    
(define-const var1840 String (placeholderToken/1104890379 var1302)) ; Statement: $r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> 
(assert true)
;(assert (append/672562846 var2487 var1840)) ; Statement: virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var2487!1 String)
(assert (= var2487!1 (str.++ var2487 var1840)))
(define-const var2854 String (placeholderToken/1104890379 var1302)) ; Statement: $r28 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> 
(define-const var3069 var1532 (var1425_string/730211268 var2854)) ; Statement: $r29 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>($r28) 
(define-const var3371 var1532 (var1425_add/389755309 var2544 var3069)) ; Statement: $r30 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node add(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>(r23, $r29) 
(assert true)
(define-const var886 var1532 (cloneTree/-1529247050 var3268)) ; Statement: $r31 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node cloneTree()>() 
(define-const var503 var1532 (var1425_add/389755309 var3371 var886)) ; Statement: $r32 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node add(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>($r30, $r31) 
 ; Statement: return $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var456-to-var2560=([com.google.javascript.rhino.Token], java.lang.Enum), placeholderToken/1104890379=([com.google.javascript.jscomp.ReplaceStrings], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1425_string/730211268=([java.lang.String], com.google.javascript.rhino.Node), var1425_add/389755309=([com.google.javascript.rhino.Node, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), cloneTree/-1529247050=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node)}
; {var602=com.google.javascript.jscomp.ReplaceStrings, var1302=r8, var3080=com.google.javascript.jscomp.NodeTraversal, var2838=r3, var1532=com.google.javascript.rhino.Node, var3268=r0, var2544=r23, var2487=r7, var3399=com.google.javascript.jscomp.ReplaceStrings$1, var3316=$r1, var456=com.google.javascript.rhino.Token, var1044=$r2, var2560=java.lang.Enum, var2522=$i0, var1639=$i1, var1840=$r27, var2854=$r28, var1425=com.google.javascript.rhino.IR, var3069=$r29, var3371=$r30, var886=$r31, var503=$r32}
; {com.google.javascript.jscomp.ReplaceStrings=var602, r8=var1302, com.google.javascript.jscomp.NodeTraversal=var3080, r3=var2838, com.google.javascript.rhino.Node=var1532, r0=var3268, r23=var2544, r7=var2487, com.google.javascript.jscomp.ReplaceStrings$1=var3399, $r1=var3316, com.google.javascript.rhino.Token=var456, $r2=var1044, java.lang.Enum=var2560, $i0=var2522, $i1=var1639, $r27=var1840, $r28=var2854, com.google.javascript.rhino.IR=var1425, $r29=var3069, $r30=var3371, $r31=var886, $r32=var503}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.ReplaceStrings;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r23 := @parameter2: com.google.javascript.rhino.Node;	r7 := @parameter3: java.lang.StringBuilder;	$r1 = <com.google.javascript.jscomp.ReplaceStrings$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r2.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 4: goto $r22 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();     case 5: goto r25 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 6: goto r13 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 7: goto $r5 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();     default: goto $r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>; };	$r27 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>;	virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r28 = r8.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken>;	$r29 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node string(java.lang.String)>($r28);	$r30 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node add(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>(r23, $r29);	$r31 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node cloneTree()>();	$r32 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node add(com.google.javascript.rhino.Node,com.google.javascript.rhino.Node)>($r30, $r31);	return $r32
;block_num 2