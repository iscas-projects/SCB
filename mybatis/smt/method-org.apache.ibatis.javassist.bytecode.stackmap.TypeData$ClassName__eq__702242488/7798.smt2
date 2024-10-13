(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var1983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isUninit/-470449661 (var1983) Bool)
(declare-fun name/2063801132 (var851) String)
(declare-fun getName/-419843896 (var1983) String)
(declare-const null-var851 var851)
(declare-const null-var1983 var1983)
(declare-const var1855 var851) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName 
(assert (not (= var1855 null-var851)))
(declare-const var3412 var1983) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData 
(assert (not (= var3412 null-var1983)))
(assert true)
(define-const var3619 Bool (isUninit/-470449661 var3412)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: boolean isUninit()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName: java.lang.String name> 
(assert (= (ite var3619 1 0) 0)) ; Cond: $z0 == 0 
(define-const var850 String (name/2063801132 var1855)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName: java.lang.String name> 
(assert true)
(define-const var3534 String (getName/-419843896 var3412)) ; Statement: $r3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String getName()>() 
(assert true)
(define-const var338 Bool (= var850 var3534)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {isUninit/-470449661=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData], boolean), name/2063801132=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName], java.lang.String), getName/-419843896=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData], java.lang.String)}
; {var851=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName, var1855=r1, var1983=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var3412=r0, var3619=$z0, var850=$r2, var3534=$r3, var338=$z1}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName=var851, r1=var1855, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var1983, r0=var3412, $z0=var3619, $r2=var850, $r3=var3534, $z1=var338}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: boolean isUninit()>();	if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName: java.lang.String name>;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName: java.lang.String name>;	$r3 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String getName()>();	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z1
;block_num 2