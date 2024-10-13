(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var439 0)
(declare-sort var1917 0)
(declare-sort var3280 0)
(declare-sort var2568 0)
(declare-sort var2596 0)
(declare-sort var3500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun useOriginalName/1552939610 (var439) Bool)
(declare-fun getToken/1324186377 (var1917) var2568)
(declare-fun ordinal/-291641772 (var2596) Int)
(declare-fun cast-from-var2568-to-var2596 (var2568) var2596)
(declare-fun var3500-init () var3500)
(declare-fun cast-from-var1917-to-String (var1917) String)
(declare-fun <init>/-1092629202 (var3500 String) void)
(declare-const null-var439 var439)
(declare-const null-String String)
(declare-const null-var1917 var1917)
(declare-const var3280-$SwitchMap$com$google$javascript$rhino$Token (Array Int Int))
(declare-const var3855 var439) ; Statement: r0 := @this: com.google.javascript.jscomp.JSDocInfoPrinter 
(assert (not (= var3855 null-var439)))
(declare-const var2709 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2709 null-String)))
(declare-const var3438 var1917) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3438 null-var1917)))
(define-const var2693 Bool (useOriginalName/1552939610 var3855)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.JSDocInfoPrinter: boolean useOriginalName> 
 ; Statement: if $z0 == 0 goto $r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert (= (ite var2693 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2856 (Array Int Int) var3280-$SwitchMap$com$google$javascript$rhino$Token) ; Statement: $r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token> 
(assert true)
(define-const var2750 var2568 (getToken/1324186377 var3438)) ; Statement: $r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>() 
(assert true)
(define-const var1729 Int (ordinal/-291641772 (cast-from-var2568-to-var2596 var2750))) ; Statement: $i0 = virtualinvoke $r3.<com.google.javascript.rhino.Token: int ordinal()>() 
(define-const var3621 Int (select var2856 var1729)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!");     case 2: goto $r18 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 3: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");     case 4: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");     case 7: goto virtualinvoke r0.<com.google.javascript.jscomp.JSDocInfoPrinter: void appendFunctionNode(java.lang.StringBuilder,com.google.javascript.rhino.Node)>(r4, r1);     case 8: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");     case 9: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void");     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("typeof ");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");     case 12: goto $r5 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto $r20 = new java.lang.IllegalStateException; } 
(assert (and (not (= var3621 12)) (and (not (= var3621 11)) (and (not (= var3621 10)) (and (not (= var3621 9)) (and (not (= var3621 8)) (and (not (= var3621 7)) (and (not (= var3621 6)) (and (not (= var3621 5)) (and (not (= var3621 4)) (and (not (= var3621 3)) (and (not (= var3621 2)) (and (not (= var3621 1)) true))))))))))))) ; Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var1422 var3500 var3500-init) ; Statement: $r20 = new java.lang.IllegalStateException 
(define-const var208 String (str.++ "Unexpected typeNode: \u0001" (cast-from-var1917-to-String var3438))) ; Statement: $r21 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (com.google.javascript.rhino.Node)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Unexpected typeNode: \u0001") 
(assert true)
;(assert (<init>/-1092629202 var1422 var208)) ; Statement: specialinvoke $r20.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21) 

(declare-const var1422!1 var3500)
(declare-const var208!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {useOriginalName/1552939610=([com.google.javascript.jscomp.JSDocInfoPrinter], boolean), getToken/1324186377=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2568-to-var2596=([com.google.javascript.rhino.Token], java.lang.Enum), var3500-init=([], java.lang.IllegalStateException), cast-from-var1917-to-String=([com.google.javascript.rhino.Node], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var439=com.google.javascript.jscomp.JSDocInfoPrinter, var3855=r0, var2709=r4, var1917=com.google.javascript.rhino.Node, var3438=r1, var2693=$z0, var3280=com.google.javascript.jscomp.JSDocInfoPrinter$1, var2856=$r2, var2568=com.google.javascript.rhino.Token, var2750=$r3, var2596=java.lang.Enum, var1729=$i0, var3621=$i1, var3500=java.lang.IllegalStateException, var1422=$r20, var208=$r21}
; {com.google.javascript.jscomp.JSDocInfoPrinter=var439, r0=var3855, r4=var2709, com.google.javascript.rhino.Node=var1917, r1=var3438, $z0=var2693, com.google.javascript.jscomp.JSDocInfoPrinter$1=var3280, $r2=var2856, com.google.javascript.rhino.Token=var2568, $r3=var2750, java.lang.Enum=var2596, $i0=var1729, $i1=var3621, java.lang.IllegalStateException=var3500, $r20=var1422, $r21=var208}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.JSDocInfoPrinter;	r4 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = r0.<com.google.javascript.jscomp.JSDocInfoPrinter: boolean useOriginalName>;	if $z0 == 0 goto $r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r2 = <com.google.javascript.jscomp.JSDocInfoPrinter$1: int[] $SwitchMap$com$google$javascript$rhino$Token>;	$r3 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token getToken()>();	$i0 = virtualinvoke $r3.<com.google.javascript.rhino.Token: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("!");     case 2: goto $r18 = virtualinvoke r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();     case 3: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");     case 4: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("...");     case 5: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*");     case 6: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");     case 7: goto virtualinvoke r0.<com.google.javascript.jscomp.JSDocInfoPrinter: void appendFunctionNode(java.lang.StringBuilder,com.google.javascript.rhino.Node)>(r4, r1);     case 8: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");     case 9: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("void");     case 10: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("typeof ");     case 11: goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");     case 12: goto $r5 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();     default: goto $r20 = new java.lang.IllegalStateException; };	$r20 = new java.lang.IllegalStateException;	$r21 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (com.google.javascript.rhino.Node)>(r1) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("Unexpected typeNode: \u0001");	specialinvoke $r20.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21);	throw $r20
;block_num 3