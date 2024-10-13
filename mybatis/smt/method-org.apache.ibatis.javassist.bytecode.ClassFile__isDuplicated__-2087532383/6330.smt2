(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1372 0)
(declare-sort var1731 0)
(declare-sort var877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1239963277 (var1372) String)
(declare-const null-var1372 var1372)
(declare-const null-String String)
(declare-const null-var877 var877)
(declare-const var2457 var1372) ; Statement: r6 := @parameter0: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var2457 null-var1372)))
(declare-const var2135 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2135 null-String)))
(declare-const var352 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var352 null-String)))
(declare-const var2082 var1372) ; Statement: r0 := @parameter3: org.apache.ibatis.javassist.bytecode.MethodInfo 
(assert (not (= var2082 null-var1372)))
(declare-const var3473 var877) ; Statement: r5 := @parameter4: java.util.ListIterator 
(assert (not (= var3473 null-var877)))
(assert true)
(define-const var1957 String (getName/1239963277 var2082)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>() 
(assert true)
(define-const var3618 Bool (= var1957 var2135)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto r3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>() 
(assert (not (not (= (ite var3618 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1239963277=([org.apache.ibatis.javassist.bytecode.MethodInfo], java.lang.String)}
; {var1372=org.apache.ibatis.javassist.bytecode.MethodInfo, var2457=r6, var2135=r1, var1731=null_type, var352=r4, var2082=r0, var877=java.util.ListIterator, var3473=r5, var1957=$r2, var3618=$z0}
; {org.apache.ibatis.javassist.bytecode.MethodInfo=var1372, r6=var2457, r1=var2135, null_type=var1731, r4=var352, r0=var2082, java.util.ListIterator=var877, r5=var3473, $r2=var1957, $z0=var3618}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @parameter0: org.apache.ibatis.javassist.bytecode.MethodInfo;	r1 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	r0 := @parameter3: org.apache.ibatis.javassist.bytecode.MethodInfo;	r5 := @parameter4: java.util.ListIterator;	$r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto r3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.MethodInfo: java.lang.String getDescriptor()>();	return 0
;block_num 2