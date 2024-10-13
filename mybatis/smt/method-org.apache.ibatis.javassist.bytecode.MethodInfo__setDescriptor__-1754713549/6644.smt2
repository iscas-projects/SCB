(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var185 0)
(declare-sort var2093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescriptor/241025769 (var185) String)
(declare-const null-var185 var185)
(declare-const null-String String)
(declare-const var1822 var185) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var1822 null-var185)))
(declare-const var3802 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3802 null-String)))
(assert true)
(define-const var3392 String (getDescriptor/241025769 var1822)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert true)
(define-const var1859 Bool (= var3802 var3392)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1859 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescriptor/241025769=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String)}
; {var185=org.apache.ibatis.javassist.bytecode.MethodInfo, var1822=r1, var3802=r0, var2093=null_type, var3392=$r2, var1859=$z0}
; {org.apache.ibatis.javassist.bytecode.MethodInfo=var185, r1=var1822, r0=var3802, null_type=var2093, $r2=var3392, $z0=var1859}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.MethodInfo;	r0 := @parameter0: java.lang.String;	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto return;	return
;block_num 2