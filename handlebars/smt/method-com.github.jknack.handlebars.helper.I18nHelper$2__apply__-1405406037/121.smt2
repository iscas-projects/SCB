(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1204 0)
(declare-sort var2501 0)
(declare-sort var1514 0)
(declare-sort var1849 0)
(declare-sort var633 0)
(declare-sort var79 0)
(declare-sort var1043 0)
(declare-sort var2237 0)
(declare-sort var3895 0)
(declare-sort var1874 0)
(declare-sort var1943 0)
(declare-sort var3199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultLocale/-1298207014 (var633) var1849)
(declare-fun cast-from-var1204-to-var633 (var1204) var633)
(declare-fun toString/207920178 (var1849) String)
(declare-fun var79_defaultIfEmpty/1559676416 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1043_fromString/-2081920795 (String) var1849)
(declare-fun defaultBundle/-1298207014 (var633) String)
(declare-fun hash/-1089014572 (var1514 String var2237) var2237)
(declare-fun cast-from-String-to-var2237 (String) var2237)
(declare-fun cast-from-var2237-to-String (var2237) String)
(declare-fun getClass/1258963082 (var2237) ClassObject)
(declare-fun cast-from-var1204-to-var2237 (var1204) var2237)
(declare-fun getClassLoader/-563698447 (ClassObject) var3895)
(declare-fun cast-from-var3895-to-var2237 (var3895) var2237)
(declare-fun cast-from-var2237-to-var3895 (var2237) var3895)
(declare-fun source/-1298207014 (var633) var1874)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1943_valueOf/1602327315 (Bool) var1943)
(declare-fun cast-from-var1943-to-var2237 (var1943) var2237)
(declare-fun cast-from-var2237-to-var1943 (var2237) var1943)
(declare-fun booleanValue/-1820462562 (var1943) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDisplayName/1930953927 (var1849) String)
(declare-fun var1874_keys/1509965106 (var1874 String var1849) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun length/-171891354 (String) Int)
(declare-fun var3199-init () var3199)
(declare-fun <init>/-35122668 (var3199 String) void)
(declare-const null-var1204 var1204)
(declare-const null-String String)
(declare-const null-var1514 var1514)
(declare-const null-var1874 var1874)
(declare-const var3767 var1204) ; Statement: r1 := @this: com.github.jknack.handlebars.helper.I18nHelper$2 
(assert (not (= var3767 null-var1204)))
(declare-const var1402 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1402 null-String)))
(declare-const var2811 var1514) ; Statement: r7 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var2811 null-var1514)))
(define-const var1696 var1849 (defaultLocale/-1298207014 (cast-from-var1204-to-var633 var3767))) ; Statement: $r2 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.util.Locale defaultLocale> 
(assert true)
(define-const var268 String (toString/207920178 var1696)) ; Statement: $r3 = virtualinvoke $r2.<java.util.Locale: java.lang.String toString()>() 
(define-const var1916 String (var79_defaultIfEmpty/1559676416 (cast-from-String-to-String var1402) (cast-from-String-to-String var268))) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.CharSequence defaultIfEmpty(java.lang.CharSequence,java.lang.CharSequence)>(r0, $r3) 
(define-const var2085 String (cast-from-String-to-String var1916)) ; Statement: $r5 = (java.lang.String) $r4 
(define-const var1092 var1849 (var1043_fromString/-2081920795 var2085)) ; Statement: r6 = staticinvoke <com.github.jknack.handlebars.internal.Locales: java.util.Locale fromString(java.lang.String)>($r5) 
(define-const var1 String (defaultBundle/-1298207014 (cast-from-var1204-to-var633 var3767))) ; Statement: $r8 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.lang.String defaultBundle> 
(assert true)
(define-const var1970 var2237 (hash/-1089014572 var2811 "bundle" (cast-from-String-to-var2237 var1))) ; Statement: $r9 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("bundle", $r8) 
(define-const var3587 String (cast-from-var2237-to-String var1970)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var3915 ClassObject (getClass/1258963082 (cast-from-var1204-to-var2237 var3767))) ; Statement: $r11 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1479 var3895 (getClassLoader/-563698447 var3915)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var1670 var2237 (hash/-1089014572 var2811 "classLoader" (cast-from-var3895-to-var2237 var1479))) ; Statement: $r13 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("classLoader", $r12) 
(define-const var536 var3895 (cast-from-var2237-to-var3895 var1670)) ; Statement: r14 = (java.lang.ClassLoader) $r13 
(define-const var2257 var1874 (source/-1298207014 (cast-from-var1204-to-var633 var3767))) ; Statement: $r15 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source> 
 ; Statement: if $r15 != null goto $r41 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source> 
(assert (not (= var2257 null-var1874))) ; Cond: $r15 != null 
(define-const var1154 var1874 (source/-1298207014 (cast-from-var1204-to-var633 var3767))) ; Statement: $r41 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source> 
(assert true) ; Non Conditional
(define-const var1208 var1874 var1154) ; Statement: r16 = $r41 
(define-const var3514 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3514)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3514!1 String)
(assert (= var3514!1 ""))
(define-const var2213 var1943 (var1943_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r18 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(assert true)
(define-const var3170 var2237 (hash/-1089014572 var2811 "wrap" (cast-from-var1943-to-var2237 var2213))) ; Statement: $r19 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("wrap", $r18) 
(define-const var846 var1943 (cast-from-var2237-to-var1943 var3170)) ; Statement: $r40 = (java.lang.Boolean) $r19 
(assert true)
(define-const var752 Bool (booleanValue/-1820462562 var846)) ; Statement: $z0 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ") 
(assert (= (ite var752 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2717 String (append/672562846 var3514!1 "  /* ")) ; Statement: $r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ") 
(declare-const var3514!2 String)
(assert (= var3514!2 (str.++ var3514!1 "  /* ")))
(assert true)
(define-const var3996 String (getDisplayName/1930953927 var1092)) ; Statement: $r20 = virtualinvoke r6.<java.util.Locale: java.lang.String getDisplayName()>() 
(assert true)
(define-const var2269 String (append/672562846 var2717 var3996)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2717!1 String)
(assert (= var2717!1 (str.++ var2717 var3996)))
(assert true)
;(assert (append/672562846 var2269 " */\n")) ; Statement: virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */\n") 
(declare-const var2269!1 String)
(assert (= var2269!1 (str.++ var2269 " */\n")))
(assert true)
;(assert (append/672562846 var3514!2 "  I18n.translations = I18n.translations || {};\n")) ; Statement: virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations = I18n.translations || {};\n") 
(declare-const var3514!3 String)
(assert (= var3514!3 (str.++ var3514!2 "  I18n.translations = I18n.translations || {};\n")))
(assert true)
(define-const var1785 String (append/672562846 var3514!3 "  I18n.translations[\u0027")) ; Statement: $r24 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations[\'") 
(declare-const var3514!4 String)
(assert (= var3514!4 (str.++ var3514!3 "  I18n.translations[\u0027")))
(assert true)
(define-const var1486 String (toString/207920178 var1092)) ; Statement: $r23 = virtualinvoke r6.<java.util.Locale: java.lang.String toString()>() 
(assert true)
(define-const var3185 String (append/672562846 var1785 var1486)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1785!1 String)
(assert (= var1785!1 (str.++ var1785 var1486)))
(assert true)
;(assert (append/672562846 var3185 "\u0027] = {\n")) ; Statement: virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'] = {\n") 
(declare-const var3185!1 String)
(assert (= var3185!1 (str.++ var3185 "\u0027] = {\n")))
(define-const var3230 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3230)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3230!1 String)
(assert (= var3230!1 ""))
(define-const var1834 String ",\n") ; Statement: r27 = ",\n" 
(define-const var471 (Array Int String) (var1874_keys/1509965106 var1208 var3587 var1092)) ; Statement: $r38 = interfaceinvoke r16.<com.github.jknack.handlebars.helper.I18nSource: java.lang.String[] keys(java.lang.String,java.util.Locale)>(r10, r6) 
(define-const var2508 Int (getLength-Arr-String-1 var471)) ; Statement: $i4 = lengthof $r38 
(define-const var141 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= $i4 goto $i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>() 
(assert (>= var141 var2508)) ; Cond: i5 >= $i4 
(assert true)
(define-const var907 Int (length/-171891354 var3230!1)) ; Statement: $i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n") 
(assert (<= var907 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (append/672562846 var3514!4 "\n  };\n")) ; Statement: virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n") 
(declare-const var3514!5 String)
(assert (= var3514!5 (str.++ var3514!4 "\n  };\n")))
(assert true)
(define-const var3210 Bool (booleanValue/-1820462562 var846)) ; Statement: $z1 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 == 0 goto $r45 = new com.github.jknack.handlebars.Handlebars$SafeString 
(assert (= (ite var3210 1 0) 0)) ; Cond: $z1 == 0 
(define-const var772 var3199 var3199-init) ; Statement: $r45 = new com.github.jknack.handlebars.Handlebars$SafeString 
(assert true)
;(assert (<init>/-35122668 var772 (cast-from-String-to-String var3514!5))) ; Statement: specialinvoke $r45.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r43) 

(declare-const var772!1 var3199)
(declare-const var3514!6 String)
 ; Statement: return $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultLocale/-1298207014=([com.github.jknack.handlebars.helper.I18nHelper], java.util.Locale), cast-from-var1204-to-var633=([com.github.jknack.handlebars.helper.I18nHelper$2], com.github.jknack.handlebars.helper.I18nHelper), toString/207920178=([java.util.Locale], java.lang.String), var79_defaultIfEmpty/1559676416=([java.lang.CharSequence, java.lang.CharSequence], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1043_fromString/-2081920795=([java.lang.String], java.util.Locale), defaultBundle/-1298207014=([com.github.jknack.handlebars.helper.I18nHelper], java.lang.String), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-String-to-var2237=([java.lang.String], java.lang.Object), cast-from-var2237-to-String=([java.lang.Object], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1204-to-var2237=([com.github.jknack.handlebars.helper.I18nHelper$2], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), cast-from-var3895-to-var2237=([java.lang.ClassLoader], java.lang.Object), cast-from-var2237-to-var3895=([java.lang.Object], java.lang.ClassLoader), source/-1298207014=([com.github.jknack.handlebars.helper.I18nHelper], com.github.jknack.handlebars.helper.I18nSource), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1943_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var1943-to-var2237=([java.lang.Boolean], java.lang.Object), cast-from-var2237-to-var1943=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDisplayName/1930953927=([java.util.Locale], java.lang.String), var1874_keys/1509965106=([com.github.jknack.handlebars.helper.I18nSource, java.lang.String, java.util.Locale], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), length/-171891354=([java.lang.StringBuilder], int), var3199-init=([], com.github.jknack.handlebars.Handlebars$SafeString), <init>/-35122668=([com.github.jknack.handlebars.Handlebars$SafeString, java.lang.CharSequence], void)}
; {var1204=com.github.jknack.handlebars.helper.I18nHelper$2, var3767=r1, var1402=r0, var2501=null_type, var1514=com.github.jknack.handlebars.Options, var2811=r7, var1849=java.util.Locale, var633=com.github.jknack.handlebars.helper.I18nHelper, var1696=$r2, var268=$r3, var79=org.apache.commons.lang3.StringUtils, var1916=$r4, var2085=$r5, var1043=com.github.jknack.handlebars.internal.Locales, var1092=r6, var1=$r8, var2237=java.lang.Object, var1970=$r9, var3587=r10, var3915=$r11, var3895=java.lang.ClassLoader, var1479=$r12, var1670=$r13, var536=r14, var1874=com.github.jknack.handlebars.helper.I18nSource, var2257=$r15, var1154=$r41, var1208=r16, var3514=$r43, var1943=java.lang.Boolean, var2213=$r18, var3170=$r19, var846=$r40, var752=$z0, var2717=$r21, var3996=$r20, var2269=$r22, var1785=$r24, var1486=$r23, var3185=$r25, var3230=$r44, var1834=r27, var471=$r38, var2508=$i4, var141=i5, var907=$i0, var3210=$z1, var3199=com.github.jknack.handlebars.Handlebars$SafeString, var772=$r45}
; {com.github.jknack.handlebars.helper.I18nHelper$2=var1204, r1=var3767, r0=var1402, null_type=var2501, com.github.jknack.handlebars.Options=var1514, r7=var2811, java.util.Locale=var1849, com.github.jknack.handlebars.helper.I18nHelper=var633, $r2=var1696, $r3=var268, org.apache.commons.lang3.StringUtils=var79, $r4=var1916, $r5=var2085, com.github.jknack.handlebars.internal.Locales=var1043, r6=var1092, $r8=var1, java.lang.Object=var2237, $r9=var1970, r10=var3587, $r11=var3915, java.lang.ClassLoader=var3895, $r12=var1479, $r13=var1670, r14=var536, com.github.jknack.handlebars.helper.I18nSource=var1874, $r15=var2257, $r41=var1154, r16=var1208, $r43=var3514, java.lang.Boolean=var1943, $r18=var2213, $r19=var3170, $r40=var846, $z0=var752, $r21=var2717, $r20=var3996, $r22=var2269, $r24=var1785, $r23=var1486, $r25=var3185, $r44=var3230, r27=var1834, $r38=var471, $i4=var2508, i5=var141, $i0=var907, $z1=var3210, com.github.jknack.handlebars.Handlebars$SafeString=var3199, $r45=var772}
;seq <java.util.Locale: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Locale: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.helper.I18nHelper$2;	r0 := @parameter0: java.lang.String;	r7 := @parameter1: com.github.jknack.handlebars.Options;	$r2 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.util.Locale defaultLocale>;	$r3 = virtualinvoke $r2.<java.util.Locale: java.lang.String toString()>();	$r4 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.CharSequence defaultIfEmpty(java.lang.CharSequence,java.lang.CharSequence)>(r0, $r3);	$r5 = (java.lang.String) $r4;	r6 = staticinvoke <com.github.jknack.handlebars.internal.Locales: java.util.Locale fromString(java.lang.String)>($r5);	$r8 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.lang.String defaultBundle>;	$r9 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("bundle", $r8);	r10 = (java.lang.String) $r9;	$r11 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r13 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("classLoader", $r12);	r14 = (java.lang.ClassLoader) $r13;	$r15 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source>;	if $r15 != null goto $r41 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source>;	$r41 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source>;	r16 = $r41;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r18 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r19 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("wrap", $r18);	$r40 = (java.lang.Boolean) $r19;	$z0 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ");	$r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ");	$r20 = virtualinvoke r6.<java.util.Locale: java.lang.String getDisplayName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */\n");	virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations = I18n.translations || {};\n");	$r24 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations[\'");	$r23 = virtualinvoke r6.<java.util.Locale: java.lang.String toString()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'] = {\n");	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	r27 = ",\n";	$r38 = interfaceinvoke r16.<com.github.jknack.handlebars.helper.I18nSource: java.lang.String[] keys(java.lang.String,java.util.Locale)>(r10, r6);	$i4 = lengthof $r38;	i5 = 0;	if i5 >= $i4 goto $i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n");	virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n");	$z1 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>();	if $z1 == 0 goto $r45 = new com.github.jknack.handlebars.Handlebars$SafeString;	$r45 = new com.github.jknack.handlebars.Handlebars$SafeString;	specialinvoke $r45.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r43);	return $r45
;block_num 8