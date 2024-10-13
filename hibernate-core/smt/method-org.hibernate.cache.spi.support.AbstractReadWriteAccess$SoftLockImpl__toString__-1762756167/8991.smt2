(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1071 0)
(declare-sort var1093 0)
(declare-sort var745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun sourceUuid/715137505 (var1071) var1093)
(declare-fun append/-1031950772 (String var745) String)
(declare-fun cast-from-var1093-to-var745 (var1093) var745)
(declare-fun lockId/715137505 (var1071) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1071 var1071)
(declare-const var1197 var1071) ; Statement: r1 := @this: org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl 
(assert (not (= var1197 null-var1071)))
(define-const var128 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var128)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var128!1 String)
(assert (= var128!1 ""))
(assert true)
(define-const var892 String (append/672562846 var128!1 "Lock Source-UUID:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lock Source-UUID:") 
(declare-const var128!2 String)
(assert (= var128!2 (str.++ var128!1 "Lock Source-UUID:")))
(define-const var1325 var1093 (sourceUuid/715137505 var1197)) ; Statement: $r2 = r1.<org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl: java.util.UUID sourceUuid> 
(assert true)
(define-const var3313 String (append/-1031950772 var892 (cast-from-var1093-to-var745 var1325))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var892!1 String)
(assert (str.prefixof var892 var892!1))
(assert true)
(define-const var68 String (append/672562846 var3313 " Lock-ID:")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Lock-ID:") 
(declare-const var3313!1 String)
(assert (= var3313!1 (str.++ var3313 " Lock-ID:")))
(define-const var2668 Int (lockId/715137505 var1197)) ; Statement: $l0 = r1.<org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl: long lockId> 
(assert true)
(define-const var3293 String (append/-901862667 var68 var2668)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var68!1 String)
(assert (str.prefixof var68 var68!1))
(assert true)
(define-const var118 String (toString/-2075883882 var3293)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), sourceUuid/715137505=([org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl], java.util.UUID), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1093-to-var745=([java.util.UUID], java.lang.Object), lockId/715137505=([org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1071=org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl, var1197=r1, var128=$r0, var892=$r3, var1093=java.util.UUID, var1325=$r2, var745=java.lang.Object, var3313=$r4, var68=$r5, var2668=$l0, var3293=$r6, var118=$r7}
; {org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl=var1071, r1=var1197, $r0=var128, $r3=var892, java.util.UUID=var1093, $r2=var1325, java.lang.Object=var745, $r4=var3313, $r5=var68, $l0=var2668, $r6=var3293, $r7=var118}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lock Source-UUID:");	$r2 = r1.<org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl: java.util.UUID sourceUuid>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" Lock-ID:");	$l0 = r1.<org.hibernate.cache.spi.support.AbstractReadWriteAccess$SoftLockImpl: long lockId>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1