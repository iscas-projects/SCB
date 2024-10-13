(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3746 0)
(declare-sort var1682 0)
(declare-sort var2097 0)
(declare-sort var3676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cpool/499592889 (var3746) var1682)
(declare-fun getUtf8Info/465512870 (var1682 Int) String)
(declare-fun classnames/499592889 (var3746) var2097)
(declare-fun var3676_rename/1279700803 (String var2097) String)
(declare-const null-var3746 var3746)
(declare-const null-Int Int)
(declare-const var1331 var3746) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer 
(assert (not (= var1331 null-var3746)))
(declare-const var2377 Int) ; Statement: i2 := @parameter0: int 
(assert (not (= var2377 null-Int)))
(declare-const var2754 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2754 null-Int)))
(define-const var89 var1682 (cpool/499592889 var1331)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer: org.apache.ibatis.javassist.bytecode.ConstPool cpool> 
(assert true)
(define-const var2587 String (getUtf8Info/465512870 var89 var2754)) ; Statement: r2 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>(i0) 
(define-const var2516 var2097 (classnames/499592889 var1331)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer: java.util.Map classnames> 
(define-const var1299 String (var3676_rename/1279700803 var2587 var2516)) ; Statement: r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String rename(java.lang.String,java.util.Map)>(r2, $r3) 
(assert true)
(define-const var2812 Bool (= var2587 var1299)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2812 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cpool/499592889=([org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer], org.apache.ibatis.javassist.bytecode.ConstPool), getUtf8Info/465512870=([org.apache.ibatis.javassist.bytecode.ConstPool, int], java.lang.String), classnames/499592889=([org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer], java.util.Map), var3676_rename/1279700803=([java.lang.String, java.util.Map], java.lang.String)}
; {var3746=org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer, var1331=r0, var2377=i2, var2754=i0, var1682=org.apache.ibatis.javassist.bytecode.ConstPool, var89=$r1, var2587=r2, var2097=java.util.Map, var2516=$r3, var3676=org.apache.ibatis.javassist.bytecode.Descriptor, var1299=r4, var2812=$z0}
; {org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer=var3746, r0=var1331, i2=var2377, i0=var2754, org.apache.ibatis.javassist.bytecode.ConstPool=var1682, $r1=var89, r2=var2587, java.util.Map=var2097, $r3=var2516, org.apache.ibatis.javassist.bytecode.Descriptor=var3676, r4=var1299, $z0=var2812}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer;	i2 := @parameter0: int;	i0 := @parameter1: int;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer: org.apache.ibatis.javassist.bytecode.ConstPool cpool>;	r2 = virtualinvoke $r1.<org.apache.ibatis.javassist.bytecode.ConstPool: java.lang.String getUtf8Info(int)>(i0);	$r3 = r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute$Renamer: java.util.Map classnames>;	r4 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String rename(java.lang.String,java.util.Map)>(r2, $r3);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto return;	return
;block_num 2