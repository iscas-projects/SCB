(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var548 0)
(declare-sort var1279 0)
(declare-sort var783 0)
(declare-sort var1045 0)
(declare-sort var3793 0)
(declare-sort var1956 0)
(declare-sort var1271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1077866378 (var548) var783)
(declare-fun var783_get/1088891777 (var783 var1045) var1045)
(declare-fun cast-from-String-to-var1045 (String) var1045)
(declare-fun cast-from-var1045-to-var3793 (var1045) var3793)
(declare-fun var1956-init () var1956)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1956 String) void)
(declare-fun cast-from-var1956-to-var1271 (var1956) var1271)
(declare-const null-var548 var548)
(declare-const null-String String)
(declare-const null-var3793 var3793)
(declare-const var1843 var548) ; Statement: r0 := @this: org.hibernate.boot.internal.MetadataImpl 
(assert (not (= var1843 null-var548)))
(declare-const var1949 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1949 null-String)))
(declare-const var850 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var850 null-String)))
(define-const var2465 var783 (entityBindingMap/1077866378 var1843)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap> 
(define-const var1445 var1045 (var783_get/1088891777 var2465 (cast-from-String-to-var1045 var1949))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2584 var3793 (cast-from-var1045-to-var3793 var1445)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto r6 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getReferencedProperty(java.lang.String)>(r5) 
(assert (not (not (= var2584 null-var3793)))) ; Negate: Cond: r4 != null  
(define-const var996 var1956 var1956-init) ; Statement: $r21 = new org.hibernate.MappingException 
(define-const var579 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var579)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var579!1 String)
(assert (= var579!1 ""))
(assert true)
(define-const var934 String (append/672562846 var579!1 "persistent class not known: ")) ; Statement: $r17 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ") 
(declare-const var579!2 String)
(assert (= var579!2 (str.++ var579!1 "persistent class not known: ")))
(assert true)
(define-const var994 String (append/672562846 var934 var1949)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var934!1 String)
(assert (= var934!1 (str.++ var934 var1949)))
(assert true)
(define-const var295 String (toString/-2075883882 var994)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var996 var295)) ; Statement: specialinvoke $r21.<org.hibernate.MappingException: void <init>(java.lang.String)>($r19) 

(declare-const var996!1 var1956)
(declare-const var295!1 String)
(define-const var2792 var1271 (cast-from-var1956-to-var1271 var996!1)) ; Statement: $r24 = (java.lang.Throwable) $r21 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1077866378=([org.hibernate.boot.internal.MetadataImpl], java.util.Map), var783_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var1045=([java.lang.String], java.lang.Object), cast-from-var1045-to-var3793=([java.lang.Object], org.hibernate.mapping.PersistentClass), var1956-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1956-to-var1271=([org.hibernate.MappingException], java.lang.Throwable)}
; {var548=org.hibernate.boot.internal.MetadataImpl, var1843=r0, var1949=r1, var1279=null_type, var850=r5, var783=java.util.Map, var2465=$r2, var1045=java.lang.Object, var1445=$r3, var3793=org.hibernate.mapping.PersistentClass, var2584=r4, var1956=org.hibernate.MappingException, var996=$r21, var579=$r20, var934=$r17, var994=$r18, var295=$r19, var1271=java.lang.Throwable, var2792=$r24}
; {org.hibernate.boot.internal.MetadataImpl=var548, r0=var1843, r1=var1949, null_type=var1279, r5=var850, java.util.Map=var783, $r2=var2465, java.lang.Object=var1045, $r3=var1445, org.hibernate.mapping.PersistentClass=var3793, r4=var2584, org.hibernate.MappingException=var1956, $r21=var996, $r20=var579, $r17=var934, $r18=var994, $r19=var295, java.lang.Throwable=var1271, $r24=var2792}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.MetadataImpl;	r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.MetadataImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto r6 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: org.hibernate.mapping.Property getReferencedProperty(java.lang.String)>(r5);	$r21 = new org.hibernate.MappingException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.MappingException: void <init>(java.lang.String)>($r19);	$r24 = (java.lang.Throwable) $r21;	throw $r24
;block_num 2