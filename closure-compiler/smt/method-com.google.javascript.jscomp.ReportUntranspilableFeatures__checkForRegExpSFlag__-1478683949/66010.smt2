(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1285 0)
(declare-sort var2845 0)
(declare-sort var3495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isRegExp/-174786821 (var2845) Bool)
(declare-fun var3495_checkArgument/1735511034 (Bool) void)
(declare-fun hasTwoChildren/660240061 (var2845) Bool)
(declare-fun getLastChild/1278987161 (var2845) var2845)
(declare-fun getString/-897720134 (var2845) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1285 var1285)
(declare-const null-var2845 var2845)
(declare-const var2370 var1285) ; Statement: r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures 
(assert (not (= var2370 null-var1285)))
(declare-const var674 var2845) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var674 null-var2845)))
(assert true)
(define-const var3886 Bool (isRegExp/-174786821 var674)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>() 
;(assert (var3495_checkArgument/1735511034 var3886)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var3886!1 Bool)
(assert true)
(define-const var459 Bool (hasTwoChildren/660240061 var674)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>() 
 ; Statement: if $z1 == 0 goto $r4 = "" 
(assert (not (= (ite var459 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var983 var2845 (getLastChild/1278987161 var674)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var1128 String (getString/-897720134 var983)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
 ; Statement: goto [?= $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("s")] 
(assert true) ; Non Conditional
(assert true)
(define-const var3518 Bool (contains/1009244746 var1128 (cast-from-String-to-String "s"))) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("s") 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var3518 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isRegExp/-174786821=([com.google.javascript.rhino.Node], boolean), var3495_checkArgument/1735511034=([boolean], void), hasTwoChildren/660240061=([com.google.javascript.rhino.Node], boolean), getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1285=com.google.javascript.jscomp.ReportUntranspilableFeatures, var2370=r1, var2845=com.google.javascript.rhino.Node, var674=r0, var3886=$z0, var3495=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var459=$z1, var983=$r3, var1128=$r4, var3518=$z2}
; {com.google.javascript.jscomp.ReportUntranspilableFeatures=var1285, r1=var2370, com.google.javascript.rhino.Node=var2845, r0=var674, $z0=var3886, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3495, $z1=var459, $r3=var983, $r4=var1128, $z2=var3518}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>();	if $z1 == 0 goto $r4 = "";	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>();	goto [?= $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("s")];	$z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("s");	if $z2 == 0 goto return;	return
;block_num 4