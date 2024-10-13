(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3420 0)
(declare-sort var423 0)
(declare-sort var1321 0)
(declare-sort var2009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyRefResolver/1317447214 (var3420) var1321)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1321_put/1464166817 (var1321 var2009 var2009) var2009)
(declare-fun cast-from-String-to-var2009 (String) var2009)
(declare-const null-var3420 var3420)
(declare-const null-String String)
(declare-const null-var1321 var1321)
(declare-const var587 var3420) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var587 null-var3420)))
(declare-const var3803 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3803 null-String)))
(declare-const var280 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var280 null-String)))
(declare-const var3223 String) ; Statement: r9 := @parameter2: java.lang.String 
(assert (not (= var3223 null-String)))
(define-const var1526 var1321 (propertyRefResolver/1317447214 var587)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver> 
 ; Statement: if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver> 
(assert (not (= var1526 null-var1321))) ; Cond: $r1 != null 
(define-const var2316 var1321 (propertyRefResolver/1317447214 var587)) ; Statement: $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver> 
(define-const var85 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var85)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var85!1 String)
(assert (= var85!1 ""))
(assert true)
(define-const var2054 String (append/672562846 var85!1 var3803)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var85!2 String)
(assert (= var85!2 (str.++ var85!1 var3803)))
(assert true)
(define-const var1522 String (append/672562846 var2054 ".")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2054!1 String)
(assert (= var2054!1 (str.++ var2054 ".")))
(assert true)
(define-const var3074 String (append/672562846 var1522 var280)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var1522!1 String)
(assert (= var1522!1 (str.++ var1522 var280)))
(assert true)
(define-const var544 String (toString/-2075883882 var3074)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1321_put/1464166817 var2316 (cast-from-String-to-var2009 var544) (cast-from-String-to-var2009 var3223))) ; Statement: interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, r9) 

(declare-const var2316!1 var1321)
(declare-const var544!1 String)
(declare-const var3223!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyRefResolver/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1321_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var2009=([java.lang.String], java.lang.Object)}
; {var3420=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var587=r0, var3803=r4, var423=null_type, var280=r6, var3223=r9, var1321=java.util.Map, var1526=$r1, var2316=$r3, var85=$r2, var2054=$r5, var1522=$r7, var3074=$r8, var544=$r10, var2009=java.lang.Object}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var3420, r0=var587, r4=var3803, null_type=var423, r6=var280, r9=var3223, java.util.Map=var1321, $r1=var1526, $r3=var2316, $r2=var85, $r5=var2054, $r7=var1522, $r8=var3074, $r10=var544, java.lang.Object=var2009}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r4 := @parameter0: java.lang.String;	r6 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.String;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver>;	if $r1 != null goto $r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver>;	$r3 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map propertyRefResolver>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r3.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, r9);	return
;block_num 2