(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3209 0)
(declare-sort var3166 0)
(declare-sort var988 0)
(declare-sort var3270 0)
(declare-sort var1543 0)
(declare-sort var3484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun anyMetaDefs/1317447214 (var3209) var988)
(declare-fun var3166_name/-1378711075 (var3166) String)
(declare-fun var988_containsKey/1715618542 (var988 var3270) Bool)
(declare-fun cast-from-String-to-var3270 (String) var3270)
(declare-fun var1543-init () var1543)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var1543 String) void)
(declare-fun cast-from-var1543-to-var3484 (var1543) var3484)
(declare-const null-var3209 var3209)
(declare-const null-var3166 var3166)
(declare-const null-var988 var988)
(declare-const var2974 var3209) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var2974 null-var3209)))
(declare-const var2749 var3166) ; Statement: r2 := @parameter0: org.hibernate.annotations.AnyMetaDef 
(assert (not (= var2749 null-var3166)))
(define-const var2002 var988 (anyMetaDefs/1317447214 var2974)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
(assert (not (= var2002 null-var988))) ; Cond: $r1 != null 
(define-const var660 var988 (anyMetaDefs/1317447214 var2974)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
(define-const var2772 String (var3166_name/-1378711075 var2749)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>() 
(define-const var3205 Bool (var988_containsKey/1715618542 var660 (cast-from-String-to-var3270 var2772))) ; Statement: $z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>($r4) 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs> 
(assert (not (= (ite var3205 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2633 var1543 var1543-init) ; Statement: $r16 = new org.hibernate.AnnotationException 
(define-const var2989 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2989)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2989!1 String)
(assert (= var2989!1 ""))
(assert true)
(define-const var2524 String (append/672562846 var2989!1 "Two @AnyMetaDef with the same name defined: ")) ; Statement: $r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Two @AnyMetaDef with the same name defined: ") 
(declare-const var2989!2 String)
(assert (= var2989!2 (str.++ var2989!1 "Two @AnyMetaDef with the same name defined: ")))
(define-const var3019 String (var3166_name/-1378711075 var2749)) ; Statement: $r9 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>() 
(assert true)
(define-const var1469 String (append/672562846 var2524 var3019)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2524!1 String)
(assert (= var2524!1 (str.++ var2524 var3019)))
(assert true)
(define-const var1125 String (toString/-2075883882 var1469)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var2633 var1125)) ; Statement: specialinvoke $r16.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r12) 

(declare-const var2633!1 var1543)
(declare-const var1125!1 String)
(define-const var1560 var3484 (cast-from-var1543-to-var3484 var2633!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {anyMetaDefs/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var3166_name/-1378711075=([org.hibernate.annotations.AnyMetaDef], java.lang.String), var988_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var3270=([java.lang.String], java.lang.Object), var1543-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var1543-to-var3484=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var3209=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var2974=r0, var3166=org.hibernate.annotations.AnyMetaDef, var2749=r2, var988=java.util.Map, var2002=$r1, var660=$r3, var2772=$r4, var3270=java.lang.Object, var3205=$z0, var1543=org.hibernate.AnnotationException, var2633=$r16, var2989=$r15, var2524=$r10, var3019=$r9, var1469=$r11, var1125=$r12, var3484=java.lang.Throwable, var1560=$r17}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var3209, r0=var2974, org.hibernate.annotations.AnyMetaDef=var3166, r2=var2749, java.util.Map=var988, $r1=var2002, $r3=var660, $r4=var2772, java.lang.Object=var3270, $z0=var3205, org.hibernate.AnnotationException=var1543, $r16=var2633, $r15=var2989, $r10=var2524, $r9=var3019, $r11=var1469, $r12=var1125, java.lang.Throwable=var3484, $r17=var1560}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r2 := @parameter0: org.hibernate.annotations.AnyMetaDef;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	$r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	$r4 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>();	$z0 = interfaceinvoke $r3.<java.util.Map: boolean containsKey(java.lang.Object)>($r4);	if $z0 == 0 goto $r5 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map anyMetaDefs>;	$r16 = new org.hibernate.AnnotationException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Two @AnyMetaDef with the same name defined: ");	$r9 = interfaceinvoke r2.<org.hibernate.annotations.AnyMetaDef: java.lang.String name()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r12);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 3