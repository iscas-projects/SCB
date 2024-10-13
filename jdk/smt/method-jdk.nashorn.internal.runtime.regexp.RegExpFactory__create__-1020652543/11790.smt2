(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3868 0)
(declare-sort var1326 0)
(declare-sort var3673 0)
(declare-sort var3395 0)
(declare-sort var535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1326_get/1088891777 (var1326 var3395) var3395)
(declare-fun cast-from-String-to-var3395 (String) var3395)
(declare-fun cast-from-var3395-to-var535 (var3395) var535)
(declare-const null-String String)
(declare-const var3673-REGEXP_CACHE var1326)
(declare-const null-var535 var535)
(declare-const var2624 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2624 null-String)))
(declare-const var2021 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2021 null-String)))
(define-const var2835 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2835)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2835!1 String)
(assert (= var2835!1 ""))
(assert true)
(define-const var1454 String (append/672562846 var2835!1 var2624)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2835!2 String)
(assert (= var2835!2 (str.++ var2835!1 var2624)))
(assert true)
(define-const var280 String (append/672562846 var1454 "/")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1454!1 String)
(assert (= var1454!1 (str.++ var1454 "/")))
(assert true)
(define-const var3087 String (append/672562846 var280 var2021)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var280!1 String)
(assert (= var280!1 (str.++ var280 var2021)))
(assert true)
(define-const var2995 String (toString/-2075883882 var3087)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var494 var1326 var3673-REGEXP_CACHE) ; Statement: $r7 = <jdk.nashorn.internal.runtime.regexp.RegExpFactory: java.util.Map REGEXP_CACHE> 
(define-const var972 var3395 (var1326_get/1088891777 var494 (cast-from-String-to-var3395 var2995))) ; Statement: $r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6) 
(define-const var1452 var535 (cast-from-var3395-to-var535 var972)) ; Statement: r11 = (jdk.nashorn.internal.runtime.regexp.RegExp) $r8 
 ; Statement: if r11 != null goto return r11 
(assert (not (= var1452 null-var535))) ; Cond: r11 != null 
 ; Statement: return r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1326_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3395=([java.lang.String], java.lang.Object), cast-from-var3395-to-var535=([java.lang.Object], jdk.nashorn.internal.runtime.regexp.RegExp)}
; {var2624=r1, var3868=null_type, var2021=r3, var2835=$r0, var1454=$r2, var280=$r4, var3087=$r5, var2995=r6, var1326=java.util.Map, var3673=jdk.nashorn.internal.runtime.regexp.RegExpFactory, var494=$r7, var3395=java.lang.Object, var972=$r8, var535=jdk.nashorn.internal.runtime.regexp.RegExp, var1452=r11}
; {r1=var2624, null_type=var3868, r3=var2021, $r0=var2835, $r2=var1454, $r4=var280, $r5=var3087, r6=var2995, java.util.Map=var1326, jdk.nashorn.internal.runtime.regexp.RegExpFactory=var3673, $r7=var494, java.lang.Object=var3395, $r8=var972, jdk.nashorn.internal.runtime.regexp.RegExp=var535, r11=var1452}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = <jdk.nashorn.internal.runtime.regexp.RegExpFactory: java.util.Map REGEXP_CACHE>;	$r8 = interfaceinvoke $r7.<java.util.Map: java.lang.Object get(java.lang.Object)>(r6);	r11 = (jdk.nashorn.internal.runtime.regexp.RegExp) $r8;	if r11 != null goto return r11;	return r11
;block_num 2