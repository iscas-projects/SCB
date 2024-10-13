(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1027 0)
(declare-sort var3370 0)
(declare-sort var1348 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var1348) String)
(declare-fun value/-966698194 (var1027) String)
(declare-fun addStringInfo/-291893853 (var3370 String) Int)
(declare-const null-var1027 var1027)
(declare-const null-var3370 var3370)
(declare-const null-var1348 var1348)
(declare-const var344 var1027) ; Statement: r3 := @this: org.apache.ibatis.javassist.CtField$StringInitializer 
(assert (not (= var344 null-var1027)))
(declare-const var642 var3370) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var642 null-var3370)))
(declare-const var1948 var1348) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1948 null-var1348)))
(assert true)
(define-const var2101 String (getName/1611768686 var1948)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var1503 Bool (= var2101 "java.lang.String")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String") 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1503 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3928 String (value/-966698194 var344)) ; Statement: $r4 = r3.<org.apache.ibatis.javassist.CtField$StringInitializer: java.lang.String value> 
(assert true)
(define-const var2175 Int (addStringInfo/-291893853 var642 var3928)) ; Statement: $i0 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.ConstPool: int addStringInfo(java.lang.String)>($r4) 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), value/-966698194=([org.apache.ibatis.javassist.CtField$StringInitializer], java.lang.String), addStringInfo/-291893853=([org.apache.ibatis.javassist.bytecode.ConstPool, java.lang.String], int)}
; {var1027=org.apache.ibatis.javassist.CtField$StringInitializer, var344=r3, var3370=org.apache.ibatis.javassist.bytecode.ConstPool, var642=r2, var1348=org.apache.ibatis.javassist.CtClass, var1948=r0, var2101=$r1, var1503=$z0, var3928=$r4, var2175=$i0}
; {org.apache.ibatis.javassist.CtField$StringInitializer=var1027, r3=var344, org.apache.ibatis.javassist.bytecode.ConstPool=var3370, r2=var642, org.apache.ibatis.javassist.CtClass=var1348, r0=var1948, $r1=var2101, $z0=var1503, $r4=var3928, $i0=var2175}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.javassist.CtField$StringInitializer;	r2 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	r0 := @parameter1: org.apache.ibatis.javassist.CtClass;	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("java.lang.String");	if $z0 == 0 goto return 0;	$r4 = r3.<org.apache.ibatis.javassist.CtField$StringInitializer: java.lang.String value>;	$i0 = virtualinvoke r2.<org.apache.ibatis.javassist.bytecode.ConstPool: int addStringInfo(java.lang.String)>($r4);	return $i0
;block_num 2