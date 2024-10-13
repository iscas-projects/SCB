(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2589 0)
(declare-sort var3425 0)
(declare-sort var1114 0)
(declare-sort var784 0)
(declare-sort var2829 0)
(declare-sort var2699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun naturalIdUniqueKeyBinderMap/1317447214 (var2589) var784)
(declare-fun var784_put/1464166817 (var784 var2829 var2829) var2829)
(declare-fun cast-from-String-to-var2829 (String) var2829)
(declare-fun cast-from-var1114-to-var2829 (var1114) var2829)
(declare-fun cast-from-var2829-to-var1114 (var2829) var1114)
(declare-fun var2699-init () var2699)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var2699 String) void)
(declare-const null-var2589 var2589)
(declare-const null-String String)
(declare-const null-var1114 var1114)
(declare-const null-var784 var784)
(declare-const var3315 var2589) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var3315 null-var2589)))
(declare-const var2478 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2478 null-String)))
(declare-const var1903 var1114) ; Statement: r3 := @parameter1: org.hibernate.boot.spi.NaturalIdUniqueKeyBinder 
(assert (not (= var1903 null-var1114)))
(define-const var1892 var784 (naturalIdUniqueKeyBinderMap/1317447214 var3315)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap> 
 ; Statement: if $r1 != null goto $r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap> 
(assert (not (= var1892 null-var784))) ; Cond: $r1 != null 
(define-const var1922 var784 (naturalIdUniqueKeyBinderMap/1317447214 var3315)) ; Statement: $r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap> 
(define-const var2682 var2829 (var784_put/1464166817 var1922 (cast-from-String-to-var2829 var2478) (cast-from-var1114-to-var2829 var1903))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r2, r3) 
(define-const var2156 var1114 (cast-from-var2829-to-var1114 var2682)) ; Statement: $r12 = (org.hibernate.boot.spi.NaturalIdUniqueKeyBinder) $r5 
 ; Statement: if $r12 == null goto return 
(assert (not (= var2156 null-var1114))) ; Negate: Cond: $r12 == null  
(define-const var2654 var2699 var2699-init) ; Statement: $r6 = new org.hibernate.AssertionFailure 
(define-const var1927 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1927)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1927!1 String)
(assert (= var1927!1 ""))
(assert true)
(define-const var868 String (append/672562846 var1927!1 "Previous NaturalIdUniqueKeyBinder already registered for entity name : ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Previous NaturalIdUniqueKeyBinder already registered for entity name : ") 
(declare-const var1927!2 String)
(assert (= var1927!2 (str.++ var1927!1 "Previous NaturalIdUniqueKeyBinder already registered for entity name : ")))
(assert true)
(define-const var3256 String (append/672562846 var868 var2478)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var868!1 String)
(assert (= var868!1 (str.++ var868 var2478)))
(assert true)
(define-const var1923 String (toString/-2075883882 var3256)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var2654 var1923)) ; Statement: specialinvoke $r6.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10) 

(declare-const var2654!1 var2699)
(declare-const var1923!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {naturalIdUniqueKeyBinderMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var784_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2829=([java.lang.String], java.lang.Object), cast-from-var1114-to-var2829=([org.hibernate.boot.spi.NaturalIdUniqueKeyBinder], java.lang.Object), cast-from-var2829-to-var1114=([java.lang.Object], org.hibernate.boot.spi.NaturalIdUniqueKeyBinder), var2699-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2589=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var3315=r0, var2478=r2, var3425=null_type, var1114=org.hibernate.boot.spi.NaturalIdUniqueKeyBinder, var1903=r3, var784=java.util.Map, var1892=$r1, var1922=$r4, var2829=java.lang.Object, var2682=$r5, var2156=$r12, var2699=org.hibernate.AssertionFailure, var2654=$r6, var1927=$r7, var868=$r8, var3256=$r9, var1923=$r10}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var2589, r0=var3315, r2=var2478, null_type=var3425, org.hibernate.boot.spi.NaturalIdUniqueKeyBinder=var1114, r3=var1903, java.util.Map=var784, $r1=var1892, $r4=var1922, java.lang.Object=var2829, $r5=var2682, $r12=var2156, org.hibernate.AssertionFailure=var2699, $r6=var2654, $r7=var1927, $r8=var868, $r9=var3256, $r10=var1923}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.boot.spi.NaturalIdUniqueKeyBinder;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap>;	if $r1 != null goto $r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap>;	$r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r2, r3);	$r12 = (org.hibernate.boot.spi.NaturalIdUniqueKeyBinder) $r5;	if $r12 == null goto return;	$r6 = new org.hibernate.AssertionFailure;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Previous NaturalIdUniqueKeyBinder already registered for entity name : ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 3