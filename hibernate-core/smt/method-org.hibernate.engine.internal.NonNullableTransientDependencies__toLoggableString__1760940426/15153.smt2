(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var25 0)
(declare-sort var1757 0)
(declare-sort var3862 0)
(declare-sort var2289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getClass/1258963082 (var3862) ClassObject)
(declare-fun cast-from-var25-to-var3862 (var25) var3862)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun propertyPathsByTransientEntity/-928121840 (var25) var2289)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var25 var25)
(declare-const null-var1757 var1757)
(declare-const null-var2289 var2289)
(declare-const var2969 var25) ; Statement: r1 := @this: org.hibernate.engine.internal.NonNullableTransientDependencies 
(assert (not (= var2969 null-var25)))
(declare-const var2079 var1757) ; Statement: r12 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2079 null-var1757)))
(define-const var3807 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var507 ClassObject (getClass/1258963082 (cast-from-var25-to-var3862 var2969))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var680 String (getSimpleName/-390194377 var507)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
;(assert (<init>/-1061048412 var3807 var680)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var3807!1 String)
(assert (= var3807!1 var680))
(assert true)
(define-const var1134 String (append/-1166366385 var3807!1 91)) ; Statement: r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3807!2 String)
(assert (str.prefixof var3807!1 var3807!2))
(define-const var3321 var2289 (propertyPathsByTransientEntity/-928121840 var2969)) ; Statement: $r5 = r1.<org.hibernate.engine.internal.NonNullableTransientDependencies: java.util.Map propertyPathsByTransientEntity> 
 ; Statement: if $r5 == null goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (= var3321 null-var2289)) ; Cond: $r5 == null 
(assert true)
;(assert (append/-1166366385 var1134 93)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1134!1 String)
(assert (str.prefixof var1134 var1134!1))
(assert true)
(define-const var3042 String (toString/-2075883882 var1134!1)) ; Statement: $r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var25-to-var3862=([org.hibernate.engine.internal.NonNullableTransientDependencies], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), propertyPathsByTransientEntity/-928121840=([org.hibernate.engine.internal.NonNullableTransientDependencies], java.util.Map), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var25=org.hibernate.engine.internal.NonNullableTransientDependencies, var2969=r1, var1757=org.hibernate.engine.spi.SharedSessionContractImplementor, var2079=r12, var3807=$r0, var3862=java.lang.Object, var507=$r2, var680=$r3, var1134=r4, var2289=java.util.Map, var3321=$r5, var3042=$r6}
; {org.hibernate.engine.internal.NonNullableTransientDependencies=var25, r1=var2969, org.hibernate.engine.spi.SharedSessionContractImplementor=var1757, r12=var2079, $r0=var3807, java.lang.Object=var3862, $r2=var507, $r3=var680, r4=var1134, java.util.Map=var2289, $r5=var3321, $r6=var3042}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.internal.NonNullableTransientDependencies;	r12 := @parameter0: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r5 = r1.<org.hibernate.engine.internal.NonNullableTransientDependencies: java.util.Map propertyPathsByTransientEntity>;	if $r5 == null goto virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r6 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2