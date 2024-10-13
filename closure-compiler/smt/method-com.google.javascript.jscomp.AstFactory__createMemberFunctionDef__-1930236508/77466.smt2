(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3603 0)
(declare-sort var826 0)
(declare-sort var3186 0)
(declare-sort var2762 0)
(declare-sort var2916 0)
(declare-sort var3226 0)
(declare-sort var1127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getFirstChild/2090828207 (var3186) var3186)
(declare-fun getString/-897720134 (var3186) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2762_checkArgument/-972017905 (Bool var2916) void)
(declare-fun cast-from-var3186-to-var2916 (var3186) var2916)
(declare-fun var3226_memberFunctionDef/-684108593 (String var3186) var3186)
(declare-fun var3603_type/184057888 (var3186) var1127)
(declare-fun setJSTypeOrColor/2040789197 (var3603 var1127 var3186) void)
(declare-const null-var3603 var3603)
(declare-const null-String String)
(declare-const null-var3186 var3186)
(declare-const var2039 var3603) ; Statement: r5 := @this: com.google.javascript.jscomp.AstFactory 
(assert (not (= var2039 null-var3603)))
(declare-const var2898 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2898 null-String)))
(declare-const var370 var3186) ; Statement: r0 := @parameter1: com.google.javascript.rhino.Node 
(assert (not (= var370 null-var3186)))
(assert true)
(define-const var1773 var3186 (getFirstChild/2090828207 var370)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(assert true)
(define-const var335 String (getString/-897720134 var1773)) ; Statement: $r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2070 Bool (isEmpty/-1285796103 var335)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
;(assert (var2762_checkArgument/-972017905 var2070 (cast-from-var3186-to-var2916 var370))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0) 

(declare-const var2070!1 Bool)
(declare-const var370!1 var3186)
(define-const var2427 var3186 (var3226_memberFunctionDef/-684108593 var2898 var370!1)) ; Statement: r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node memberFunctionDef(java.lang.String,com.google.javascript.rhino.Node)>(r3, r0) 
(define-const var668 var1127 (var3603_type/184057888 var370!1)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.AstFactory: com.google.javascript.jscomp.AstFactory$Type type(com.google.javascript.rhino.Node)>(r0) 
(assert true)
;(assert (setJSTypeOrColor/2040789197 var2039 var668 var2427)) ; Statement: virtualinvoke r5.<com.google.javascript.jscomp.AstFactory: void setJSTypeOrColor(com.google.javascript.jscomp.AstFactory$Type,com.google.javascript.rhino.Node)>($r6, r4) 

(declare-const var2039!1 var3603)
(declare-const var668!1 var1127)
(declare-const var2427!1 var3186)
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var2762_checkArgument/-972017905=([boolean, java.lang.Object], void), cast-from-var3186-to-var2916=([com.google.javascript.rhino.Node], java.lang.Object), var3226_memberFunctionDef/-684108593=([java.lang.String, com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var3603_type/184057888=([com.google.javascript.rhino.Node], com.google.javascript.jscomp.AstFactory$Type), setJSTypeOrColor/2040789197=([com.google.javascript.jscomp.AstFactory, com.google.javascript.jscomp.AstFactory$Type, com.google.javascript.rhino.Node], void)}
; {var3603=com.google.javascript.jscomp.AstFactory, var2039=r5, var2898=r3, var826=null_type, var3186=com.google.javascript.rhino.Node, var370=r0, var1773=$r1, var335=$r2, var2070=$z0, var2762=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2916=java.lang.Object, var3226=com.google.javascript.rhino.IR, var2427=r4, var1127=com.google.javascript.jscomp.AstFactory$Type, var668=$r6}
; {com.google.javascript.jscomp.AstFactory=var3603, r5=var2039, r3=var2898, null_type=var826, com.google.javascript.rhino.Node=var3186, r0=var370, $r1=var1773, $r2=var335, $z0=var2070, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2762, java.lang.Object=var2916, com.google.javascript.rhino.IR=var3226, r4=var2427, com.google.javascript.jscomp.AstFactory$Type=var1127, $r6=var668}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.AstFactory;	r3 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.rhino.Node;	$r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	$r2 = virtualinvoke $r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean,java.lang.Object)>($z0, r0);	r4 = staticinvoke <com.google.javascript.rhino.IR: com.google.javascript.rhino.Node memberFunctionDef(java.lang.String,com.google.javascript.rhino.Node)>(r3, r0);	$r6 = staticinvoke <com.google.javascript.jscomp.AstFactory: com.google.javascript.jscomp.AstFactory$Type type(com.google.javascript.rhino.Node)>(r0);	virtualinvoke r5.<com.google.javascript.jscomp.AstFactory: void setJSTypeOrColor(com.google.javascript.jscomp.AstFactory$Type,com.google.javascript.rhino.Node)>($r6, r4);	return r4
;block_num 1