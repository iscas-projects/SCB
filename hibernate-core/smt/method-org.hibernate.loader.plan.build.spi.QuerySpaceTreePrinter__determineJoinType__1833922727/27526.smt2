(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2201 0)
(declare-sort var1336 0)
(declare-sort var1623 0)
(declare-sort var650 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1623!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var650) Bool)
(declare-fun cast-from-var1336-to-var650 (var1336) var650)
(declare-fun getClass/1258963082 (var650) ClassObject)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-const null-var2201 var2201)
(declare-const null-var1336 var1336)
(declare-const var3973 var2201) ; Statement: r11 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter 
(assert (not (= var3973 null-var2201)))
(declare-const var1275 var1336) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.Join 
(assert (not (= var1275 null-var1336)))
(define-const var3190 ClassObject var1623!class) ; Statement: $r1 = class "Lorg/hibernate/loader/plan/spi/JoinDefinedByMetadata;" 
(assert true)
(define-const var846 Bool (isInstance/451912363 var3190 (cast-from-var1336-to-var650 var1275))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (= (ite var846 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2463 ClassObject (getClass/1258963082 (cast-from-var1336-to-var650 var1275))) ; Statement: $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1121 String (getSimpleName/-390194377 var2463)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1336-to-var650=([org.hibernate.loader.plan.spi.Join], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getSimpleName/-390194377=([java.lang.Class], java.lang.String)}
; {var2201=org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, var3973=r11, var1336=org.hibernate.loader.plan.spi.Join, var1275=r0, var1623=org.hibernate.loader.plan.spi.JoinDefinedByMetadata, var3190=$r1, var650=java.lang.Object, var846=$z0, var2463=$r2, var1121=$r3}
; {org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter=var2201, r11=var3973, org.hibernate.loader.plan.spi.Join=var1336, r0=var1275, org.hibernate.loader.plan.spi.JoinDefinedByMetadata=var1623, $r1=var3190, java.lang.Object=var650, $z0=var846, $r2=var2463, $r3=var1121}
;seq 
;cnt {}
;stmts r11 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter;	r0 := @parameter0: org.hibernate.loader.plan.spi.Join;	$r1 = class "Lorg/hibernate/loader/plan/spi/JoinDefinedByMetadata;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	return $r3
;block_num 2