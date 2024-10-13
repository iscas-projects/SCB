(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1293 0)
(declare-sort var1557 0)
(declare-sort var2935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isName/-1249361959 (var1293) Bool)
(declare-fun isGetProp/-1072994147 (var1293) Bool)
(declare-fun getFirstChild/2090828207 (var1293) var1293)
(declare-fun var1557_getQualifiedNameThroughCast/99842863 (var1293) String)
(declare-fun getString/-897720134 (var1293) String)
(declare-const null-var1293 var1293)
(declare-const null-String String)
(declare-const var271 var1293) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var271 null-var1293)))
(assert true)
(define-const var3359 Bool (isName/-1249361959 var271)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
(assert (= (ite var3359 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2562 Bool (isGetProp/-1072994147 var271)) ; Statement: $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>() 
(assert (not (= (ite var2562 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
(define-const var3645 var1293 (getFirstChild/2090828207 var271)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>() 
(define-const var3226 String (var1557_getQualifiedNameThroughCast/99842863 var3645)) ; Statement: r8 = staticinvoke <com.google.javascript.jscomp.PolymerBehaviorExtractor: java.lang.String getQualifiedNameThroughCast(com.google.javascript.rhino.Node)>($r3) 
 ; Statement: if r8 != null goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (= var3226 null-String))) ; Cond: r8 != null 
(assert true)
(define-const var321 String (getString/-897720134 var271)) ; Statement: r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(define-const var316 String (str.++ "\u0001.\u0001" var3226 var321)) ; Statement: $r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r8, r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001") 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {isName/-1249361959=([com.google.javascript.rhino.Node], boolean), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), getFirstChild/2090828207=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), var1557_getQualifiedNameThroughCast/99842863=([com.google.javascript.rhino.Node], java.lang.String), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var1293=com.google.javascript.rhino.Node, var271=r0, var3359=$z0, var2562=$z1, var3645=$r3, var1557=com.google.javascript.jscomp.PolymerBehaviorExtractor, var3226=r8, var2935=null_type, var321=r4, var316=$r5}
; {com.google.javascript.rhino.Node=var1293, r0=var271, $z0=var3359, $z1=var2562, $r3=var3645, com.google.javascript.jscomp.PolymerBehaviorExtractor=var1557, r8=var3226, null_type=var2935, r4=var321, $r5=var316}
;seq 
;cnt {}
;stmts r0 := @parameter0: com.google.javascript.rhino.Node;	$z0 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isName()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	$z1 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z1 == 0 goto $z2 = virtualinvoke r0.<com.google.javascript.rhino.Node: boolean isCast()>();	$r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node getFirstChild()>();	r8 = staticinvoke <com.google.javascript.jscomp.PolymerBehaviorExtractor: java.lang.String getQualifiedNameThroughCast(com.google.javascript.rhino.Node)>($r3);	if r8 != null goto r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	r4 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$r5 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String)>(r8, r4) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001.\u0001");	return $r5
;block_num 4