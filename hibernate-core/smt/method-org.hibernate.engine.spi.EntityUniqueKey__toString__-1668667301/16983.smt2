(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var130 0)
(declare-sort var1974 0)
(declare-sort var3208 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun entityName/-556841469 (var130) String)
(declare-fun uniqueKeyName/-556841469 (var130) String)
(declare-fun key/-556841469 (var130) var1974)
(declare-fun var3208_infoString/-1520937893 (String String var1974) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var130 var130)
(declare-const var3679 var130) ; Statement: r1 := @this: org.hibernate.engine.spi.EntityUniqueKey 
(assert (not (= var3679 null-var130)))
(define-const var3813 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3813)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3813!1 String)
(assert (= var3813!1 ""))
(assert true)
(define-const var3263 String (append/672562846 var3813!1 "EntityUniqueKey")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityUniqueKey") 
(declare-const var3813!2 String)
(assert (= var3813!2 (str.++ var3813!1 "EntityUniqueKey")))
(define-const var1257 String (entityName/-556841469 var3679)) ; Statement: $r4 = r1.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String entityName> 
(define-const var2214 String (uniqueKeyName/-556841469 var3679)) ; Statement: $r3 = r1.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String uniqueKeyName> 
(define-const var2231 var1974 (key/-556841469 var3679)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.Object key> 
(define-const var3216 String (var3208_infoString/-1520937893 var1257 var2214 var2231)) ; Statement: $r5 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.lang.String,java.lang.Object)>($r4, $r3, $r2) 
(assert true)
(define-const var487 String (append/672562846 var3263 var3216)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3263!1 String)
(assert (= var3263!1 (str.++ var3263 var3216)))
(assert true)
(define-const var141 String (toString/-2075883882 var487)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), entityName/-556841469=([org.hibernate.engine.spi.EntityUniqueKey], java.lang.String), uniqueKeyName/-556841469=([org.hibernate.engine.spi.EntityUniqueKey], java.lang.String), key/-556841469=([org.hibernate.engine.spi.EntityUniqueKey], java.lang.Object), var3208_infoString/-1520937893=([java.lang.String, java.lang.String, java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var130=org.hibernate.engine.spi.EntityUniqueKey, var3679=r1, var3813=$r0, var3263=$r6, var1257=$r4, var2214=$r3, var1974=java.lang.Object, var2231=$r2, var3208=org.hibernate.pretty.MessageHelper, var3216=$r5, var487=$r7, var141=$r8}
; {org.hibernate.engine.spi.EntityUniqueKey=var130, r1=var3679, $r0=var3813, $r6=var3263, $r4=var1257, $r3=var2214, java.lang.Object=var1974, $r2=var2231, org.hibernate.pretty.MessageHelper=var3208, $r5=var3216, $r7=var487, $r8=var141}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.EntityUniqueKey;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EntityUniqueKey");	$r4 = r1.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String entityName>;	$r3 = r1.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String uniqueKeyName>;	$r2 = r1.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.Object key>;	$r5 = staticinvoke <org.hibernate.pretty.MessageHelper: java.lang.String infoString(java.lang.String,java.lang.String,java.lang.Object)>($r4, $r3, $r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1