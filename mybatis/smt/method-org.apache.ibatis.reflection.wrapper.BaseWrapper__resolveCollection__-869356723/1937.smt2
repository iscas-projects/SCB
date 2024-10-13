(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1816 0)
(declare-sort var3811 0)
(declare-sort var1407 0)
(declare-sort var1043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1907289949 (var3811) String)
(declare-fun metaObject/1486864166 (var1816) var1043)
(declare-fun getValue/480890313 (var1043 String) var1407)
(declare-const null-var1816 var1816)
(declare-const null-var3811 var3811)
(declare-const null-var1407 var1407)
(declare-const var1737 var1816) ; Statement: r3 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper 
(assert (not (= var1737 null-var1816)))
(declare-const var870 var3811) ; Statement: r0 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer 
(assert (not (= var870 null-var3811)))
(declare-const var1929 var1407) ; Statement: r7 := @parameter1: java.lang.Object 
(assert (not (= var1929 null-var1407)))
(define-const var2672 String "") ; Statement: $r2 = "" 
(assert true)
(define-const var3835 String (getName/-1907289949 var870)) ; Statement: $r1 = virtualinvoke r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>() 
(assert true)
(define-const var2796 Bool (= var2672 var3835)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r4 = r3.<org.apache.ibatis.reflection.wrapper.BaseWrapper: org.apache.ibatis.reflection.MetaObject metaObject> 
(assert (= (ite var2796 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1484 var1043 (metaObject/1486864166 var1737)) ; Statement: $r4 = r3.<org.apache.ibatis.reflection.wrapper.BaseWrapper: org.apache.ibatis.reflection.MetaObject metaObject> 
(assert true)
(define-const var142 String (getName/-1907289949 var870)) ; Statement: $r5 = virtualinvoke r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>() 
(assert true)
(define-const var802 var1407 (getValue/480890313 var1484 var142)) ; Statement: $r6 = virtualinvoke $r4.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1907289949=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), metaObject/1486864166=([org.apache.ibatis.reflection.wrapper.BaseWrapper], org.apache.ibatis.reflection.MetaObject), getValue/480890313=([org.apache.ibatis.reflection.MetaObject, java.lang.String], java.lang.Object)}
; {var1816=org.apache.ibatis.reflection.wrapper.BaseWrapper, var1737=r3, var3811=org.apache.ibatis.reflection.property.PropertyTokenizer, var870=r0, var1407=java.lang.Object, var1929=r7, var2672=$r2, var3835=$r1, var2796=$z0, var1043=org.apache.ibatis.reflection.MetaObject, var1484=$r4, var142=$r5, var802=$r6}
; {org.apache.ibatis.reflection.wrapper.BaseWrapper=var1816, r3=var1737, org.apache.ibatis.reflection.property.PropertyTokenizer=var3811, r0=var870, java.lang.Object=var1407, r7=var1929, $r2=var2672, $r1=var3835, $z0=var2796, org.apache.ibatis.reflection.MetaObject=var1043, $r4=var1484, $r5=var142, $r6=var802}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.apache.ibatis.reflection.wrapper.BaseWrapper;	r0 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer;	r7 := @parameter1: java.lang.Object;	$r2 = "";	$r1 = virtualinvoke r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r4 = r3.<org.apache.ibatis.reflection.wrapper.BaseWrapper: org.apache.ibatis.reflection.MetaObject metaObject>;	$r4 = r3.<org.apache.ibatis.reflection.wrapper.BaseWrapper: org.apache.ibatis.reflection.MetaObject metaObject>;	$r5 = virtualinvoke r0.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>();	$r6 = virtualinvoke $r4.<org.apache.ibatis.reflection.MetaObject: java.lang.Object getValue(java.lang.String)>($r5);	return $r6
;block_num 2