(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2079 0)
(declare-sort var1368 0)
(declare-sort var3304 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isRegExp/-174786821 (var1368) Bool)
(declare-fun var3304_checkArgument/1735511034 (Bool) void)
(declare-fun hasTwoChildren/660240061 (var1368) Bool)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2079 var2079)
(declare-const null-var1368 var1368)
(declare-const var3750 var2079) ; Statement: r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures 
(assert (not (= var3750 null-var2079)))
(declare-const var3556 var1368) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3556 null-var1368)))
(assert true)
(define-const var1185 Bool (isRegExp/-174786821 var3556)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>() 
;(assert (var3304_checkArgument/1735511034 var1185)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var1185!1 Bool)
(assert true)
(define-const var3095 Bool (hasTwoChildren/660240061 var3556)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>() 
 ; Statement: if $z1 == 0 goto $r4 = "" 
(assert (= (ite var3095 1 0) 0)) ; Cond: $z1 == 0 
(define-const var701 String "") ; Statement: $r4 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3912 Bool (contains/1009244746 var701 (cast-from-String-to-String "d"))) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("d") 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var3912 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isRegExp/-174786821=([com.google.javascript.rhino.Node], boolean), var3304_checkArgument/1735511034=([boolean], void), hasTwoChildren/660240061=([com.google.javascript.rhino.Node], boolean), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2079=com.google.javascript.jscomp.ReportUntranspilableFeatures, var3750=r1, var1368=com.google.javascript.rhino.Node, var3556=r0, var1185=$z0, var3304=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3095=$z1, var701=$r4, var3912=$z2}
; {com.google.javascript.jscomp.ReportUntranspilableFeatures=var2079, r1=var3750, com.google.javascript.rhino.Node=var1368, r0=var3556, $z0=var1185, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3304, $z1=var3095, $r4=var701, $z2=var3912}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>();	if $z1 == 0 goto $r4 = "";	$r4 = "";	$z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("d");	if $z2 == 0 goto return;	return
;block_num 4