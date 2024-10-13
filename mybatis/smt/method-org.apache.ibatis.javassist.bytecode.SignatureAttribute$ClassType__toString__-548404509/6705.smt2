(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1214 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/-1229499424 (var1214) var1214)
(declare-fun toString2/-1079132869 (var1214 String) String)
(declare-const null-var1214 var1214)
(declare-const var2314 var1214) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType 
(assert (not (= var2314 null-var1214)))
(define-const var3604 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3604)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3604!1 String)
(assert (= var3604!1 ""))
(assert true)
(define-const var1297 var1214 (getDeclaringClass/-1229499424 var2314)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType getDeclaringClass()>() 
 ; Statement: if r2 == null goto $r3 = specialinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String toString2(java.lang.StringBuilder)>($r0) 
(assert (= var1297 null-var1214)) ; Cond: r2 == null 
(assert true)
(define-const var2920 String (toString2/-1079132869 var2314 var3604!1)) ; Statement: $r3 = specialinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String toString2(java.lang.StringBuilder)>($r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/-1229499424=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType), toString2/-1079132869=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, java.lang.StringBuilder], java.lang.String)}
; {var1214=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType, var2314=r1, var3604=$r0, var1297=r2, var2920=$r3}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType=var1214, r1=var2314, $r0=var3604, r2=var1297, $r3=var2920}
;seq <java.lang.StringBuilder: void <init>()>;	<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String toString2(java.lang.StringBuilder)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType getDeclaringClass()>();	if r2 == null goto $r3 = specialinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String toString2(java.lang.StringBuilder)>($r0);	$r3 = specialinvoke r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ClassType: java.lang.String toString2(java.lang.StringBuilder)>($r0);	return $r3
;block_num 2