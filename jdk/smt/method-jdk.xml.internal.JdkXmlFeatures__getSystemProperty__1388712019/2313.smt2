(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3521 0)
(declare-sort var2721 0)
(declare-sort var1885 0)
(declare-sort var3414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3414-init () var3414)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun systemProperty/1966633315 (var2721) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1788180247 (var3414 String) void)
(declare-const null-var3521 var3521)
(declare-const null-var2721 var2721)
(declare-const null-String String)
(declare-const null-var3414 var3414)
(declare-const var3768 var3521) ; Statement: r1 := @this: jdk.xml.internal.JdkXmlFeatures 
(assert (not (= var3768 null-var3521)))
(declare-const var2809 var2721) ; Statement: r2 := @parameter0: jdk.xml.internal.JdkXmlFeatures$XmlFeature 
(assert (not (= var2809 null-var2721)))
(declare-const var628 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var628 null-String)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2443 var3414) ; Statement: $r6 := @caughtexception 
(assert (not (= var2443 null-var3414)))
(define-const var1116 var3414 var3414-init) ; Statement: $r7 = new java.lang.NumberFormatException 
(define-const var128 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var128)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var128!1 String)
(assert (= var128!1 ""))
(assert true)
(define-const var2291 String (append/672562846 var128!1 "Invalid setting for system property: ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid setting for system property: ") 
(declare-const var128!2 String)
(assert (= var128!2 (str.++ var128!1 "Invalid setting for system property: ")))
(assert true)
(define-const var216 String (systemProperty/1966633315 var2809)) ; Statement: $r9 = virtualinvoke r2.<jdk.xml.internal.JdkXmlFeatures$XmlFeature: java.lang.String systemProperty()>() 
(assert true)
(define-const var1030 String (append/672562846 var2291 var216)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2291!1 String)
(assert (= var2291!1 (str.++ var2291 var216)))
(assert true)
(define-const var2623 String (toString/-2075883882 var1030)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1788180247 var1116 var2623)) ; Statement: specialinvoke $r7.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12) 

(declare-const var1116!1 var3414)
(declare-const var2623!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3414-init=([], java.lang.NumberFormatException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), systemProperty/1966633315=([jdk.xml.internal.JdkXmlFeatures$XmlFeature], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var3521=jdk.xml.internal.JdkXmlFeatures, var3768=r1, var2721=jdk.xml.internal.JdkXmlFeatures$XmlFeature, var2809=r2, var628=r0, var1885=null_type, var3414=java.lang.NumberFormatException, var2443=$r6, var1116=$r7, var128=$r8, var2291=$r10, var216=$r9, var1030=$r11, var2623=$r12}
; {jdk.xml.internal.JdkXmlFeatures=var3521, r1=var3768, jdk.xml.internal.JdkXmlFeatures$XmlFeature=var2721, r2=var2809, r0=var628, null_type=var1885, java.lang.NumberFormatException=var3414, $r6=var2443, $r7=var1116, $r8=var128, $r10=var2291, $r9=var216, $r11=var1030, $r12=var2623}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.xml.internal.JdkXmlFeatures;	r2 := @parameter0: jdk.xml.internal.JdkXmlFeatures$XmlFeature;	r0 := @parameter1: java.lang.String;	$r6 := @caughtexception;	$r7 = new java.lang.NumberFormatException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid setting for system property: ");	$r9 = virtualinvoke r2.<jdk.xml.internal.JdkXmlFeatures$XmlFeature: java.lang.String systemProperty()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.NumberFormatException: void <init>(java.lang.String)>($r12);	throw $r7
;block_num 2