(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3633 0)
(declare-sort var3642 0)
(declare-sort var3255 0)
(declare-sort var1804 0)
(declare-sort var3187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1743410042 (var1804 var3187) String)
(declare-fun cast-from-var3633-to-var1804 (var3633) var1804)
(declare-fun cast-from-var3642-to-var3187 (var3642) var3187)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3633 var3633)
(declare-const null-var3642 var3642)
(declare-const null-var3255 var3255)
(declare-const var2219 var3633) ; Statement: r1 := @this: org.hibernate.type.CurrencyType 
(assert (not (= var2219 null-var3633)))
(declare-const var2130 var3642) ; Statement: r2 := @parameter0: java.util.Currency 
(assert (not (= var2130 null-var3642)))
(declare-const var2160 var3255) ; Statement: r8 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var2160 null-var3255)))
(define-const var1336 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1336)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1336!1 String)
(assert (= var1336!1 ""))
(assert true)
(define-const var525 String (append/672562846 var1336!1 "\u0027")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1336!2 String)
(assert (= var1336!2 (str.++ var1336!1 "\u0027")))
(assert true)
(define-const var1313 String (toString/-1743410042 (cast-from-var3633-to-var1804 var2219) (cast-from-var3642-to-var3187 var2130))) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.type.CurrencyType: java.lang.String toString(java.lang.Object)>(r2) 
(assert true)
(define-const var781 String (append/672562846 var525 var1313)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var525!1 String)
(assert (= var525!1 (str.++ var525 var1313)))
(assert true)
(define-const var262 String (append/672562846 var781 "\u0027")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var781!1 String)
(assert (= var781!1 (str.++ var781 "\u0027")))
(assert true)
(define-const var1356 String (toString/-2075883882 var262)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1743410042=([org.hibernate.type.AbstractStandardBasicType, java.lang.Object], java.lang.String), cast-from-var3633-to-var1804=([org.hibernate.type.CurrencyType], org.hibernate.type.AbstractStandardBasicType), cast-from-var3642-to-var3187=([java.util.Currency], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3633=org.hibernate.type.CurrencyType, var2219=r1, var3642=java.util.Currency, var2130=r2, var3255=org.hibernate.dialect.Dialect, var2160=r8, var1336=$r0, var525=$r4, var1804=org.hibernate.type.AbstractStandardBasicType, var3187=java.lang.Object, var1313=$r3, var781=$r5, var262=$r6, var1356=$r7}
; {org.hibernate.type.CurrencyType=var3633, r1=var2219, java.util.Currency=var3642, r2=var2130, org.hibernate.dialect.Dialect=var3255, r8=var2160, $r0=var1336, $r4=var525, org.hibernate.type.AbstractStandardBasicType=var1804, java.lang.Object=var3187, $r3=var1313, $r5=var781, $r6=var262, $r7=var1356}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.type.AbstractStandardBasicType: java.lang.String toString(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.type.CurrencyType;	r2 := @parameter0: java.util.Currency;	r8 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r3 = virtualinvoke r1.<org.hibernate.type.CurrencyType: java.lang.String toString(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1