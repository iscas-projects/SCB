(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1879 0)
(declare-sort var154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyHolder/1550026818 (var1879) var154)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var154_getEntityName/406565313 (var154) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun propertyName/1550026818 (var1879) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1879 var1879)
(declare-const null-var154 var154)
(declare-const var147 var1879) ; Statement: r0 := @this: org.hibernate.cfg.annotations.CollectionBinder 
(assert (not (= var147 null-var1879)))
(define-const var1222 var154 (propertyHolder/1550026818 var147)) ; Statement: $r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder> 
 ; Statement: if $r1 == null goto return "" 
(assert (not (= var1222 null-var154))) ; Negate: Cond: $r1 == null  
(define-const var585 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var585)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var585!1 String)
(assert (= var585!1 ""))
(define-const var1119 var154 (propertyHolder/1550026818 var147)) ; Statement: $r3 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder> 
(define-const var1466 String (var154_getEntityName/406565313 var1119)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.cfg.PropertyHolder: java.lang.String getEntityName()>() 
(assert true)
(define-const var2054 String (append/672562846 var585!1 var1466)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var585!2 String)
(assert (= var585!2 (str.++ var585!1 var1466)))
(assert true)
(define-const var1273 String (append/672562846 var2054 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2054!1 String)
(assert (= var2054!1 (str.++ var2054 ".")))
(define-const var150 String (propertyName/1550026818 var147)) ; Statement: $r6 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName> 
(assert true)
(define-const var14 String (append/672562846 var1273 var150)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1273!1 String)
(assert (= var1273!1 (str.++ var1273 var150)))
(assert true)
(define-const var965 String (toString/-2075883882 var14)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyHolder/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], org.hibernate.cfg.PropertyHolder), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var154_getEntityName/406565313=([org.hibernate.cfg.PropertyHolder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), propertyName/1550026818=([org.hibernate.cfg.annotations.CollectionBinder], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1879=org.hibernate.cfg.annotations.CollectionBinder, var147=r0, var154=org.hibernate.cfg.PropertyHolder, var1222=$r1, var585=$r2, var1119=$r3, var1466=$r4, var2054=$r5, var1273=$r7, var150=$r6, var14=$r8, var965=$r9}
; {org.hibernate.cfg.annotations.CollectionBinder=var1879, r0=var147, org.hibernate.cfg.PropertyHolder=var154, $r1=var1222, $r2=var585, $r3=var1119, $r4=var1466, $r5=var2054, $r7=var1273, $r6=var150, $r8=var14, $r9=var965}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.cfg.annotations.CollectionBinder;	$r1 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder>;	if $r1 == null goto return "";	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<org.hibernate.cfg.annotations.CollectionBinder: org.hibernate.cfg.PropertyHolder propertyHolder>;	$r4 = interfaceinvoke $r3.<org.hibernate.cfg.PropertyHolder: java.lang.String getEntityName()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r6 = r0.<org.hibernate.cfg.annotations.CollectionBinder: java.lang.String propertyName>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2