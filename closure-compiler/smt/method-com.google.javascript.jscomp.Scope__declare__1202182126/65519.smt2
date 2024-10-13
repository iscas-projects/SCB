(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1487 0)
(declare-sort var376 0)
(declare-sort var894 0)
(declare-sort var3527 0)
(declare-sort var2292 0)
(declare-sort var1001 0)
(declare-sort var2354 0)
(declare-sort var1725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2292_checkArgument/1735511034 (Bool) void)
(declare-fun getOwnSlot/1483543251 (var2354 String) var1001)
(declare-fun cast-from-var1487-to-var2354 (var1487) var2354)
(declare-fun var2292_checkState/1431124798 (Bool) void)
(declare-fun var1725-init () var1725)
(declare-fun getVarCount/161871495 (var2354) Int)
(declare-fun <init>/773284956 (var1725 String var894 var1487 Int var3527 var894) void)
(declare-fun declareInternal/-131085874 (var2354 String var1001) void)
(declare-fun cast-from-var1725-to-var1001 (var1725) var1001)
(declare-const null-var1487 var1487)
(declare-const null-String String)
(declare-const null-var894 var894)
(declare-const null-var3527 var3527)
(declare-const null-var1001 var1001)
(declare-const null-NullType var376)
(declare-const var1738 var1487) ; Statement: r1 := @this: com.google.javascript.jscomp.Scope 
(assert (not (= var1738 null-var1487)))
(declare-const var3354 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3354 null-String)))
(declare-const var3843 var894) ; Statement: r4 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var3843 null-var894)))
(declare-const var3671 var3527) ; Statement: r5 := @parameter2: com.google.javascript.jscomp.CompilerInput 
(assert (not (= var3671 null-var3527)))
(assert true)
(define-const var1482 Bool (isEmpty/-1285796103 var3354)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var1482 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var328 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)] 
(assert true) ; Non Conditional
;(assert (var2292_checkArgument/1735511034 var328)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1) 

(declare-const var328!1 Bool)
(assert true)
(define-const var2050 var1001 (getOwnSlot/1483543251 (cast-from-var1487-to-var2354 var1738) var3354)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0) 
 ; Statement: if $r2 != null goto $z2 = 0 
(assert (not (= var2050 null-var1001))) ; Cond: $r2 != null 
(define-const var529 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
;(assert (var2292_checkState/1431124798 var529)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2) 

(declare-const var529!1 Bool)
(define-const var3213 var1725 var1725-init) ; Statement: $r3 = new com.google.javascript.jscomp.Var 
(assert true)
(define-const var1356 Int (getVarCount/161871495 (cast-from-var1487-to-var2354 var1738))) ; Statement: $i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>() 
(assert true)
;(assert (<init>/773284956 var3213 var3354 var3843 var1738 var1356 var3671 null-var894)) ; Statement: specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null) 

(declare-const var3213!1 var1725)
(declare-const var3354!1 String)
(declare-const var3843!1 var894)
(declare-const var1738!1 var1487)
(declare-const var1356!1 Int)
(declare-const var3671!1 var3527)
(declare-const var2565 var376)
(assert true)
;(assert (declareInternal/-131085874 (cast-from-var1487-to-var2354 var1738!1) var3354!1 (cast-from-var1725-to-var1001 var3213!1))) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3) 

(declare-const var1738!2 var1487)
(declare-const var3354!2 String)
(declare-const var3213!2 var1725)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var2292_checkArgument/1735511034=([boolean], void), getOwnSlot/1483543251=([com.google.javascript.jscomp.AbstractScope, java.lang.String], com.google.javascript.jscomp.AbstractVar), cast-from-var1487-to-var2354=([com.google.javascript.jscomp.Scope], com.google.javascript.jscomp.AbstractScope), var2292_checkState/1431124798=([boolean], void), var1725-init=([], com.google.javascript.jscomp.Var), getVarCount/161871495=([com.google.javascript.jscomp.AbstractScope], int), <init>/773284956=([com.google.javascript.jscomp.Var, java.lang.String, com.google.javascript.rhino.Node, com.google.javascript.jscomp.Scope, int, com.google.javascript.jscomp.CompilerInput, com.google.javascript.rhino.Node], void), declareInternal/-131085874=([com.google.javascript.jscomp.AbstractScope, java.lang.String, com.google.javascript.jscomp.AbstractVar], void), cast-from-var1725-to-var1001=([com.google.javascript.jscomp.Var], com.google.javascript.jscomp.AbstractVar)}
; {var1487=com.google.javascript.jscomp.Scope, var1738=r1, var3354=r0, var376=null_type, var894=com.google.javascript.rhino.Node, var3843=r4, var3527=com.google.javascript.jscomp.CompilerInput, var3671=r5, var1482=$z0, var328=$z1, var2292=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1001=com.google.javascript.jscomp.AbstractVar, var2354=com.google.javascript.jscomp.AbstractScope, var2050=$r2, var529=$z2, var1725=com.google.javascript.jscomp.Var, var3213=$r3, var1356=$i0, var2565=null}
; {com.google.javascript.jscomp.Scope=var1487, r1=var1738, r0=var3354, null_type=var376, com.google.javascript.rhino.Node=var894, r4=var3843, com.google.javascript.jscomp.CompilerInput=var3527, r5=var3671, $z0=var1482, $z1=var328, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2292, com.google.javascript.jscomp.AbstractVar=var1001, com.google.javascript.jscomp.AbstractScope=var2354, $r2=var2050, $z2=var529, com.google.javascript.jscomp.Var=var1725, $r3=var3213, $i0=var1356, null=var2565}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Scope;	r0 := @parameter0: java.lang.String;	r4 := @parameter1: com.google.javascript.rhino.Node;	r5 := @parameter2: com.google.javascript.jscomp.CompilerInput;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: com.google.javascript.jscomp.AbstractVar getOwnSlot(java.lang.String)>(r0);	if $r2 != null goto $z2 = 0;	$z2 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkState(boolean)>($z2);	$r3 = new com.google.javascript.jscomp.Var;	$i0 = virtualinvoke r1.<com.google.javascript.jscomp.Scope: int getVarCount()>();	specialinvoke $r3.<com.google.javascript.jscomp.Var: void <init>(java.lang.String,com.google.javascript.rhino.Node,com.google.javascript.jscomp.Scope,int,com.google.javascript.jscomp.CompilerInput,com.google.javascript.rhino.Node)>(r0, r4, r1, $i0, r5, null);	virtualinvoke r1.<com.google.javascript.jscomp.Scope: void declareInternal(java.lang.String,com.google.javascript.jscomp.AbstractVar)>(r0, $r3);	return $r3
;block_num 5