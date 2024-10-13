(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2190 0)
(declare-sort var2493 0)
(declare-sort var3355 0)
(declare-sort var1401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSlot/1514511292 (var1401 String) var3355)
(declare-fun cast-from-var2190-to-var1401 (var2190) var1401)
(declare-const null-var2190 var2190)
(declare-const null-String String)
(declare-const var1377 var2190) ; Statement: r2 := @this: com.google.javascript.rhino.jstype.FunctionType 
(assert (not (= var1377 null-var2190)))
(declare-const var3639 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3639 null-String)))
(define-const var491 String "prototype") ; Statement: $r1 = "prototype" 
(assert true)
(define-const var1048 Bool (= var491 var3639)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: com.google.javascript.rhino.jstype.Property getSlot(java.lang.String)>(r0) 
(assert (= (ite var1048 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3259 var3355 (getSlot/1514511292 (cast-from-var2190-to-var1401 var1377) var3639)) ; Statement: $r3 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: com.google.javascript.rhino.jstype.Property getSlot(java.lang.String)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getSlot/1514511292=([com.google.javascript.rhino.jstype.ObjectType, java.lang.String], com.google.javascript.rhino.jstype.Property), cast-from-var2190-to-var1401=([com.google.javascript.rhino.jstype.FunctionType], com.google.javascript.rhino.jstype.ObjectType)}
; {var2190=com.google.javascript.rhino.jstype.FunctionType, var1377=r2, var3639=r0, var2493=null_type, var491=$r1, var1048=$z0, var3355=com.google.javascript.rhino.jstype.Property, var1401=com.google.javascript.rhino.jstype.ObjectType, var3259=$r3}
; {com.google.javascript.rhino.jstype.FunctionType=var2190, r2=var1377, r0=var3639, null_type=var2493, $r1=var491, $z0=var1048, com.google.javascript.rhino.jstype.Property=var3355, com.google.javascript.rhino.jstype.ObjectType=var1401, $r3=var3259}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.rhino.jstype.FunctionType;	r0 := @parameter0: java.lang.String;	$r1 = "prototype";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: com.google.javascript.rhino.jstype.Property getSlot(java.lang.String)>(r0);	$r3 = specialinvoke r2.<com.google.javascript.rhino.jstype.PrototypeObjectType: com.google.javascript.rhino.jstype.Property getSlot(java.lang.String)>(r0);	return $r3
;block_num 2