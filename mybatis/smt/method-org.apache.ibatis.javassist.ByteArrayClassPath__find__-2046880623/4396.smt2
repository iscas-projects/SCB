(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var270 0)
(declare-sort var1017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classname/-546390156 (var270) String)
(declare-const null-var270 var270)
(declare-const null-String String)
(declare-const var1056 var270) ; Statement: r0 := @this: org.apache.ibatis.javassist.ByteArrayClassPath 
(assert (not (= var1056 null-var270)))
(declare-const var2325 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2325 null-String)))
(define-const var941 String (classname/-546390156 var1056)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname> 
(assert true)
(define-const var2661 Bool (= var941 var2325)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var2661 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {classname/-546390156=([org.apache.ibatis.javassist.ByteArrayClassPath], java.lang.String)}
; {var270=org.apache.ibatis.javassist.ByteArrayClassPath, var1056=r0, var2325=r1, var1017=null_type, var941=$r2, var2661=$z0}
; {org.apache.ibatis.javassist.ByteArrayClassPath=var270, r0=var1056, r1=var2325, null_type=var1017, $r2=var941, $z0=var2661}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.ByteArrayClassPath;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2