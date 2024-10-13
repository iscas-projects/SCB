(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2381 0)
(declare-sort var1137 0)
(declare-sort var999 0)
(declare-sort var1714 0)
(declare-sort var1838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var999) Bool)
(declare-fun var1838_checkState/1431124798 (Bool) void)
(declare-fun getString/-897720134 (var999) String)
(declare-const null-var2381 var2381)
(declare-const null-var1137 var1137)
(declare-const null-var999 var999)
(declare-const null-var1714 var1714)
(declare-const var2524 var2381) ; Statement: r10 := @this: com.google.javascript.jscomp.ConvertChunksToESModules 
(assert (not (= var2524 null-var2381)))
(declare-const var1786 var1137) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var1786 null-var1137)))
(declare-const var1177 var999) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1177 null-var999)))
(declare-const var3223 var1714) ; Statement: r17 := @parameter2: com.google.javascript.jscomp.ConvertChunksToESModules$ImportType 
(assert (not (= var3223 null-var1714)))
(assert true)
(define-const var3669 Bool (isName/-1249361959 var1177)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
;(assert (var1838_checkState/1431124798 var3669)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0) 

(declare-const var3669!1 Bool)
(assert true)
(define-const var2824 String (getString/-897720134 var1177)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var3026 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var1543 Bool (= var3026 var2824)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z1 == 0 goto r4 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>() 
(assert (not (= (ite var1543 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), var1838_checkState/1431124798=([boolean], void), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var2381=com.google.javascript.jscomp.ConvertChunksToESModules, var2524=r10, var1137=com.google.javascript.jscomp.NodeTraversal, var1786=r3, var999=com.google.javascript.rhino.Node, var1177=r0, var1714=com.google.javascript.jscomp.ConvertChunksToESModules$ImportType, var3223=r17, var3669=$z0, var1838=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2824=r1, var3026=$r2, var1543=$z1}
; {com.google.javascript.jscomp.ConvertChunksToESModules=var2381, r10=var2524, com.google.javascript.jscomp.NodeTraversal=var1137, r3=var1786, com.google.javascript.rhino.Node=var999, r0=var1177, com.google.javascript.jscomp.ConvertChunksToESModules$ImportType=var1714, r17=var3223, $z0=var3669, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1838, r1=var2824, $r2=var3026, $z1=var1543}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r10 := @this: com.google.javascript.jscomp.ConvertChunksToESModules;	r3 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: com.google.javascript.rhino.Node;	r17 := @parameter2: com.google.javascript.jscomp.ConvertChunksToESModules$ImportType;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z0);	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r2 = "";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z1 == 0 goto r4 = virtualinvoke r3.<com.google.javascript.jscomp.NodeTraversal: com.google.javascript.jscomp.Scope getScope()>();	return 0
;block_num 2