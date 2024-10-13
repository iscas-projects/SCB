(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1412 0)
(declare-sort var704 0)
(declare-sort var1134 0)
(declare-sort var1010 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var704_check/-951860758 (String var1134) void)
(declare-fun cast-from-var1412-to-var1134 (var1412) var1134)
(declare-fun intValue/1676201972 (var1412) Int)
(declare-fun var1010_getVersion/1285550291 () var1412)
(declare-fun var1706-init () var1706)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1134) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1706 String) void)
(declare-const null-var1412 var1412)
(declare-const var1142 var1412) ; Statement: r0 := @parameter0: freemarker.template.Version 
(assert (not (= var1142 null-var1412)))
;(assert (var704_check/-951860758 "incompatibleImprovements" (cast-from-var1412-to-var1134 var1142))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("incompatibleImprovements", r0) 

(declare-const var1320 String)
(declare-const var1142!1 var1412)
(assert true)
(define-const var321 Int (intValue/1676201972 var1142!1)) ; Statement: i0 = virtualinvoke r0.<freemarker.template.Version: int intValue()>() 
(define-const var3612 var1412 var1010_getVersion/1285550291) ; Statement: $r1 = staticinvoke <freemarker.template.Configuration: freemarker.template.Version getVersion()>() 
(assert true)
(define-const var1955 Int (intValue/1676201972 var3612)) ; Statement: $i1 = virtualinvoke $r1.<freemarker.template.Version: int intValue()>() 
 ; Statement: if i0 <= $i1 goto $i2 = <freemarker.template._VersionInts: int V_2_3_0> 
(assert (not (<= var321 var1955))) ; Negate: Cond: i0 <= $i1  
(define-const var2621 var1706 var1706-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1359 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1359)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1359!1 String)
(assert (= var1359!1 ""))
(assert true)
(define-const var194 String (append/672562846 var1359!1 "The FreeMarker version requested by \u0022incompatibleImprovements\u0022 was ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The FreeMarker version requested by \"incompatibleImprovements\" was ") 
(declare-const var1359!2 String)
(assert (= var1359!2 (str.++ var1359!1 "The FreeMarker version requested by \u0022incompatibleImprovements\u0022 was ")))
(assert true)
(define-const var2728 String (append/-1031950772 var194 (cast-from-var1412-to-var1134 var1142!1))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var194!1 String)
(assert (str.prefixof var194 var194!1))
(assert true)
(define-const var3410 String (append/672562846 var2728 ", but the installed FreeMarker version is only ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the installed FreeMarker version is only ") 
(declare-const var2728!1 String)
(assert (= var2728!1 (str.++ var2728 ", but the installed FreeMarker version is only ")))
(define-const var2871 var1412 var1010_getVersion/1285550291) ; Statement: $r7 = staticinvoke <freemarker.template.Configuration: freemarker.template.Version getVersion()>() 
(assert true)
(define-const var3323 String (append/-1031950772 var3410 (cast-from-var1412-to-var1134 var2871))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var3410!1 String)
(assert (str.prefixof var3410 var3410!1))
(assert true)
(define-const var890 String (append/672562846 var3323 ". You may need to upgrade FreeMarker in your project.")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". You may need to upgrade FreeMarker in your project.") 
(declare-const var3323!1 String)
(assert (= var3323!1 (str.++ var3323 ". You may need to upgrade FreeMarker in your project.")))
(assert true)
(define-const var2855 String (toString/-2075883882 var890)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2621 var2855)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var2621!1 var1706)
(declare-const var2855!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var704_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-var1412-to-var1134=([freemarker.template.Version], java.lang.Object), intValue/1676201972=([freemarker.template.Version], int), var1010_getVersion/1285550291=([], freemarker.template.Version), var1706-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1412=freemarker.template.Version, var1142=r0, var704=freemarker.template.utility.NullArgumentException, var1134=java.lang.Object, var1320="incompatibleImprovements", var321=i0, var1010=freemarker.template.Configuration, var3612=$r1, var1955=$i1, var1706=java.lang.IllegalArgumentException, var2621=$r3, var1359=$r4, var194=$r5, var2728=$r6, var3410=$r8, var2871=$r7, var3323=$r9, var890=$r10, var2855=$r11}
; {freemarker.template.Version=var1412, r0=var1142, freemarker.template.utility.NullArgumentException=var704, java.lang.Object=var1134, "incompatibleImprovements"=var1320, i0=var321, freemarker.template.Configuration=var1010, $r1=var3612, $i1=var1955, java.lang.IllegalArgumentException=var1706, $r3=var2621, $r4=var1359, $r5=var194, $r6=var2728, $r8=var3410, $r7=var2871, $r9=var3323, $r10=var890, $r11=var2855}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: freemarker.template.Version;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("incompatibleImprovements", r0);	i0 = virtualinvoke r0.<freemarker.template.Version: int intValue()>();	$r1 = staticinvoke <freemarker.template.Configuration: freemarker.template.Version getVersion()>();	$i1 = virtualinvoke $r1.<freemarker.template.Version: int intValue()>();	if i0 <= $i1 goto $i2 = <freemarker.template._VersionInts: int V_2_3_0>;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The FreeMarker version requested by \"incompatibleImprovements\" was ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but the installed FreeMarker version is only ");	$r7 = staticinvoke <freemarker.template.Configuration: freemarker.template.Version getVersion()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". You may need to upgrade FreeMarker in your project.");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r3
;block_num 2