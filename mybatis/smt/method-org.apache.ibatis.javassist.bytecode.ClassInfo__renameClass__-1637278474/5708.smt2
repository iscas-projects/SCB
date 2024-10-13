(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1111 0)
(declare-sort var2184 0)
(declare-sort var2895 0)
(declare-sort var589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-68463819 (var1111) Int)
(declare-fun getUtf8Info/465512870 (var2184 Int) String)
(declare-const null-var1111 var1111)
(declare-const null-var2184 var2184)
(declare-const null-String String)
(declare-const null-var589 var589)
(declare-const var2852 var1111) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.ClassInfo 
(assert (not (= var2852 null-var1111)))
(declare-const var403 var2184) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool 
(assert (not (= var403 null-var2184)))
(declare-const var774 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var774 null-String)))
(declare-const var1674 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1674 null-String)))
(declare-const var2227 var589) ; Statement: r4 := @parameter3: java.util.Map 
(assert (not (= var2227 null-var589)))
(define-const var1150 Int (name/-68463819 var2852)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.ClassInfo: int name> 
(assert true)
(define-const var2129 String (getUtf8Info/465512870 var403 var1150)) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i0) 
(define-const var1308 String null-String) ; Statement: r7 = null 
(assert true)
(define-const var1341 Bool (= var2129 var774)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var1341 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1308!1 String var1674) ; Statement: r7 = r5 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if r7 == null goto return 
(assert (= var1308!1 null-String)) ; Cond: r7 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-68463819=([org.apache.ibatis.javassist.bytecode.ClassInfo], int), getUtf8Info/465512870=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String)}
; {var1111=org.apache.ibatis.javassist.bytecode.ClassInfo, var2852=r1, var2184=org.apache.ibatis.javassist.bytecode.ConstPool, var403=r0, var774=r3, var2895=null_type, var1674=r5, var589=java.util.Map, var2227=r4, var1150=$i0, var2129=r2, var1308=r7, var1341=$z0}
; {org.apache.ibatis.javassist.bytecode.ClassInfo=var1111, r1=var2852, org.apache.ibatis.javassist.bytecode.ConstPool=var2184, r0=var403, r3=var774, null_type=var2895, r5=var1674, java.util.Map=var589, r4=var2227, $i0=var1150, r2=var2129, r7=var1308, $z0=var1341}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.ClassInfo;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.ConstPool;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	r4 := @parameter3: java.util.Map;	$i0 = r1.<org.apache.ibatis.javassist.bytecode.ClassInfo: int name>;	r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>($i0);	r7 = null;	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $c1 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	r7 = r5;	goto [?= (branch)];	if r7 == null goto return;	return
;block_num 4