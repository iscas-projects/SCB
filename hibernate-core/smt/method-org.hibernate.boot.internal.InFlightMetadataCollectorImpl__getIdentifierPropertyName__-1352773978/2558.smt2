(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var946 0)
(declare-sort var1732 0)
(declare-sort var2605 0)
(declare-sort var2010 0)
(declare-sort var570 0)
(declare-sort var304 0)
(declare-sort var1770 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityBindingMap/1317447214 (var946) var2605)
(declare-fun var2605_get/1088891777 (var2605 var2010) var2010)
(declare-fun cast-from-String-to-var2010 (String) var2010)
(declare-fun cast-from-var2010-to-var570 (var2010) var570)
(declare-fun var304-init () var304)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var304 String) void)
(declare-fun cast-from-var304-to-var1770 (var304) var1770)
(declare-const null-var946 var946)
(declare-const null-String String)
(declare-const null-var570 var570)
(declare-const var3875 var946) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var3875 null-var946)))
(declare-const var1069 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1069 null-String)))
(define-const var2382 var2605 (entityBindingMap/1317447214 var3875)) ; Statement: $r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap> 
(define-const var2317 var2010 (var2605_get/1088891777 var2382 (cast-from-String-to-var2010 var1069))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2788 var570 (cast-from-var2010-to-var570 var2317)) ; Statement: r4 = (org.hibernate.mapping.PersistentClass) $r3 
 ; Statement: if r4 != null goto $z0 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: boolean hasIdentifierProperty()>() 
(assert (not (not (= var2788 null-var570)))) ; Negate: Cond: r4 != null  
(define-const var868 var304 var304-init) ; Statement: $r13 = new org.hibernate.MappingException 
(define-const var3425 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3425)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3425!1 String)
(assert (= var3425!1 ""))
(assert true)
(define-const var1586 String (append/672562846 var3425!1 "persistent class not known: ")) ; Statement: $r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ") 
(declare-const var3425!2 String)
(assert (= var3425!2 (str.++ var3425!1 "persistent class not known: ")))
(assert true)
(define-const var3138 String (append/672562846 var1586 var1069)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1586!1 String)
(assert (= var1586!1 (str.++ var1586 var1069)))
(assert true)
(define-const var3718 String (toString/-2075883882 var3138)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var868 var3718)) ; Statement: specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11) 

(declare-const var868!1 var304)
(declare-const var3718!1 String)
(define-const var632 var1770 (cast-from-var304-to-var1770 var868!1)) ; Statement: $r14 = (java.lang.Throwable) $r13 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entityBindingMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var2605_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2010=([java.lang.String], java.lang.Object), cast-from-var2010-to-var570=([java.lang.Object], org.hibernate.mapping.PersistentClass), var304-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var304-to-var1770=([org.hibernate.MappingException], java.lang.Throwable)}
; {var946=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var3875=r0, var1069=r1, var1732=null_type, var2605=java.util.Map, var2382=$r2, var2010=java.lang.Object, var2317=$r3, var570=org.hibernate.mapping.PersistentClass, var2788=r4, var304=org.hibernate.MappingException, var868=$r13, var3425=$r12, var1586=$r9, var3138=$r10, var3718=$r11, var1770=java.lang.Throwable, var632=$r14}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var946, r0=var3875, r1=var1069, null_type=var1732, java.util.Map=var2605, $r2=var2382, java.lang.Object=var2010, $r3=var2317, org.hibernate.mapping.PersistentClass=var570, r4=var2788, org.hibernate.MappingException=var304, $r13=var868, $r12=var3425, $r9=var1586, $r10=var3138, $r11=var3718, java.lang.Throwable=var1770, $r14=var632}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map entityBindingMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.mapping.PersistentClass) $r3;	if r4 != null goto $z0 = virtualinvoke r4.<org.hibernate.mapping.PersistentClass: boolean hasIdentifierProperty()>();	$r13 = new org.hibernate.MappingException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("persistent class not known: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.hibernate.MappingException: void <init>(java.lang.String)>($r11);	$r14 = (java.lang.Throwable) $r13;	throw $r14
;block_num 2