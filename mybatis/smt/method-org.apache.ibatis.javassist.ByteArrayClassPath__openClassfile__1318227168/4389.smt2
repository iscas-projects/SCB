(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1385 0)
(declare-sort var2487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classname/-546390156 (var1385) String)
(declare-const null-var1385 var1385)
(declare-const null-String String)
(declare-const var3057 var1385) ; Statement: r0 := @this: org.apache.ibatis.javassist.ByteArrayClassPath 
(assert (not (= var3057 null-var1385)))
(declare-const var1443 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1443 null-String)))
(define-const var2637 String (classname/-546390156 var3057)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname> 
(assert true)
(define-const var783 Bool (= var2637 var1443)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var783 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {classname/-546390156=([org.apache.ibatis.javassist.ByteArrayClassPath], java.lang.String)}
; {var1385=org.apache.ibatis.javassist.ByteArrayClassPath, var3057=r0, var1443=r1, var2487=null_type, var2637=$r2, var783=$z0}
; {org.apache.ibatis.javassist.ByteArrayClassPath=var1385, r0=var3057, r1=var1443, null_type=var2487, $r2=var2637, $z0=var783}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.ByteArrayClassPath;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.javassist.ByteArrayClassPath: java.lang.String classname>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2