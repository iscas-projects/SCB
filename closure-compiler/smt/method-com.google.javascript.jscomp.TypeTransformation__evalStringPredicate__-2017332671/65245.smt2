(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1408 0)
(declare-sort var2742 0)
(declare-sort var388 0)
(declare-sort var3260 0)
(declare-sort var856 0)
(declare-sort var238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun evalStringParams/1645083131 (var1408 var2742 var388) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun getCallName/-1500847420 (var1408 var2742) String)
(declare-fun nameToKeyword/752339908 (var1408 String) var3260)
(declare-fun ordinal/-291641772 (var238) Int)
(declare-fun cast-from-var3260-to-var238 (var3260) var238)
(declare-const null-var1408 var1408)
(declare-const null-var2742 var2742)
(declare-const null-var388 var388)
(declare-const var856-$SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords (Array Int Int))
(declare-const var2732 var1408) ; Statement: r0 := @this: com.google.javascript.jscomp.TypeTransformation 
(assert (not (= var2732 null-var1408)))
(declare-const var255 var2742) ; Statement: r1 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var255 null-var2742)))
(declare-const var2751 var388) ; Statement: r2 := @parameter1: com.google.javascript.jscomp.TypeTransformation$NameResolver 
(assert (not (= var2751 null-var388)))
(assert true)
(define-const var619 (Array Int String) (evalStringParams/1645083131 var2732 var255 var2751)) ; Statement: r3 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String[] evalStringParams(com.google.javascript.rhino.Node,com.google.javascript.jscomp.TypeTransformation$NameResolver)>(r1, r2) 
(define-const var2967 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1377 Int (getLength-Arr-String-1 var619)) ; Statement: $i0 = lengthof r3 
 ; Statement: if i3 >= $i0 goto r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1) 
(assert (>= var2967 var1377)) ; Cond: i3 >= $i0 
(assert true)
(define-const var843 String (getCallName/-1500847420 var2732 var255)) ; Statement: r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1) 
(assert true)
(define-const var1396 var3260 (nameToKeyword/752339908 var2732 var843)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords nameToKeyword(java.lang.String)>(r10) 
(define-const var381 (Array Int Int) var856-$SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords) ; Statement: $r5 = <com.google.javascript.jscomp.TypeTransformation$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords> 
(assert true)
(define-const var2379 Int (ordinal/-291641772 (cast-from-var3260-to-var238 var1396))) ; Statement: $i1 = virtualinvoke r4.<com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords: int ordinal()>() 
(define-const var2209 Int (select var381 var2379)) ; Statement: $i2 = $r5[$i1] 
 ; Statement: lookupswitch($i2) {     case 23: goto $r7 = r3[0];     default: goto $r8 = new java.lang.IllegalStateException; } 
(assert (and (= var2209 23) true)) ; Intersect: Cond: $i2 == 23  and Non Conditional 
(define-const var358 String (select var619 0)) ; Statement: $r7 = r3[0] 
(define-const var3809 String (select var619 1)) ; Statement: $r6 = r3[1] 
(assert true)
(define-const var2429 Bool (= var358 var3809)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {evalStringParams/1645083131=([com.google.javascript.jscomp.TypeTransformation, com.google.javascript.rhino.Node, com.google.javascript.jscomp.TypeTransformation$NameResolver], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), getCallName/-1500847420=([com.google.javascript.jscomp.TypeTransformation, com.google.javascript.rhino.Node], java.lang.String), nameToKeyword/752339908=([com.google.javascript.jscomp.TypeTransformation, java.lang.String], com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3260-to-var238=([com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords], java.lang.Enum)}
; {var1408=com.google.javascript.jscomp.TypeTransformation, var2732=r0, var2742=com.google.javascript.rhino.Node, var255=r1, var388=com.google.javascript.jscomp.TypeTransformation$NameResolver, var2751=r2, var619=r3, var2967=i3, var1377=$i0, var843=r10, var3260=com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords, var1396=r4, var856=com.google.javascript.jscomp.TypeTransformation$1, var381=$r5, var238=java.lang.Enum, var2379=$i1, var2209=$i2, var358=$r7, var3809=$r6, var2429=$z0}
; {com.google.javascript.jscomp.TypeTransformation=var1408, r0=var2732, com.google.javascript.rhino.Node=var2742, r1=var255, com.google.javascript.jscomp.TypeTransformation$NameResolver=var388, r2=var2751, r3=var619, i3=var2967, $i0=var1377, r10=var843, com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords=var3260, r4=var1396, com.google.javascript.jscomp.TypeTransformation$1=var856, $r5=var381, java.lang.Enum=var238, $i1=var2379, $i2=var2209, $r7=var358, $r6=var3809, $z0=var2429}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.TypeTransformation;	r1 := @parameter0: com.google.javascript.rhino.Node;	r2 := @parameter1: com.google.javascript.jscomp.TypeTransformation$NameResolver;	r3 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String[] evalStringParams(com.google.javascript.rhino.Node,com.google.javascript.jscomp.TypeTransformation$NameResolver)>(r1, r2);	i3 = 0;	$i0 = lengthof r3;	if i3 >= $i0 goto r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1);	r10 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: java.lang.String getCallName(com.google.javascript.rhino.Node)>(r1);	r4 = virtualinvoke r0.<com.google.javascript.jscomp.TypeTransformation: com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords nameToKeyword(java.lang.String)>(r10);	$r5 = <com.google.javascript.jscomp.TypeTransformation$1: int[] $SwitchMap$com$google$javascript$jscomp$parsing$TypeTransformationParser$Keywords>;	$i1 = virtualinvoke r4.<com.google.javascript.jscomp.parsing.TypeTransformationParser$Keywords: int ordinal()>();	$i2 = $r5[$i1];	lookupswitch($i2) {     case 23: goto $r7 = r3[0];     default: goto $r8 = new java.lang.IllegalStateException; };	$r7 = r3[0];	$r6 = r3[1];	$z0 = virtualinvoke $r7.<java.lang.String: boolean equals(java.lang.Object)>($r6);	return $z0
;block_num 4