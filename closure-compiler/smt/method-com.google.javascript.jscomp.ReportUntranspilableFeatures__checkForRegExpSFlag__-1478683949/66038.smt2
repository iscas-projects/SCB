(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1548 0)
(declare-sort var701 0)
(declare-sort var2110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isRegExp/-174786821 (var701) Bool)
(declare-fun var2110_checkArgument/1735511034 (Bool) void)
(declare-fun hasTwoChildren/660240061 (var701) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1548 var1548)
(declare-const null-var701 var701)
(declare-const var1320 var1548) ; Statement: r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures 
(assert (not (= var1320 null-var1548)))
(declare-const var178 var701) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var178 null-var701)))
(assert true)
(define-const var2413 Bool (isRegExp/-174786821 var178)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>() 
;(assert (var2110_checkArgument/1735511034 var2413)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var2413!1 Bool)
(assert true)
(define-const var50 Bool (hasTwoChildren/660240061 var178)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>() 
 ; Statement: if $z1 == 0 goto $r4 = "" 
(assert (= (ite var50 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2672 String "") ; Statement: $r4 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var248 Bool (contains/1009244746 var2672 (cast-from-String-to-String "s"))) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("s") 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var248 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isRegExp/-174786821=([com.google.javascript.rhino.Node], boolean), var2110_checkArgument/1735511034=([boolean], void), hasTwoChildren/660240061=([com.google.javascript.rhino.Node], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1548=com.google.javascript.jscomp.ReportUntranspilableFeatures, var1320=r1, var701=com.google.javascript.rhino.Node, var178=r0, var2413=$z0, var2110=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var50=$z1, var2672=$r4, var248=$z2}
; {com.google.javascript.jscomp.ReportUntranspilableFeatures=var1548, r1=var1320, com.google.javascript.rhino.Node=var701, r0=var178, $z0=var2413, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2110, $z1=var50, $r4=var2672, $z2=var248}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>();	if $z1 == 0 goto $r4 = "";	$r4 = "";	$z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("s");	if $z2 == 0 goto return;	return
;block_num 4