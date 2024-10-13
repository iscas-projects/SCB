(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2166 0)
(declare-sort var3234 0)
(declare-sort var1955 0)
(declare-sort var2918 0)
(declare-sort var198 0)
(declare-sort var3868 0)
(declare-sort var2870 0)
(declare-sort var830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var198_checkArgument/1735511034 (Bool) void)
(declare-fun getOwnSlot/1483543251 (var2870 String) var3868)
(declare-fun cast-from-var2166-to-var2870 (var2166) var2870)
(declare-fun var198_checkState/1431124798 (Bool) void)
(declare-fun var830-init () var830)
(declare-fun getVarCount/161871495 (var2870) Int)
(declare-fun <init>/773284956 (var830 String var1955 var2166 Int var2918 var1955) void)
(declare-fun declareInternal/-131085874 (var2870 String var3868) void)
(declare-fun cast-from-var830-to-var3868 (var830) var3868)
(declare-const null-var2166 var2166)
(declare-const null-String String)
(declare-const null-var1955 var1955)
(declare-const null-var2918 var2918)
(declare-const null-var3868 var3868)
(declare-const null-NullType var3234)
(declare-const var139 var2166) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var139 null-var2166)))
(declare-const var2457 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2457 null-String)))
(declare-const var2864 var1955) ; Statement: r4 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2864 null-var1955)))
(declare-const var2632 var2918) ; Statement: r5 := @parameter2: com.google.javascript.jscomp.CompilerInput 
(assert (not (= var2632 null-var2918)))
(assert true)
(define-const var621 Bool (isEmpty/-1285796103 var2457)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var621 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3629 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var198_checkArgument/1735511034 var3629)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var3629!1 Bool)
(assert true)
(define-const var3751 var3868 (getOwnSlot/1483543251 (cast-from-var2166-to-var2870 var139) var2457)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
 ; Statement: if $r2 != null goto $z2 = 0 
(assert (not (= var3751 null-var3868))) ; Cond: $r2 != null 
(define-const var2300 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var198_checkState/1431124798 var2300)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var2300!1 Bool)
(define-const var1991 var830 var830-init) ; Statement: $r3 = new com.google.javascript.jscomp.Var 
(assert true)
(define-const var19 Int (getVarCount/161871495 (cast-from-var2166-to-var2870 var139))) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>() 
(assert true)
;(assert (<init>/773284956 var1991 var2457 var2864 var139 var19 var2632 null-var1955)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null) 

(declare-const var1991!1 var830)
(declare-const var2457!1 String)
(declare-const var2864!1 var1955)
(declare-const var139!1 var2166)
(declare-const var19!1 Int)
(declare-const var2632!1 var2918)
(declare-const var252 var3234)
(assert true)
;(assert (declareInternal/-131085874 (cast-from-var2166-to-var2870 var139!1) var2457!1 (cast-from-var830-to-var3868 var1991!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3) 

(declare-const var139!2 var2166)
(declare-const var2457!2 String)
(declare-const var1991!2 var830)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var198_checkArgument/1735511034=([boolean], void), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var2166-to-var2870=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var198_checkState/1431124798=([boolean], void), var830-init=([], com.google.javascript.jscomp.Var), getVarCount/161871495=([com.google.javascript.jscomp.AbstractScope], int), <init>/773284956=([com.google.javascript.jscomp.Var, java.lang.String, com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope, int, com.google.javascript.jscomp.CompilerInput, com.google.javascript.rhino.Node], void), declareInternal/-131085874=([com.google.javascript.jscomp.AbstractScope, java.lang.String, com.google.javascript.jscomp.AbstractVar], void), cast-from-var830-to-var3868=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var2166=com.google.javascript.jscomp.Scope, var139=r1, var2457=r0, var3234=null_type, var1955=com.google.javascript.rhino.Node, var2864=r4, var2918=com.google.javascript.jscomp.CompilerInput, var2632=r5, var621=$z0, var3629=$z1, var198=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3868=com.google.javascript.jscomp.AbstractVar, var2870=com.google.javascript.jscomp.AbstractScope, var3751=$r2, var2300=$z2, var830=com.google.javascript.jscomp.Var, var1991=$r3, var19=$i0, var252=null}
; {com.google.javascript.jscomp.Scope=var2166, r1=var139, r0=var2457, null_type=var3234, com.google.javascript.rhino.Node=var1955, r4=var2864, com.google.javascript.jscomp.CompilerInput=var2918, r5=var2632, $z0=var621, $z1=var3629, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var198, com.google.javascript.jscomp.AbstractVar=var3868, com.google.javascript.jscomp.AbstractScope=var2870, $r2=var3751, $z2=var2300, com.google.javascript.jscomp.Var=var830, $r3=var1991, $i0=var19, null=var252}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.rhino.Node;	r5 := @parameter2: com.google.javascript.jscomp.CompilerInput;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	if $r2 != null goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r3 = new com.google.javascript.jscomp.Var;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>();	specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null);	virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3);	return $r3
;block_num 5