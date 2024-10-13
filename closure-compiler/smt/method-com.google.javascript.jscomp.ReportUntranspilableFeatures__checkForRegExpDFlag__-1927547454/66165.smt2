(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var43 0)
(declare-sort var2465 0)
(declare-sort var1808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isRegExp/-174786821 (var2465) Bool)
(declare-fun var1808_checkArgument/1735511034 (Bool) void)
(declare-fun hasTwoChildren/660240061 (var2465) Bool)
(declare-fun getLastChild/1278987161 (var2465) var2465)
(declare-fun getString/-897720134 (var2465) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var43 var43)
(declare-const null-var2465 var2465)
(declare-const var2238 var43) ; Statement: r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures 
(assert (not (= var2238 null-var43)))
(declare-const var1160 var2465) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var1160 null-var2465)))
(assert true)
(define-const var3724 Bool (isRegExp/-174786821 var1160)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>() 
;(assert (var1808_checkArgument/1735511034 var3724)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var3724!1 Bool)
(assert true)
(define-const var3836 Bool (hasTwoChildren/660240061 var1160)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>() 
 ; Statement: if $z1 == 0 goto $r4 = "" 
(assert (not (= (ite var3836 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var98 var2465 (getLastChild/1278987161 var1160)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>() 
(assert true)
(define-const var2708 String (getString/-897720134 var98)) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
 ; Statement: goto [?= $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("d")] 
(assert true) ; Non Conditional
(assert true)
(define-const var322 Bool (contains/1009244746 var2708 (cast-from-String-to-String "d"))) ; Statement: $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("d") 
 ; Statement: if $z2 == 0 goto return 
(assert (= (ite var322 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isRegExp/-174786821=([com.google.javascript.rhino.Node], boolean), var1808_checkArgument/1735511034=([boolean], void), hasTwoChildren/660240061=([com.google.javascript.rhino.Node], boolean), getLastChild/1278987161=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var43=com.google.javascript.jscomp.ReportUntranspilableFeatures, var2238=r1, var2465=com.google.javascript.rhino.Node, var1160=r0, var3724=$z0, var1808=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3836=$z1, var98=$r3, var2708=$r4, var322=$z2}
; {com.google.javascript.jscomp.ReportUntranspilableFeatures=var43, r1=var2238, com.google.javascript.rhino.Node=var2465, r0=var1160, $z0=var3724, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1808, $z1=var3836, $r3=var98, $r4=var2708, $z2=var322}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.ReportUntranspilableFeatures;	r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isRegExp()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean hasTwoChildren()>();	if $z1 == 0 goto $r4 = "";	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getLastChild()>();	$r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getString()>();	goto [?= $z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("d")];	$z2 = virtualinvoke $r4.<java.lang.String: boolean contains(java.lang.CharSequence)>("d");	if $z2 == 0 goto return;	return
;block_num 4