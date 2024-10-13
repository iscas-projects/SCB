(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var725 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/2094709921 (var725) var1709)
(declare-fun append/-1031950772 (String var1709) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var725 var725)
(declare-const var364 var725) ; Statement: r1 := @this: org.hibernate.engine.spi.VersionValue 
(assert (not (= var364 null-var725)))
(define-const var1214 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1214)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1214!1 String)
(assert (= var1214!1 ""))
(assert true)
(define-const var2119 String (append/672562846 var1214!1 "version unsaved-value: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("version unsaved-value: ") 
(declare-const var1214!2 String)
(assert (= var1214!2 (str.++ var1214!1 "version unsaved-value: ")))
(define-const var3883 var1709 (value/2094709921 var364)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.VersionValue: java.lang.Object value> 
(assert true)
(define-const var719 String (append/-1031950772 var2119 var3883)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2119!1 String)
(assert (str.prefixof var2119 var2119!1))
(assert true)
(define-const var3061 String (toString/-2075883882 var719)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/2094709921=([org.hibernate.engine.spi.VersionValue], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var725=org.hibernate.engine.spi.VersionValue, var364=r1, var1214=$r0, var2119=$r3, var1709=java.lang.Object, var3883=$r2, var719=$r4, var3061=$r5}
; {org.hibernate.engine.spi.VersionValue=var725, r1=var364, $r0=var1214, $r3=var2119, java.lang.Object=var1709, $r2=var3883, $r4=var719, $r5=var3061}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.VersionValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("version unsaved-value: ");	$r2 = r1.<org.hibernate.engine.spi.VersionValue: java.lang.Object value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1