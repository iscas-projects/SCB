(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort var1888 0)
(declare-sort var1761 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var1761) String)
(declare-fun cast-from-var1287-to-var1761 (var1287) var1761)
(declare-const null-var1287 var1287)
(declare-const null-String String)
(declare-const var2079 var1287) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var2079 null-var1287)))
(declare-const var3809 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3809 null-String)))
(assert true)
(define-const var576 String (getName/1611768686 (cast-from-var1287-to-var1761 var2079))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var2405 Bool (= var3809 var576)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool> 
(assert (not (= (ite var2405 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var1287-to-var1761=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass)}
; {var1287=org.apache.ibatis.javassist.CtClassType, var2079=r0, var3809=r2, var1888=null_type, var1761=org.apache.ibatis.javassist.CtClass, var576=r1, var2405=$z0}
; {org.apache.ibatis.javassist.CtClassType=var1287, r0=var2079, r2=var3809, null_type=var1888, org.apache.ibatis.javassist.CtClass=var1761, r1=var576, $z0=var2405}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r2 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool>;	return
;block_num 2