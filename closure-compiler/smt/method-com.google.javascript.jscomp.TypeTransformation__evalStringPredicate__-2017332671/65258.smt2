(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var1961 0)
(declare-sort var2671 0)
(declare-sort var2469 0)
(declare-sort var2238 0)
(declare-sort var3472 0)
(declare-sort var2217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun evalStringParams/1645083131 (var426 var1961 var2671) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun getCallName/-1500847420 (var426 var1961) String)
(declare-fun nameToKeyword/752339908 (var426 String) var2469)
(declare-fun ordinal/-291641772 (var3472) Int)
(declare-fun cast-from-var2469-to-var3472 (var2469) var3472)
(declare-fun var2217-init () var2217)
(declare-fun <init>/-1092629202 (var2217 String) void)
(declare-const null-var426 var426)
(declare-const null-var1961 var1961)
(declare-const null-var2671 var2671)
(declare-const var2238-$SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords (Array Int Int))
(declare-const var2586 var426) ; Statement: r0 := @this: com.google.javascript.jscomp.TypeTransformation 
(assert (not (= var2586 null-var426)))
(declare-const var826 var1961) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var826 null-var1961)))
(declare-const var1031 var2671) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.TypeTransformation$NameResolver 
(assert (not (= var1031 null-var2671)))
(assert true)
(define-const var3736 (Array Int String) (evalStringParams/1645083131 var2586 var826 var1031)) ; Statement: r3 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String[] evalStringParams(com.google.javascript.rhino.Node,com.google.javascript.jscomp.TypeTransformation$NameResolver)>(r1, r2) 
(define-const var3456 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var528 Int (getLength-Arr-String-1 var3736)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i3 >= $i0 goto r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1) 
(assert (>= var3456 var528)) ; Cond: i3 >= $i0 
(assert true)
(define-const var3603 String (getCallName/-1500847420 var2586 var826)) ; Statement: r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1) 
(assert true)
(define-const var719 var2469 (nameToKeyword/752339908 var2586 var3603)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords nameToKeyword(java.lang.String)>(r10) 
(define-const var2100 (Array Int Int) var2238-$SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords) ; Statement: $r5 = <com.google.javascript.jscomp.TypeTransformation$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords> 
(assert true)
(define-const var2715 Int (ordinal/-291641772 (cast-from-var2469-to-var3472 var719))) ; Statement: $i1 = virtualinvoke r4.<com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords: int ordinal()>() 
(define-const var1729 Int (select var2100 var2715)) ; Statement: $i2 = $r5[$i1] 
 ; Statement: lookupswitch($i2) {     case 23: goto $r7 = r3[0];     default: goto $r8 = new java.lang.IllegalStateException; } 
(assert (and (not (= var1729 23)) true)) ; Intersect: Negate: Cond: $i2 == 23   and Non Conditional 
(define-const var1747 var2217 var2217-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(assert true)
;(assert (<init>/-1092629202 var1747 "Invalid string predicate in the type transformation")) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>("Invalid string predicate in the type transformation") 

(declare-const var1747!1 var2217)
(declare-const var3221 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {evalStringParams/1645083131=([com.google.javascript.jscomp.TypeTransformation, com.google.javascript.rhino.Node, com.google.javascript.jscomp.TypeTransformation$NameResolver], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), getCallName/-1500847420=([com.google.javascript.jscomp.TypeTransformation, com.google.javascript.rhino.Node], java.lang.String), nameToKeyword/752339908=([com.google.javascript.jscomp.TypeTransformation, java.lang.String], com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2469-to-var3472=([com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords], java.lang.Enum), var2217-init=([], java.lang.IllegalStateException), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var426=com.google.javascript.jscomp.TypeTransformation, var2586=r0, var1961=com.google.javascript.rhino.Node, var826=r1, var2671=com.google.javascript.jscomp.TypeTransformation$NameResolver, var1031=r2, var3736=r3, var3456=i3, var528=$i0, var3603=r10, var2469=com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords, var719=r4, var2238=com.google.javascript.jscomp.TypeTransformation$1, var2100=$r5, var3472=java.lang.Enum, var2715=$i1, var1729=$i2, var2217=java.lang.IllegalStateException, var1747=$r8, var3221="Invalid string predicate in the type transformation"}
; {com.google.javascript.jscomp.TypeTransformation=var426, r0=var2586, com.google.javascript.rhino.Node=var1961, r1=var826, com.google.javascript.jscomp.TypeTransformation$NameResolver=var2671, r2=var1031, r3=var3736, i3=var3456, $i0=var528, r10=var3603, com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords=var2469, r4=var719, com.google.javascript.jscomp.TypeTransformation$1=var2238, $r5=var2100, java.lang.Enum=var3472, $i1=var2715, $i2=var1729, java.lang.IllegalStateException=var2217, $r8=var1747, "Invalid string predicate in the type transformation"=var3221}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.TypeTransformation;	r1 := @parameter0: com.google.javascript.rhino.Node;	r2 := @parameter1: com.google.javascript.jscomp.TypeTransformation$NameResolver;	r3 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String[] evalStringParams(com.google.javascript.rhino.Node,com.google.javascript.jscomp.TypeTransformation$NameResolver)>(r1, r2);	i3 = 0;	$i0 = lengthof r3;	if i3 >= $i0 goto r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1);	r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1);	r4 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords nameToKeyword(java.lang.String)>(r10);	$r5 = <com.google.javascript.jscomp.TypeTransformation$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords>;	$i1 = virtualinvoke r4.<com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords: int ordinal()>();	$i2 = $r5[$i1];	lookupswitch($i2) {     case 23: goto $r7 = r3[0];     default: goto $r8 = new java.lang.IllegalStateException; };	$r8 = new java.lang.IllegalStateException;	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>("Invalid string predicate in the type transformation");	throw $r8
;block_num 4