(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1386 0)
(declare-sort var461 0)
(declare-sort var349 0)
(declare-sort var520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var349!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var520) Bool)
(declare-fun cast-from-var461-to-var520 (var461) var520)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var461-to-var349 (var461) var349)
(declare-fun var349_getJoinedPropertyName/1545131964 (var349) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1386 var1386)
(declare-const null-var461 var461)
(declare-const var1890 var1386) ; Statement: r11 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter 
(assert (not (= var1890 null-var1386)))
(declare-const var543 var461) ; Statement: r0 := @parameter0: org.hibernate.loader.plan.spi.Join 
(assert (not (= var543 null-var461)))
(define-const var1972 ClassObject var349!class) ; Statement: $r1 = class "Lorg/hibernate/loader/plan/spi/JoinDefinedByMetadata;" 
(assert true)
(define-const var529 Bool (isInstance/451912363 var1972 (cast-from-var461-to-var520 var543))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= (ite var529 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3217 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3217)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3217!1 String)
(assert (= var3217!1 ""))
(assert true)
(define-const var889 String (append/672562846 var3217!1 "JoinDefinedByMetadata(")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JoinDefinedByMetadata(") 
(declare-const var3217!2 String)
(assert (= var3217!2 (str.++ var3217!1 "JoinDefinedByMetadata(")))
(define-const var133 var349 (cast-from-var461-to-var349 var543)) ; Statement: $r5 = (org.hibernate.loader.plan.spi.JoinDefinedByMetadata) r0 
(define-const var2185 String (var349_getJoinedPropertyName/1545131964 var133)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.loader.plan.spi.JoinDefinedByMetadata: java.lang.String getJoinedPropertyName()>() 
(assert true)
(define-const var3277 String (append/672562846 var889 var2185)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var889!1 String)
(assert (= var889!1 (str.++ var889 var2185)))
(assert true)
(define-const var2755 String (append/672562846 var3277 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3277!1 String)
(assert (= var3277!1 (str.++ var3277 ")")))
(assert true)
(define-const var3205 String (toString/-2075883882 var2755)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var461-to-var520=([org.hibernate.loader.plan.spi.Join], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var461-to-var349=([org.hibernate.loader.plan.spi.Join], org.hibernate.loader.plan.spi.JoinDefinedByMetadata), var349_getJoinedPropertyName/1545131964=([org.hibernate.loader.plan.spi.JoinDefinedByMetadata], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1386=org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter, var1890=r11, var461=org.hibernate.loader.plan.spi.Join, var543=r0, var349=org.hibernate.loader.plan.spi.JoinDefinedByMetadata, var1972=$r1, var520=java.lang.Object, var529=$z0, var3217=$r4, var889=$r7, var133=$r5, var2185=$r6, var3277=$r8, var2755=$r9, var3205=$r10}
; {org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter=var1386, r11=var1890, org.hibernate.loader.plan.spi.Join=var461, r0=var543, org.hibernate.loader.plan.spi.JoinDefinedByMetadata=var349, $r1=var1972, java.lang.Object=var520, $z0=var529, $r4=var3217, $r7=var889, $r5=var133, $r6=var2185, $r8=var3277, $r9=var2755, $r10=var3205}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.loader.plan.build.spi.QuerySpaceTreePrinter;	r0 := @parameter0: org.hibernate.loader.plan.spi.Join;	$r1 = class "Lorg/hibernate/loader/plan/spi/JoinDefinedByMetadata;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JoinDefinedByMetadata(");	$r5 = (org.hibernate.loader.plan.spi.JoinDefinedByMetadata) r0;	$r6 = interfaceinvoke $r5.<org.hibernate.loader.plan.spi.JoinDefinedByMetadata: java.lang.String getJoinedPropertyName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2