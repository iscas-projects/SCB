(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3218 0)
(declare-sort var1538 0)
(declare-sort var2125 0)
(declare-sort var3355 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPrototype/-220769842 (var3218) var3355)
(declare-fun prototypeSlot/2143097034 (var3218) var2125)
(declare-const null-var3218 var3218)
(declare-const null-String String)
(declare-const var2642 var3218) ; Statement: r2 := @this: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var2642 null-var3218)))
(declare-const var346 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var346 null-String)))
(define-const var1415 String "prototype") ; Statement: $r1 = "prototype" 
(assert true)
(define-const var2369 Bool (= var1415 var346)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: com.google.javascript.rhino.jstype.Property getSlot(java.lang.String)>(r0) 
(assert (not (= (ite var2369 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (getPrototype/-220769842 var2642)) ; Statement: virtualinvoke r2.<com.google.javascript.rhino.jstype.FunctionType: com.google.javascript.rhino.jstype.ObjectType getPrototype()>() 

(declare-const var2642!1 var3218)
(define-const var314 var2125 (prototypeSlot/2143097034 var2642!1)) ; Statement: $r4 = r2.<com.google.javascript.rhino.jstype.FunctionType: com.google.javascript.rhino.jstype.Property prototypeSlot> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getPrototype/-220769842=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.ObjectType), prototypeSlot/2143097034=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.Property)}
; {var3218=com.google.javascript.rhino.jstype.FunctionType, var2642=r2, var346=r0, var1538=null_type, var1415=$r1, var2369=$z0, var2125=com.google.javascript.rhino.jstype.Property, var314=$r4, var3355=com.google.javascript.rhino.jstype.ObjectType}
; {com.google.javascript.rhino.jstype.FunctionType=var3218, r2=var2642, r0=var346, null_type=var1538, $r1=var1415, $z0=var2369, com.google.javascript.rhino.jstype.Property=var2125, $r4=var314, com.google.javascript.rhino.jstype.ObjectType=var3355}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.rhino.jstype.FunctionType;	r0 := @parameter0: java.lang.String;	$r1 = "prototype";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: com.google.javascript.rhino.jstype.Property getSlot(java.lang.String)>(r0);	virtualinvoke r2.<com.google.javascript.rhino.jstype.FunctionType: com.google.javascript.rhino.jstype.ObjectType getPrototype()>();	$r4 = r2.<com.google.javascript.rhino.jstype.FunctionType: com.google.javascript.rhino.jstype.Property prototypeSlot>;	return $r4
;block_num 2