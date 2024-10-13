(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var930 0)
(declare-sort var99 0)
(declare-sort var259 0)
(declare-sort var2623 0)
(declare-sort var372 0)
(declare-sort var3258 0)
(declare-sort var2398 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var372_checkArgument/1735511034 (Bool) void)
(declare-fun getOwnSlot/1483543251 (var2398 String) var3258)
(declare-fun cast-from-var930-to-var2398 (var930) var2398)
(declare-fun var372_checkState/1431124798 (Bool) void)
(declare-fun var2948-init () var2948)
(declare-fun getVarCount/161871495 (var2398) Int)
(declare-fun <init>/773284956 (var2948 String var259 var930 Int var2623 var259) void)
(declare-fun declareInternal/-131085874 (var2398 String var3258) void)
(declare-fun cast-from-var2948-to-var3258 (var2948) var3258)
(declare-const null-var930 var930)
(declare-const null-String String)
(declare-const null-var259 var259)
(declare-const null-var2623 var2623)
(declare-const null-var3258 var3258)
(declare-const null-NullType var99)
(declare-const var1908 var930) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var1908 null-var930)))
(declare-const var263 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var263 null-String)))
(declare-const var3151 var259) ; Statement: r4 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3151 null-var259)))
(declare-const var1184 var2623) ; Statement: r5 := @parameter2: com.google.javascript.jscomp.CompilerInput 
(assert (not (= var1184 null-var2623)))
(assert true)
(define-const var1372 Bool (isEmpty/-1285796103 var263)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1372 1 0) 0))) ; Cond: $z0 != 0 
(define-const var239 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
;(assert (var372_checkArgument/1735511034 var239)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var239!1 Bool)
(assert true)
(define-const var251 var3258 (getOwnSlot/1483543251 (cast-from-var930-to-var2398 var1908) var263)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
 ; Statement: if $r2 != null goto $z2 = 0 
(assert (not (not (= var251 null-var3258)))) ; Negate: Cond: $r2 != null  
(define-const var20 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)] 
(assert true) ; Non Conditional
;(assert (var372_checkState/1431124798 var20)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var20!1 Bool)
(define-const var3342 var2948 var2948-init) ; Statement: $r3 = new com.google.javascript.jscomp.Var 
(assert true)
(define-const var2944 Int (getVarCount/161871495 (cast-from-var930-to-var2398 var1908))) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>() 
(assert true)
;(assert (<init>/773284956 var3342 var263 var3151 var1908 var2944 var1184 null-var259)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null) 

(declare-const var3342!1 var2948)
(declare-const var263!1 String)
(declare-const var3151!1 var259)
(declare-const var1908!1 var930)
(declare-const var2944!1 Int)
(declare-const var1184!1 var2623)
(declare-const var3680 var99)
(assert true)
;(assert (declareInternal/-131085874 (cast-from-var930-to-var2398 var1908!1) var263!1 (cast-from-var2948-to-var3258 var3342!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3) 

(declare-const var1908!2 var930)
(declare-const var263!2 String)
(declare-const var3342!2 var2948)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var372_checkArgument/1735511034=([boolean], void), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var930-to-var2398=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var372_checkState/1431124798=([boolean], void), var2948-init=([], com.google.javascript.jscomp.Var), getVarCount/161871495=([com.google.javascript.jscomp.AbstractScope], int), <init>/773284956=([com.google.javascript.jscomp.Var, java.lang.String, com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope, int, com.google.javascript.jscomp.CompilerInput, com.google.javascript.rhino.Node], void), declareInternal/-131085874=([com.google.javascript.jscomp.AbstractScope, java.lang.String, com.google.javascript.jscomp.AbstractVar], void), cast-from-var2948-to-var3258=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var930=com.google.javascript.jscomp.Scope, var1908=r1, var263=r0, var99=null_type, var259=com.google.javascript.rhino.Node, var3151=r4, var2623=com.google.javascript.jscomp.CompilerInput, var1184=r5, var1372=$z0, var239=$z1, var372=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3258=com.google.javascript.jscomp.AbstractVar, var2398=com.google.javascript.jscomp.AbstractScope, var251=$r2, var20=$z2, var2948=com.google.javascript.jscomp.Var, var3342=$r3, var2944=$i0, var3680=null}
; {com.google.javascript.jscomp.Scope=var930, r1=var1908, r0=var263, null_type=var99, com.google.javascript.rhino.Node=var259, r4=var3151, com.google.javascript.jscomp.CompilerInput=var2623, r5=var1184, $z0=var1372, $z1=var239, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var372, com.google.javascript.jscomp.AbstractVar=var3258, com.google.javascript.jscomp.AbstractScope=var2398, $r2=var251, $z2=var20, com.google.javascript.jscomp.Var=var2948, $r3=var3342, $i0=var2944, null=var3680}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.rhino.Node;	r5 := @parameter2: com.google.javascript.jscomp.CompilerInput;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	if $r2 != null goto $z2 = 0;	$z2 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r3 = new com.google.javascript.jscomp.Var;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>();	specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null);	virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3);	return $r3
;block_num 5