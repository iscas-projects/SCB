(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1889 0)
(declare-sort var3489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isUninit/-470449661 (var3489) Bool)
(declare-fun getName/-419843896 (var3489) String)
(declare-fun cast-from-var1889-to-var3489 (var1889) var3489)
(declare-const null-var1889 var1889)
(declare-const null-var3489 var3489)
(declare-const var642 var1889) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar 
(assert (not (= var642 null-var1889)))
(declare-const var1689 var3489) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData 
(assert (not (= var1689 null-var3489)))
(assert true)
(define-const var1231 Bool (isUninit/-470449661 var1689)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: boolean isUninit()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String getName()>() 
(assert (= (ite var1231 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2576 String (getName/-419843896 (cast-from-var1889-to-var3489 var642))) ; Statement: $r3 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String getName()>() 
(assert true)
(define-const var360 String (getName/-419843896 var1689)) ; Statement: $r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String getName()>() 
(assert true)
(define-const var3954 Bool (= var2576 var360)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {isUninit/-470449661=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData], boolean), getName/-419843896=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData], java.lang.String), cast-from-var1889-to-var3489=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar], org.apache.ibatis.javassist.bytecode.stackmap.TypeData)}
; {var1889=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar, var642=r1, var3489=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var1689=r0, var1231=$z0, var2576=$r3, var360=$r2, var3954=$z1}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar=var1889, r1=var642, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var3489, r0=var1689, $z0=var1231, $r3=var2576, $r2=var360, $z1=var3954}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar;	r0 := @parameter0: org.apache.ibatis.javassist.bytecode.stackmap.TypeData;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: boolean isUninit()>();	if $z0 == 0 goto $r3 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String getName()>();	$r3 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String getName()>();	$r2 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String getName()>();	$z1 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z1
;block_num 2