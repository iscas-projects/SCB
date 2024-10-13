(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2112 0)
(declare-sort var3245 0)
(declare-sort var1385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var1385) String)
(declare-fun cast-from-var2112-to-var1385 (var2112) var1385)
(declare-fun setName/-864781474 (var2112 String) void)
(declare-const null-var2112 var2112)
(declare-const null-String String)
(declare-const var2278 var2112) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var2278 null-var2112)))
(declare-const var2166 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2166 null-String)))
(declare-const var473 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var473 null-String)))
(assert true)
(define-const var2435 String (getName/1611768686 (cast-from-var2112-to-var1385 var2278))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var45 Bool (= var2435 var2166)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void replaceClassName(java.lang.String,java.lang.String)>(r2, r3) 
(assert (not (= (ite var45 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (setName/-864781474 var2278 var473)) ; Statement: virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: void setName(java.lang.String)>(r3) 

(declare-const var2278!1 var2112)
(declare-const var473!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var2112-to-var1385=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), setName/-864781474=([org.apache.ibatis.javassist.CtClassType, java.lang.String], void)}
; {var2112=org.apache.ibatis.javassist.CtClassType, var2278=r0, var2166=r2, var3245=null_type, var473=r3, var1385=org.apache.ibatis.javassist.CtClass, var2435=r1, var45=$z0}
; {org.apache.ibatis.javassist.CtClassType=var2112, r0=var2278, r2=var2166, null_type=var3245, r3=var473, org.apache.ibatis.javassist.CtClass=var1385, r1=var2435, $z0=var45}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void replaceClassName(java.lang.String,java.lang.String)>(r2, r3);	virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: void setName(java.lang.String)>(r3);	goto [?= return];	return
;block_num 3