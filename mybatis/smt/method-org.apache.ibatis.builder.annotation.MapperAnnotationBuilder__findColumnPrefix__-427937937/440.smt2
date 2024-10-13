(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var219 0)
(declare-sort var1734 0)
(declare-sort var1520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1734_one/-1189430392 (var1734) var1520)
(declare-fun var1520_columnPrefix/1108132574 (var1520) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var219 var219)
(declare-const null-var1734 var1734)
(declare-const var1524 var219) ; Statement: r3 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var1524 null-var219)))
(declare-const var2666 var1734) ; Statement: r0 := @parameter0: org.apache.ibatis.annotations.Result 
(assert (not (= var2666 null-var1734)))
(define-const var195 var1520 (var1734_one/-1189430392 var2666)) ; Statement: $r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>() 
(define-const var450 String (var1520_columnPrefix/1108132574 var195)) ; Statement: r4 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String columnPrefix()>() 
(assert true)
(define-const var2896 Int (length/-134980193 var450)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= 1 goto return r4 
(assert (>= var2896 1)) ; Cond: $i0 >= 1 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1734_one/-1189430392=([org.apache.ibatis.annotations.Result], org.apache.ibatis.annotations.One), var1520_columnPrefix/1108132574=([org.apache.ibatis.annotations.One], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var219=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var1524=r3, var1734=org.apache.ibatis.annotations.Result, var2666=r0, var1520=org.apache.ibatis.annotations.One, var195=$r1, var450=r4, var2896=$i0}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var219, r3=var1524, org.apache.ibatis.annotations.Result=var1734, r0=var2666, org.apache.ibatis.annotations.One=var1520, $r1=var195, r4=var450, $i0=var2896}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r0 := @parameter0: org.apache.ibatis.annotations.Result;	$r1 = interfaceinvoke r0.<org.apache.ibatis.annotations.Result: org.apache.ibatis.annotations.One one()>();	r4 = interfaceinvoke $r1.<org.apache.ibatis.annotations.One: java.lang.String columnPrefix()>();	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	if $i0 >= 1 goto return r4;	return r4
;block_num 2