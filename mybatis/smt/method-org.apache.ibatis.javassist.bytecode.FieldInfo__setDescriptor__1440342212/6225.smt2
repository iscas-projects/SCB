(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1141 0)
(declare-sort var3303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/-1085906438 (var1141) String)
(declare-const null-var1141 var1141)
(declare-const null-String String)
(declare-const var3151 var1141) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.FieldInfo 
(assert (not (= var3151 null-var1141)))
(declare-const var1421 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1421 null-String)))
(assert true)
(define-const var975 String (getDescriptor/-1085906438 var3151)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1967 Bool (= var1421 var975)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1967 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/-1085906438=([org.apache.ibatis.javassist.bytecode.FieldInfo], java.lang.String)}
; {var1141=org.apache.ibatis.javassist.bytecode.FieldInfo, var3151=r1, var1421=r0, var3303=null_type, var975=$r2, var1967=$z0}
; {org.apache.ibatis.javassist.bytecode.FieldInfo=var1141, r1=var3151, r0=var1421, null_type=var3303, $r2=var975, $z0=var1967}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.FieldInfo;	r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.FieldInfo: java.lang.String getDescriptor()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto return;	return
;block_num 2