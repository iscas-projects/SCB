(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var399 0)
(declare-sort var3267 0)
(declare-sort var3356 0)
(declare-sort var2718 0)
(declare-sort var2288 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defineProperty/-1881599797 (var2288 String var3356 Bool var2718) Bool)
(declare-fun cast-from-var399-to-var2288 (var399) var2288)
(declare-const null-var399 var399)
(declare-const null-String String)
(declare-const null-var3356 var3356)
(declare-const null-Bool Bool)
(declare-const null-var2718 var2718)
(declare-const var2090 var399) ; Statement: r2 := @this: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var2090 null-var399)))
(declare-const var966 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var966 null-String)))
(declare-const var3526 var3356) ; Statement: r3 := @parameter1: com.google.javascript.rhino.jstype.JSType 
(assert (not (= var3526 null-var3356)))
(declare-const var1761 Bool) ; Statement: z1 := @parameter2: boolean 
(assert (not (= var1761 null-Bool)))
(declare-const var3987 var2718) ; Statement: r4 := @parameter3: com.google.javascript.rhino.Node 
(assert (not (= var3987 null-var2718)))
(define-const var843 String "prototype") ; Statement: $r1 = "prototype" 
(assert true)
(define-const var2860 Bool (= var843 var966)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z2 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: boolean defineProperty(java.lang.String,com.google.javascript.rhino.jstype.JSType,boolean,com.google.javascript.rhino.Node)>(r0, r3, z1, r4) 
(assert (= (ite var2860 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var715 Bool (defineProperty/-1881599797 (cast-from-var399-to-var2288 var2090) var966 var3526 var1761 var3987)) ; Statement: $z2 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: boolean defineProperty(java.lang.String,com.google.javascript.rhino.jstype.JSType,boolean,com.google.javascript.rhino.Node)>(r0, r3, z1, r4) 
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {defineProperty/-1881599797=([com.google.javascript.rhino.jstype.PrototypeObjectType, java.lang.String, com.google.javascript.rhino.jstype.JSType, boolean, com.google.javascript.rhino.Node], boolean), cast-from-var399-to-var2288=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.PrototypeObjectType)}
; {var399=com.google.javascript.rhino.jstype.FunctionType, var2090=r2, var966=r0, var3267=null_type, var3356=com.google.javascript.rhino.jstype.JSType, var3526=r3, var1761=z1, var2718=com.google.javascript.rhino.Node, var3987=r4, var843=$r1, var2860=$z0, var2288=com.google.javascript.rhino.jstype.PrototypeObjectType, var715=$z2}
; {com.google.javascript.rhino.jstype.FunctionType=var399, r2=var2090, r0=var966, null_type=var3267, com.google.javascript.rhino.jstype.JSType=var3356, r3=var3526, z1=var1761, com.google.javascript.rhino.Node=var2718, r4=var3987, $r1=var843, $z0=var2860, com.google.javascript.rhino.jstype.PrototypeObjectType=var2288, $z2=var715}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.rhino.jstype.FunctionType;	r0 := @parameter0: java.lang.String;	r3 := @parameter1: com.google.javascript.rhino.jstype.JSType;	z1 := @parameter2: boolean;	r4 := @parameter3: com.google.javascript.rhino.Node;	$r1 = "prototype";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z2 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: boolean defineProperty(java.lang.String,com.google.javascript.rhino.jstype.JSType,boolean,com.google.javascript.rhino.Node)>(r0, r3, z1, r4);	$z2 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: boolean defineProperty(java.lang.String,com.google.javascript.rhino.jstype.JSType,boolean,com.google.javascript.rhino.Node)>(r0, r3, z1, r4);	return $z2
;block_num 2