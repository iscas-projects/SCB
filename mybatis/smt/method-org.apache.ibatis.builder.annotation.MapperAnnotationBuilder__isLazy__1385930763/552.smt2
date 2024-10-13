(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1664 0)
(declare-sort var1161 0)
(declare-sort var2016 0)
(declare-sort var2604 0)
(declare-sort var3111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun configuration/-1562462879 (var1664) var2016)
(declare-fun isLazyLoadingEnabled/422830908 (var2016) Bool)
(declare-fun var1161_one/-1189430392 (var1161) var2604)
(declare-fun var2604_select/1804598698 (var2604) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1161_many/444674932 (var1161) var3111)
(declare-fun var3111_select/-2061486669 (var3111) String)
(declare-const null-var1664 var1664)
(declare-const null-var1161 var1161)
(declare-const var3138 var1664) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var3138 null-var1664)))
(declare-const var1142 var1161) ; Statement: r2 := @parameter0: org.apache.ibatis.annotations.Result 
(assert (not (= var1142 null-var1161)))
(define-const var2046 var2016 (configuration/-1562462879 var3138)) ; Statement: $r1 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(assert true)
(define-const var1929 Bool (isLazyLoadingEnabled/422830908 var2046)) ; Statement: z0 = virtualinvoke $r1.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>() 
(define-const var2248 var2604 (var1161_one/-1189430392 var1142)) ; Statement: $r3 = interfaceinvoke r2.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(define-const var2795 String (var2604_select/1804598698 var2248)) ; Statement: $r4 = interfaceinvoke $r3.<org.apache.ibatis.annotations.One: java.lang.String select()>() 
(assert true)
(define-const var3248 Int (length/-134980193 var2795)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r5 = interfaceinvoke r2.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>() 
(assert (<= var3248 0)) ; Cond: $i0 <= 0 
(define-const var780 var3111 (var1161_many/444674932 var1142)) ; Statement: $r5 = interfaceinvoke r2.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>() 
(define-const var2126 String (var3111_select/-2061486669 var780)) ; Statement: $r6 = interfaceinvoke $r5.<org.apache.ibatis.annotations.Many: java.lang.String select()>() 
(assert true)
(define-const var2759 Int (length/-134980193 var2126)) ; Statement: $i1 = virtualinvoke $r6.<java.lang.String: int length()>() 
 ; Statement: if $i1 <= 0 goto return z0 
(assert (<= var2759 0)) ; Cond: $i1 <= 0 
 ; Statement: return z0 
(check-sat)
(get-model)
(get-unsat-core)
; {configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), isLazyLoadingEnabled/422830908=([org.apache.ibatis.session.Configuration], boolean), var1161_one/-1189430392=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.One), var2604_select/1804598698=([org.apache.ibatis.annotations.One], java.lang.String), length/-134980193=([java.lang.String], int), var1161_many/444674932=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.Many), var3111_select/-2061486669=([org.apache.ibatis.annotations.Many], java.lang.String)}
; {var1664=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var3138=r0, var1161=org.apache.ibatis.annotations.Result, var1142=r2, var2016=org.apache.ibatis.session.Configuration, var2046=$r1, var1929=z0, var2604=org.apache.ibatis.annotations.One, var2248=$r3, var2795=$r4, var3248=$i0, var3111=org.apache.ibatis.annotations.Many, var780=$r5, var2126=$r6, var2759=$i1}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var1664, r0=var3138, org.apache.ibatis.annotations.Result=var1161, r2=var1142, org.apache.ibatis.session.Configuration=var2016, $r1=var2046, z0=var1929, org.apache.ibatis.annotations.One=var2604, $r3=var2248, $r4=var2795, $i0=var3248, org.apache.ibatis.annotations.Many=var3111, $r5=var780, $r6=var2126, $i1=var2759}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: org.apache.ibatis.annotations.Result;	$r1 = r0.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	z0 = virtualinvoke $r1.<org.apache.ibatis.session.Configuration: boolean isLazyLoadingEnabled()>();	$r3 = interfaceinvoke r2.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	$r4 = interfaceinvoke $r3.<org.apache.ibatis.annotations.One: java.lang.String select()>();	$i0 = virtualinvoke $r4.<java.lang.String: int length()>();	if $i0 <= 0 goto $r5 = interfaceinvoke r2.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>();	$r5 = interfaceinvoke r2.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.Many many()>();	$r6 = interfaceinvoke $r5.<org.apache.ibatis.annotations.Many: java.lang.String select()>();	$i1 = virtualinvoke $r6.<java.lang.String: int length()>();	if $i1 <= 0 goto return z0;	return z0
;block_num 3