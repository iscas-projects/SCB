(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1842 0)
(declare-sort var2086 0)
(declare-sort var1828 0)
(declare-sort var2828 0)
(declare-sort var2325 0)
(declare-sort var3048 0)
(declare-sort var2551 0)
(declare-sort var1969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1828!class ClassObject)
(declare-const var2325!class ClassObject)
(declare-fun equals/-1650223740 (var2828 var2828) Bool)
(declare-fun cast-from-ClassObject-to-var2828 (ClassObject) var2828)
(declare-fun var1842_isAnnotationPresent/-1568090508 (var1842 ClassObject) Bool)
(declare-fun var3048-init () var3048)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1842_getName/-1864662448 (var1842) String)
(declare-fun var2551_qualify/-1563731603 (String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3048 String) void)
(declare-fun cast-from-var3048-to-var1969 (var3048) var1969)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1842 var1842)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2425 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2425 null-ClassObject)))
(declare-const var2363 var1842) ; Statement: r7 := @parameter1: org.hibernate.annotations.common.reflection.XProperty 
(assert (not (= var2363 null-var1842)))
(declare-const var168 String) ; Statement: r13 := @parameter2: java.lang.String 
(assert (not (= var168 null-String)))
(declare-const var2932 Bool) ; Statement: z6 := @parameter3: boolean 
(assert (not (= var2932 null-Bool)))
(define-const var1765 ClassObject var1828!class) ; Statement: $r1 = class "Ljava/util/Set;" 
(assert true)
(define-const var44 Bool (equals/-1650223740 (cast-from-ClassObject-to-var2828 var1765) (cast-from-ClassObject-to-var2828 var2425))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Object: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = class "Ljava/util/SortedSet;" 
(assert (not (= (ite var44 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2269 Bool (var1842_isAnnotationPresent/-1568090508 var2363 var2325!class)) ; Statement: $z13 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Lorg/hibernate/annotations/CollectionId;") 
 ; Statement: if $z13 == 0 goto $r55 = new org.hibernate.cfg.annotations.SetBinder 
(assert (not (= (ite var2269 1 0) 0))) ; Negate: Cond: $z13 == 0  
(define-const var3050 var3048 var3048-init) ; Statement: $r54 = new org.hibernate.AnnotationException 
(define-const var3311 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(assert true)
(define-const var3584 String (append/672562846 var3311!1 "Set do not support @CollectionId: ")) ; Statement: $r50 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Set do not support @CollectionId: ") 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 "Set do not support @CollectionId: ")))
(define-const var1442 String (var1842_getName/-1864662448 var2363)) ; Statement: $r48 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.XProperty: java.lang.String getName()>() 
(define-const var3626 String (var2551_qualify/-1563731603 var168 var1442)) ; Statement: $r49 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r13, $r48) 
(assert true)
(define-const var1987 String (append/672562846 var3584 var3626)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49) 
(declare-const var3584!1 String)
(assert (= var3584!1 (str.++ var3584 var3626)))
(assert true)
(define-const var2081 String (toString/-2075883882 var1987)) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var3050 var2081)) ; Statement: specialinvoke $r54.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r52) 

(declare-const var3050!1 var3048)
(declare-const var2081!1 String)
(define-const var116 var1969 (cast-from-var3048-to-var1969 var3050!1)) ; Statement: $r72 = (java.lang.Throwable) $r54 
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var2828=([java.lang.Class], java.lang.Object), var1842_isAnnotationPresent/-1568090508=([org.hibernate.annotations.common.reflection.XProperty, java.lang.Class], boolean), var3048-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1842_getName/-1864662448=([org.hibernate.annotations.common.reflection.XProperty], java.lang.String), var2551_qualify/-1563731603=([java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3048-to-var1969=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var2425=r0, var1842=org.hibernate.annotations.common.reflection.XProperty, var2363=r7, var168=r13, var2086=null_type, var2932=z6, var1828=java.util.Set, var1765=$r1, var2828=java.lang.Object, var44=$z0, var2325=org.hibernate.annotations.CollectionId, var2269=$z13, var3048=org.hibernate.AnnotationException, var3050=$r54, var3311=$r53, var3584=$r50, var1442=$r48, var2551=org.hibernate.internal.util.StringHelper, var3626=$r49, var1987=$r51, var2081=$r52, var1969=java.lang.Throwable, var116=$r72}
; {r0=var2425, org.hibernate.annotations.common.reflection.XProperty=var1842, r7=var2363, r13=var168, null_type=var2086, z6=var2932, java.util.Set=var1828, $r1=var1765, java.lang.Object=var2828, $z0=var44, org.hibernate.annotations.CollectionId=var2325, $z13=var2269, org.hibernate.AnnotationException=var3048, $r54=var3050, $r53=var3311, $r50=var3584, $r48=var1442, org.hibernate.internal.util.StringHelper=var2551, $r49=var3626, $r51=var1987, $r52=var2081, java.lang.Throwable=var1969, $r72=var116}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r7 := @parameter1: org.hibernate.annotations.common.reflection.XProperty;	r13 := @parameter2: java.lang.String;	z6 := @parameter3: boolean;	$r1 = class "Ljava/util/Set;";	$z0 = virtualinvoke $r1.<java.lang.Object: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = class "Ljava/util/SortedSet;";	$z13 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.XProperty: boolean isAnnotationPresent(java.lang.Class)>(class "Lorg/hibernate/annotations/CollectionId;");	if $z13 == 0 goto $r55 = new org.hibernate.cfg.annotations.SetBinder;	$r54 = new org.hibernate.AnnotationException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Set do not support @CollectionId: ");	$r48 = interfaceinvoke r7.<org.hibernate.annotations.common.reflection.XProperty: java.lang.String getName()>();	$r49 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String qualify(java.lang.String,java.lang.String)>(r13, $r48);	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r49);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r54.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r52);	$r72 = (java.lang.Throwable) $r54;	throw $r72
;block_num 3