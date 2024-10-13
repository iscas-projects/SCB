(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2382 0)
(declare-sort var1035 0)
(declare-sort var764 0)
(declare-sort var1958 0)
(declare-sort var3241 0)
(declare-sort var1340 0)
(declare-sort var1586 0)
(declare-sort var2035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var3241_checkArgument/1735511034 (Bool) void)
(declare-fun getOwnSlot/1483543251 (var1586 String) var1340)
(declare-fun cast-from-var2382-to-var1586 (var2382) var1586)
(declare-fun var3241_checkState/1431124798 (Bool) void)
(declare-fun var2035-init () var2035)
(declare-fun getVarCount/161871495 (var1586) Int)
(declare-fun <init>/773284956 (var2035 String var764 var2382 Int var1958 var764) void)
(declare-fun declareInternal/-131085874 (var1586 String var1340) void)
(declare-fun cast-from-var2035-to-var1340 (var2035) var1340)
(declare-const null-var2382 var2382)
(declare-const null-String String)
(declare-const null-var764 var764)
(declare-const null-var1958 var1958)
(declare-const null-var1340 var1340)
(declare-const null-NullType var1035)
(declare-const var2558 var2382) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var2558 null-var2382)))
(declare-const var1466 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1466 null-String)))
(declare-const var1318 var764) ; Statement: r4 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var1318 null-var764)))
(declare-const var2543 var1958) ; Statement: r5 := @parameter2: com.google.javascript.jscomp.CompilerInput 
(assert (not (= var2543 null-var1958)))
(assert true)
(define-const var1638 Bool (isEmpty/-1285796103 var1466)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1638 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1794 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var3241_checkArgument/1735511034 var1794)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var1794!1 Bool)
(assert true)
(define-const var107 var1340 (getOwnSlot/1483543251 (cast-from-var2382-to-var1586 var2558) var1466)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
 ; Statement: if $r2 != null goto $z2 = 0 
(assert (not (not (= var107 null-var1340)))) ; Negate: Cond: $r2 != null  
(define-const var2765 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)] 
(assert true) ; Non Conditional
;(assert (var3241_checkState/1431124798 var2765)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var2765!1 Bool)
(define-const var2234 var2035 var2035-init) ; Statement: $r3 = new com.google.javascript.jscomp.Var 
(assert true)
(define-const var3011 Int (getVarCount/161871495 (cast-from-var2382-to-var1586 var2558))) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>() 
(assert true)
;(assert (<init>/773284956 var2234 var1466 var1318 var2558 var3011 var2543 null-var764)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null) 

(declare-const var2234!1 var2035)
(declare-const var1466!1 String)
(declare-const var1318!1 var764)
(declare-const var2558!1 var2382)
(declare-const var3011!1 Int)
(declare-const var2543!1 var1958)
(declare-const var2398 var1035)
(assert true)
;(assert (declareInternal/-131085874 (cast-from-var2382-to-var1586 var2558!1) var1466!1 (cast-from-var2035-to-var1340 var2234!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3) 

(declare-const var2558!2 var2382)
(declare-const var1466!2 String)
(declare-const var2234!2 var2035)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var3241_checkArgument/1735511034=([boolean], void), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var2382-to-var1586=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var3241_checkState/1431124798=([boolean], void), var2035-init=([], com.google.javascript.jscomp.Var), getVarCount/161871495=([com.google.javascript.jscomp.AbstractScope], int), <init>/773284956=([com.google.javascript.jscomp.Var, java.lang.String, com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope, int, com.google.javascript.jscomp.CompilerInput, com.google.javascript.rhino.Node], void), declareInternal/-131085874=([com.google.javascript.jscomp.AbstractScope, java.lang.String, com.google.javascript.jscomp.AbstractVar], void), cast-from-var2035-to-var1340=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var2382=com.google.javascript.jscomp.Scope, var2558=r1, var1466=r0, var1035=null_type, var764=com.google.javascript.rhino.Node, var1318=r4, var1958=com.google.javascript.jscomp.CompilerInput, var2543=r5, var1638=$z0, var1794=$z1, var3241=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1340=com.google.javascript.jscomp.AbstractVar, var1586=com.google.javascript.jscomp.AbstractScope, var107=$r2, var2765=$z2, var2035=com.google.javascript.jscomp.Var, var2234=$r3, var3011=$i0, var2398=null}
; {com.google.javascript.jscomp.Scope=var2382, r1=var2558, r0=var1466, null_type=var1035, com.google.javascript.rhino.Node=var764, r4=var1318, com.google.javascript.jscomp.CompilerInput=var1958, r5=var2543, $z0=var1638, $z1=var1794, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3241, com.google.javascript.jscomp.AbstractVar=var1340, com.google.javascript.jscomp.AbstractScope=var1586, $r2=var107, $z2=var2765, com.google.javascript.jscomp.Var=var2035, $r3=var2234, $i0=var3011, null=var2398}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.rhino.Node;	r5 := @parameter2: com.google.javascript.jscomp.CompilerInput;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	if $r2 != null goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r3 = new com.google.javascript.jscomp.Var;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>();	specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null);	virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3);	return $r3
;block_num 5