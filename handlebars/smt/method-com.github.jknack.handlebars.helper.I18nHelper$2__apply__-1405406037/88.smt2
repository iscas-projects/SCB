(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2520 0)
(declare-sort var1032 0)
(declare-sort var3816 0)
(declare-sort var1361 0)
(declare-sort var1038 0)
(declare-sort var3185 0)
(declare-sort var1325 0)
(declare-sort var1294 0)
(declare-sort var881 0)
(declare-sort var933 0)
(declare-sort var472 0)
(declare-sort var3546 0)
(declare-sort var1342 0)
(declare-sort var1296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun defaultLocale/-1298207014 (var1038) var1361)
(declare-fun cast-from-var2520-to-var1038 (var2520) var1038)
(declare-fun toString/207920178 (var1361) String)
(declare-fun var3185_defaultIfEmpty/1559676416 (String String) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1325_fromString/-2081920795 (String) var1361)
(declare-fun defaultBundle/-1298207014 (var1038) String)
(declare-fun hash/-1089014572 (var3816 String var1294) var1294)
(declare-fun cast-from-String-to-var1294 (String) var1294)
(declare-fun cast-from-var1294-to-String (var1294) String)
(declare-fun getClass/1258963082 (var1294) ClassObject)
(declare-fun cast-from-var2520-to-var1294 (var2520) var1294)
(declare-fun getClassLoader/-563698447 (ClassObject) var881)
(declare-fun cast-from-var881-to-var1294 (var881) var1294)
(declare-fun cast-from-var1294-to-var881 (var1294) var881)
(declare-fun source/-1298207014 (var1038) var933)
(declare-fun var472-init () var472)
(declare-fun cast-from-var472-to-var933 (var472) var933)
(declare-fun charset/-1298207014 (var1038) var3546)
(declare-fun <init>/1804268733 (var472 var3546 String var1361 var881) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var1342_valueOf/1602327315 (Bool) var1342)
(declare-fun cast-from-var1342-to-var1294 (var1342) var1294)
(declare-fun cast-from-var1294-to-var1342 (var1294) var1342)
(declare-fun booleanValue/-1820462562 (var1342) Bool)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDisplayName/1930953927 (var1361) String)
(declare-fun var933_keys/1509965106 (var933 String var1361) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun length/-171891354 (String) Int)
(declare-fun var1296-init () var1296)
(declare-fun <init>/-35122668 (var1296 String) void)
(declare-const null-var2520 var2520)
(declare-const null-String String)
(declare-const null-var3816 var3816)
(declare-const null-var933 var933)
(declare-const var1616 var2520) ; Statement: r1 := @this: com.github.jknack.handlebars.helper.I18nHelper$2 
(assert (not (= var1616 null-var2520)))
(declare-const var3019 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3019 null-String)))
(declare-const var1695 var3816) ; Statement: r7 := @parameter1: com.github.jknack.handlebars.Options 
(assert (not (= var1695 null-var3816)))
(define-const var2749 var1361 (defaultLocale/-1298207014 (cast-from-var2520-to-var1038 var1616))) ; Statement: $r2 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.util.Locale defaultLocale> 
(assert true)
(define-const var2008 String (toString/207920178 var2749)) ; Statement: $r3 = virtualinvoke $r2.<java.util.Locale: java.lang.String toString()>() 
(define-const var1231 String (var3185_defaultIfEmpty/1559676416 (cast-from-String-to-String var3019) (cast-from-String-to-String var2008))) ; Statement: $r4 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.CharSequence defaultIfEmpty(java.lang.CharSequence,java.lang.CharSequence)>(r0, $r3) 
(define-const var3026 String (cast-from-String-to-String var1231)) ; Statement: $r5 = (java.lang.String) $r4 
(define-const var1031 var1361 (var1325_fromString/-2081920795 var3026)) ; Statement: r6 = staticinvoke <com.github.jknack.handlebars.internal.Locales: java.util.Locale fromString(java.lang.String)>($r5) 
(define-const var422 String (defaultBundle/-1298207014 (cast-from-var2520-to-var1038 var1616))) ; Statement: $r8 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.lang.String defaultBundle> 
(assert true)
(define-const var809 var1294 (hash/-1089014572 var1695 "bundle" (cast-from-String-to-var1294 var422))) ; Statement: $r9 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("bundle", $r8) 
(define-const var3663 String (cast-from-var1294-to-String var809)) ; Statement: r10 = (java.lang.String) $r9 
(assert true)
(define-const var1422 ClassObject (getClass/1258963082 (cast-from-var2520-to-var1294 var1616))) ; Statement: $r11 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var113 var881 (getClassLoader/-563698447 var1422)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var3422 var1294 (hash/-1089014572 var1695 "classLoader" (cast-from-var881-to-var1294 var113))) ; Statement: $r13 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("classLoader", $r12) 
(define-const var3520 var881 (cast-from-var1294-to-var881 var3422)) ; Statement: r14 = (java.lang.ClassLoader) $r13 
(define-const var2406 var933 (source/-1298207014 (cast-from-var2520-to-var1038 var1616))) ; Statement: $r15 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source> 
 ; Statement: if $r15 != null goto $r41 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source> 
(assert (not (not (= var2406 null-var933)))) ; Negate: Cond: $r15 != null  
(define-const var2092 var472 var472-init) ; Statement: $r42 = new com.github.jknack.handlebars.helper.DefI18nSource 
(define-const var2521 var933 (cast-from-var472-to-var933 var2092)) ; Statement: $r41 = $r42 
(define-const var1292 var3546 (charset/-1298207014 (cast-from-var2520-to-var1038 var1616))) ; Statement: $r39 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.nio.charset.Charset charset> 
(assert true)
;(assert (<init>/1804268733 var2092 var1292 var3663 var1031 var3520)) ; Statement: specialinvoke $r42.<com.github.jknack.handlebars.helper.DefI18nSource: void <init>(java.nio.charset.Charset,java.lang.String,java.util.Locale,java.lang.ClassLoader)>($r39, r10, r6, r14) 

(declare-const var2092!1 var472)
(declare-const var1292!1 var3546)
(declare-const var3663!1 String)
(declare-const var1031!1 var1361)
(declare-const var3520!1 var881)
 ; Statement: goto [?= r16 = $r41] 
(assert true) ; Non Conditional
(define-const var1499 var933 var2521) ; Statement: r16 = $r41 
(define-const var329 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var329)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var329!1 String)
(assert (= var329!1 ""))
(define-const var3326 var1342 (var1342_valueOf/1602327315 (ite (= 1 1) true false))) ; Statement: $r18 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1) 
(assert true)
(define-const var2237 var1294 (hash/-1089014572 var1695 "wrap" (cast-from-var1342-to-var1294 var3326))) ; Statement: $r19 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("wrap", $r18) 
(define-const var3711 var1342 (cast-from-var1294-to-var1342 var2237)) ; Statement: $r40 = (java.lang.Boolean) $r19 
(assert true)
(define-const var2624 Bool (booleanValue/-1820462562 var3711)) ; Statement: $z0 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z0 == 0 goto $r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ") 
(assert (= (ite var2624 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2452 String (append/672562846 var329!1 "  /* ")) ; Statement: $r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ") 
(declare-const var329!2 String)
(assert (= var329!2 (str.++ var329!1 "  /* ")))
(assert true)
(define-const var1160 String (getDisplayName/1930953927 var1031!1)) ; Statement: $r20 = virtualinvoke r6.<java.util.Locale: java.lang.String getDisplayName()>() 
(assert true)
(define-const var2172 String (append/672562846 var2452 var1160)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2452!1 String)
(assert (= var2452!1 (str.++ var2452 var1160)))
(assert true)
;(assert (append/672562846 var2172 " */\n")) ; Statement: virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */\n") 
(declare-const var2172!1 String)
(assert (= var2172!1 (str.++ var2172 " */\n")))
(assert true)
;(assert (append/672562846 var329!2 "  I18n.translations = I18n.translations || {};\n")) ; Statement: virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations = I18n.translations || {};\n") 
(declare-const var329!3 String)
(assert (= var329!3 (str.++ var329!2 "  I18n.translations = I18n.translations || {};\n")))
(assert true)
(define-const var821 String (append/672562846 var329!3 "  I18n.translations[\u0027")) ; Statement: $r24 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations[\'") 
(declare-const var329!4 String)
(assert (= var329!4 (str.++ var329!3 "  I18n.translations[\u0027")))
(assert true)
(define-const var2772 String (toString/207920178 var1031!1)) ; Statement: $r23 = virtualinvoke r6.<java.util.Locale: java.lang.String toString()>() 
(assert true)
(define-const var582 String (append/672562846 var821 var2772)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var821!1 String)
(assert (= var821!1 (str.++ var821 var2772)))
(assert true)
;(assert (append/672562846 var582 "\u0027] = {\n")) ; Statement: virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'] = {\n") 
(declare-const var582!1 String)
(assert (= var582!1 (str.++ var582 "\u0027] = {\n")))
(define-const var1731 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1731)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1731!1 String)
(assert (= var1731!1 ""))
(define-const var798 String ",\n") ; Statement: r27 = ",\n" 
(define-const var1189 (Array Int String) (var933_keys/1509965106 var1499 var3663!1 var1031!1)) ; Statement: $r38 = interfaceinvoke r16.<com.github.jknack.handlebars.helper.I18nSource: java.lang.String[] keys(java.lang.String,java.util.Locale)>(r10, r6) 
(define-const var2238 Int (getLength-Arr-String-1 var1189)) ; Statement: $i4 = lengthof $r38 
(define-const var2198 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= $i4 goto $i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>() 
(assert (>= var2198 var2238)) ; Cond: i5 >= $i4 
(assert true)
(define-const var873 Int (length/-171891354 var1731!1)) ; Statement: $i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n") 
(assert (<= var873 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (append/672562846 var329!4 "\n  };\n")) ; Statement: virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n") 
(declare-const var329!5 String)
(assert (= var329!5 (str.++ var329!4 "\n  };\n")))
(assert true)
(define-const var2348 Bool (booleanValue/-1820462562 var3711)) ; Statement: $z1 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: if $z1 == 0 goto $r45 = new com.github.jknack.handlebars.Handlebars$SafeString 
(assert (= (ite var2348 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1005 var1296 var1296-init) ; Statement: $r45 = new com.github.jknack.handlebars.Handlebars$SafeString 
(assert true)
;(assert (<init>/-35122668 var1005 (cast-from-String-to-String var329!5))) ; Statement: specialinvoke $r45.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r43) 

(declare-const var1005!1 var1296)
(declare-const var329!6 String)
 ; Statement: return $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {defaultLocale/-1298207014=([com.github.jknack.handlebars.helper.I18nHelper], java.util.Locale), cast-from-var2520-to-var1038=([com.github.jknack.handlebars.helper.I18nHelper$2], com.github.jknack.handlebars.helper.I18nHelper), toString/207920178=([java.util.Locale], java.lang.String), var3185_defaultIfEmpty/1559676416=([java.lang.CharSequence, java.lang.CharSequence], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1325_fromString/-2081920795=([java.lang.String], java.util.Locale), defaultBundle/-1298207014=([com.github.jknack.handlebars.helper.I18nHelper], java.lang.String), hash/-1089014572=([com.github.jknack.handlebars.Options, java.lang.String, java.lang.Object], java.lang.Object), cast-from-String-to-var1294=([java.lang.String], java.lang.Object), cast-from-var1294-to-String=([java.lang.Object], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2520-to-var1294=([com.github.jknack.handlebars.helper.I18nHelper$2], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), cast-from-var881-to-var1294=([java.lang.ClassLoader], java.lang.Object), cast-from-var1294-to-var881=([java.lang.Object], java.lang.ClassLoader), source/-1298207014=([com.github.jknack.handlebars.helper.I18nHelper], com.github.jknack.handlebars.helper.I18nSource), var472-init=([], com.github.jknack.handlebars.helper.DefI18nSource), cast-from-var472-to-var933=([com.github.jknack.handlebars.helper.DefI18nSource], com.github.jknack.handlebars.helper.I18nSource), charset/-1298207014=([com.github.jknack.handlebars.helper.I18nHelper], java.nio.charset.Charset), <init>/1804268733=([com.github.jknack.handlebars.helper.DefI18nSource, java.nio.charset.Charset, java.lang.String, java.util.Locale, java.lang.ClassLoader], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var1342_valueOf/1602327315=([boolean], java.lang.Boolean), cast-from-var1342-to-var1294=([java.lang.Boolean], java.lang.Object), cast-from-var1294-to-var1342=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDisplayName/1930953927=([java.util.Locale], java.lang.String), var933_keys/1509965106=([com.github.jknack.handlebars.helper.I18nSource, java.lang.String, java.util.Locale], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), length/-171891354=([java.lang.StringBuilder], int), var1296-init=([], com.github.jknack.handlebars.Handlebars$SafeString), <init>/-35122668=([com.github.jknack.handlebars.Handlebars$SafeString, java.lang.CharSequence], void)}
; {var2520=com.github.jknack.handlebars.helper.I18nHelper$2, var1616=r1, var3019=r0, var1032=null_type, var3816=com.github.jknack.handlebars.Options, var1695=r7, var1361=java.util.Locale, var1038=com.github.jknack.handlebars.helper.I18nHelper, var2749=$r2, var2008=$r3, var3185=org.apache.commons.lang3.StringUtils, var1231=$r4, var3026=$r5, var1325=com.github.jknack.handlebars.internal.Locales, var1031=r6, var422=$r8, var1294=java.lang.Object, var809=$r9, var3663=r10, var1422=$r11, var881=java.lang.ClassLoader, var113=$r12, var3422=$r13, var3520=r14, var933=com.github.jknack.handlebars.helper.I18nSource, var2406=$r15, var472=com.github.jknack.handlebars.helper.DefI18nSource, var2092=$r42, var2521=$r41, var3546=java.nio.charset.Charset, var1292=$r39, var1499=r16, var329=$r43, var1342=java.lang.Boolean, var3326=$r18, var2237=$r19, var3711=$r40, var2624=$z0, var2452=$r21, var1160=$r20, var2172=$r22, var821=$r24, var2772=$r23, var582=$r25, var1731=$r44, var798=r27, var1189=$r38, var2238=$i4, var2198=i5, var873=$i0, var2348=$z1, var1296=com.github.jknack.handlebars.Handlebars$SafeString, var1005=$r45}
; {com.github.jknack.handlebars.helper.I18nHelper$2=var2520, r1=var1616, r0=var3019, null_type=var1032, com.github.jknack.handlebars.Options=var3816, r7=var1695, java.util.Locale=var1361, com.github.jknack.handlebars.helper.I18nHelper=var1038, $r2=var2749, $r3=var2008, org.apache.commons.lang3.StringUtils=var3185, $r4=var1231, $r5=var3026, com.github.jknack.handlebars.internal.Locales=var1325, r6=var1031, $r8=var422, java.lang.Object=var1294, $r9=var809, r10=var3663, $r11=var1422, java.lang.ClassLoader=var881, $r12=var113, $r13=var3422, r14=var3520, com.github.jknack.handlebars.helper.I18nSource=var933, $r15=var2406, com.github.jknack.handlebars.helper.DefI18nSource=var472, $r42=var2092, $r41=var2521, java.nio.charset.Charset=var3546, $r39=var1292, r16=var1499, $r43=var329, java.lang.Boolean=var1342, $r18=var3326, $r19=var2237, $r40=var3711, $z0=var2624, $r21=var2452, $r20=var1160, $r22=var2172, $r24=var821, $r23=var2772, $r25=var582, $r44=var1731, r27=var798, $r38=var1189, $i4=var2238, i5=var2198, $i0=var873, $z1=var2348, com.github.jknack.handlebars.Handlebars$SafeString=var1296, $r45=var1005}
;seq <java.util.Locale: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Locale: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.helper.I18nHelper$2;	r0 := @parameter0: java.lang.String;	r7 := @parameter1: com.github.jknack.handlebars.Options;	$r2 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.util.Locale defaultLocale>;	$r3 = virtualinvoke $r2.<java.util.Locale: java.lang.String toString()>();	$r4 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.CharSequence defaultIfEmpty(java.lang.CharSequence,java.lang.CharSequence)>(r0, $r3);	$r5 = (java.lang.String) $r4;	r6 = staticinvoke <com.github.jknack.handlebars.internal.Locales: java.util.Locale fromString(java.lang.String)>($r5);	$r8 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.lang.String defaultBundle>;	$r9 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("bundle", $r8);	r10 = (java.lang.String) $r9;	$r11 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	$r13 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("classLoader", $r12);	r14 = (java.lang.ClassLoader) $r13;	$r15 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source>;	if $r15 != null goto $r41 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: com.github.jknack.handlebars.helper.I18nSource source>;	$r42 = new com.github.jknack.handlebars.helper.DefI18nSource;	$r41 = $r42;	$r39 = r1.<com.github.jknack.handlebars.helper.I18nHelper$2: java.nio.charset.Charset charset>;	specialinvoke $r42.<com.github.jknack.handlebars.helper.DefI18nSource: void <init>(java.nio.charset.Charset,java.lang.String,java.util.Locale,java.lang.ClassLoader)>($r39, r10, r6, r14);	goto [?= r16 = $r41];	r16 = $r41;	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r18 = staticinvoke <java.lang.Boolean: java.lang.Boolean valueOf(boolean)>(1);	$r19 = virtualinvoke r7.<com.github.jknack.handlebars.Options: java.lang.Object hash(java.lang.String,java.lang.Object)>("wrap", $r18);	$r40 = (java.lang.Boolean) $r19;	$z0 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>();	if $z0 == 0 goto $r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ");	$r21 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  /* ");	$r20 = virtualinvoke r6.<java.util.Locale: java.lang.String getDisplayName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" */\n");	virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations = I18n.translations || {};\n");	$r24 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  I18n.translations[\'");	$r23 = virtualinvoke r6.<java.util.Locale: java.lang.String toString()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'] = {\n");	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	r27 = ",\n";	$r38 = interfaceinvoke r16.<com.github.jknack.handlebars.helper.I18nSource: java.lang.String[] keys(java.lang.String,java.util.Locale)>(r10, r6);	$i4 = lengthof $r38;	i5 = 0;	if i5 >= $i4 goto $i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke $r44.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n");	virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n  };\n");	$z1 = virtualinvoke $r40.<java.lang.Boolean: boolean booleanValue()>();	if $z1 == 0 goto $r45 = new com.github.jknack.handlebars.Handlebars$SafeString;	$r45 = new com.github.jknack.handlebars.Handlebars$SafeString;	specialinvoke $r45.<com.github.jknack.handlebars.Handlebars$SafeString: void <init>(java.lang.CharSequence)>($r43);	return $r45
;block_num 8