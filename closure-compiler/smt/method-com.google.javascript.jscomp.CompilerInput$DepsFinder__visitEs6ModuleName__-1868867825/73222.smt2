(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1983 0)
(declare-sort var962 0)
(declare-sort var1585 0)
(declare-sort var629 0)
(declare-sort var3381 0)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isStringLit/305832528 (var962) Bool)
(declare-fun var1585_checkArgument/1735511034 (Bool) void)
(declare-fun isExport/1195543632 (var962) Bool)
(declare-fun getString/-897720134 (var962) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun requires/1508785184 (var1983) var629)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3381_googRequireSymbol/1856038421 (String) var3381)
(declare-fun var629_add/328494887 (var629 var347) Bool)
(declare-fun cast-from-var3381-to-var347 (var3381) var347)
(declare-const null-var1983 var1983)
(declare-const null-var962 var962)
(declare-const var1671 var1983) ; Statement: r2 := @this: com.google.javascript.jscomp.CompilerInput$DepsFinder 
(assert (not (= var1671 null-var1983)))
(declare-const var3058 var962) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var3058 null-var962)))
(declare-const var2781 var962) ; Statement: r1 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var2781 null-var962)))
(assert true)
(define-const var3841 Bool (isStringLit/305832528 var3058)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>() 
;(assert (var1585_checkArgument/1735511034 var3841)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0) 

(declare-const var3841!1 Bool)
(assert true)
(define-const var3075 Bool (isExport/1195543632 var2781)) ; Statement: $z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isExport()>() 
 ; Statement: if $z1 != 0 goto $z4 = 1 
(assert (not (= (ite var3075 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3743 Bool (ite (= 1 1) true false)) ; Statement: $z4 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z4)] 
(assert true) ; Non Conditional
;(assert (var1585_checkArgument/1735511034 var3743)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z4) 

(declare-const var3743!1 Bool)
(assert true)
(define-const var1656 String (getString/-897720134 var3058)) ; Statement: $r14 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var632 Bool (startsWith/-1785782452 var1656 "goog:")) ; Statement: $z2 = virtualinvoke $r14.<java.lang.String: boolean startsWith(java.lang.String)>("goog:") 
 ; Statement: if $z2 == 0 goto $r4 = r2.<com.google.javascript.jscomp.CompilerInput$DepsFinder: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath> 
(assert (not (= (ite var632 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2206 var629 (requires/1508785184 var1671)) ; Statement: $r11 = r2.<com.google.javascript.jscomp.CompilerInput$DepsFinder: java.util.List requires> 
(assert (and true (and (>= 5 0) (>= (str.len var1656) 5))))
(define-const var981 String (substring/850833817 var1656 5)) ; Statement: $r12 = virtualinvoke $r14.<java.lang.String: java.lang.String substring(int)>(5) 
(define-const var2165 var3381 (var3381_googRequireSymbol/1856038421 var981)) ; Statement: $r13 = staticinvoke <com.google.javascript.jscomp.deps.DependencyInfo$Require: com.google.javascript.jscomp.deps.DependencyInfo$Require googRequireSymbol(java.lang.String)>($r12) 
;(assert (var629_add/328494887 var2206 (cast-from-var3381-to-var347 var2165))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var2206!1 var629)
(declare-const var2165!1 var3381)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isStringLit/305832528=([com.google.javascript.rhino.Node], boolean), var1585_checkArgument/1735511034=([boolean], void), isExport/1195543632=([com.google.javascript.rhino.Node], boolean), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), requires/1508785184=([com.google.javascript.jscomp.CompilerInput$DepsFinder], java.util.List), substring/850833817=([java.lang.String, int], java.lang.String), var3381_googRequireSymbol/1856038421=([java.lang.String], com.google.javascript.jscomp.deps.DependencyInfo$Require), var629_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3381-to-var347=([com.google.javascript.jscomp.deps.DependencyInfo$Require], java.lang.Object)}
; {var1983=com.google.javascript.jscomp.CompilerInput$DepsFinder, var1671=r2, var962=com.google.javascript.rhino.Node, var3058=r0, var2781=r1, var3841=$z0, var1585=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3075=$z1, var3743=$z4, var1656=$r14, var632=$z2, var629=java.util.List, var2206=$r11, var981=$r12, var3381=com.google.javascript.jscomp.deps.DependencyInfo$Require, var2165=$r13, var347=java.lang.Object}
; {com.google.javascript.jscomp.CompilerInput$DepsFinder=var1983, r2=var1671, com.google.javascript.rhino.Node=var962, r0=var3058, r1=var2781, $z0=var3841, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1585, $z1=var3075, $z4=var3743, $r14=var1656, $z2=var632, java.util.List=var629, $r11=var2206, $r12=var981, com.google.javascript.jscomp.deps.DependencyInfo$Require=var3381, $r13=var2165, java.lang.Object=var347}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.CompilerInput$DepsFinder;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isStringLit()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z0);	$z1 = virtualinvoke r1.<com.google.javascript.rhino.Node: boolean isExport()>();	if $z1 != 0 goto $z4 = 1;	$z4 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z4)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z4);	$r14 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z2 = virtualinvoke $r14.<java.lang.String: boolean startsWith(java.lang.String)>("goog:");	if $z2 == 0 goto $r4 = r2.<com.google.javascript.jscomp.CompilerInput$DepsFinder: com.google.javascript.jscomp.deps.ModuleLoader$ModulePath modulePath>;	$r11 = r2.<com.google.javascript.jscomp.CompilerInput$DepsFinder: java.util.List requires>;	$r12 = virtualinvoke $r14.<java.lang.String: java.lang.String substring(int)>(5);	$r13 = staticinvoke <com.google.javascript.jscomp.deps.DependencyInfo$Require: com.google.javascript.jscomp.deps.DependencyInfo$Require googRequireSymbol(java.lang.String)>($r12);	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r13);	return
;block_num 4