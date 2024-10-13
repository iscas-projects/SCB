(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1284 0)
(declare-sort var191 0)
(declare-sort var1702 0)
(declare-sort var2030 0)
(declare-sort var2314 0)
(declare-sort var3019 0)
(declare-sort var1900 0)
(declare-sort var2227 0)
(declare-sort var3757 0)
(declare-sort var2613 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3019_max/1360571700 (Int Int) Int)
(declare-fun cast-from-var1702-to-var1900 (var1702) var1900)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filename/-1137484017 (var1284) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun length/-171891354 (String) Int)
(declare-fun var2227_split/1050514167 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2227_join/1770488023 ((Array Int var1702) String Int Int) String)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1702__ ((Array Int String)) (Array Int var1702))
(declare-fun substring/-975425934 (String Int) String)
(declare-fun lines/-1679411926 (var1284 var191) (Array Int String))
(declare-fun underline/1350738831 (var1284 String (Array Int String) Int Int) void)
(declare-fun lineAt/905040310 (var1284 (Array Int String) Int) String)
(declare-fun var3757-init () var3757)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1514878111 (var3757 String Int Int String String String) void)
(declare-fun var2613-init () var2613)
(declare-fun <init>/-2128942556 (var2613 var3757) void)
(declare-const null-var1284 var1284)
(declare-const null-var191 var191)
(declare-const null-var1702 var1702)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var2314 var2314)
(declare-const null-var1900 var1900)
(declare-const var1611 var1284) ; Statement: r3 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter 
(assert (not (= var1611 null-var1284)))
(declare-const var310 var191) ; Statement: r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var310 null-var191)))
(declare-const var1326 var1702) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1326 null-var1702)))
(declare-const var1101 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1101 null-Int)))
(declare-const var3964 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3964 null-Int)))
(declare-const var2506 String) ; Statement: r13 := @parameter4: java.lang.String 
(assert (not (= var2506 null-String)))
(declare-const var620 var2314) ; Statement: r30 := @parameter5: com.github.jknack.handlebars.internal.antlr.RecognitionException 
(assert (not (= var620 null-var2314)))
(define-const var1928 Int (var3019_max/1360571700 1 var3964)) ; Statement: i1 = staticinvoke <java.lang.Math: int max(int,int)>(1, i0) 
(define-const var3588 var1900 (cast-from-var1702-to-var1900 var1326)) ; Statement: r1 = (com.github.jknack.handlebars.internal.antlr.CommonToken) r0 
(define-const var2873 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2873)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2873!1 String)
(assert (= var2873!1 ""))
(define-const var661 String (filename/-1137484017 var1611)) ; Statement: $r4 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename> 
(assert true)
(define-const var2704 String (append/672562846 var2873!1 var661)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2873!2 String)
(assert (= var2873!2 (str.++ var2873!1 var661)))
(assert true)
(define-const var1858 String (append/672562846 var2704 ":")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2704!1 String)
(assert (= var2704!1 (str.++ var2704 ":")))
(assert true)
(define-const var3945 String (append/-1001720160 var1858 var1101)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1858!1 String)
(assert (str.prefixof var1858 var1858!1))
(assert true)
(define-const var2999 String (append/672562846 var3945 ":")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3945!1 String)
(assert (= var3945!1 (str.++ var3945 ":")))
(assert true)
(define-const var3625 String (append/-1001720160 var2999 var1928)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2999!1 String)
(assert (str.prefixof var2999 var2999!1))
(assert true)
;(assert (append/672562846 var3625 ": ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3625!1 String)
(assert (= var3625!1 (str.++ var3625 ": ")))
(define-const var3707 String "") ; Statement: r31 = "" 
(assert true)
(define-const var3267 Int (length/-171891354 var2873!2)) ; Statement: i3 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
 ; Statement: if r1 != null goto $r11 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found: \'") 
(assert (not (not (= var3588 null-var1900)))) ; Negate: Cond: r1 != null  
(define-const var2546 (Array Int String) (var2227_split/1050514167 var2506 "\n")) ; Statement: r32 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] split(java.lang.String,java.lang.String)>(r13, "\n") 
(define-const var3721 String (select var2546 0)) ; Statement: $r26 = r32[0] 
(assert true)
;(assert (append/672562846 var2873!2 var3721)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2873!3 String)
(assert (= var2873!3 (str.++ var2873!2 var3721)))
(define-const var1304 Int (getLength-Arr-String-1 var2546)) ; Statement: $i5 = lengthof r32 
(define-const var2821 String (var2227_join/1770488023 (cast-from-__Array__Int__String__-to-__Array__Int__var1702__ var2546) "\n" 1 var1304)) ; Statement: $r27 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String,int,int)>(r32, "\n", 1, $i5) 
(define-const var3707!1 String (str.++ "\n\u0001" var2821)) ; Statement: r31 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r27) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\n\u0001") 
 ; Statement: goto [?= $r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2203 String (substring/-975425934 var2873!3 var3267)) ; Statement: $r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3) 
(assert true)
;(assert (append/672562846 var2873!3 "\n")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2873!4 String)
(assert (= var2873!4 (str.++ var2873!3 "\n")))
(assert true)
(define-const var1570 Int (length/-171891354 var2873!4)) ; Statement: $i6 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var1610 (Array Int String) (lines/-1679411926 var1611 var310)) ; Statement: $r29 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String[] lines(com.github.jknack.handlebars.internal.antlr.Recognizer)>(r16) 
(assert true)
;(assert (underline/1350738831 var1611 var2873!4 var1610 var1101 var1928)) ; Statement: virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: void underline(java.lang.StringBuilder,java.lang.String[],int,int)>($r2, $r29, i2, i1) 

(declare-const var1611!1 var1284)
(declare-const var2873!5 String)
(declare-const var1610!1 (Array Int String))
(declare-const var1101!1 Int)
(declare-const var1928!1 Int)
(define-const var2525 Int (getLength-Arr-String-1 var1610!1)) ; Statement: $i4 = lengthof $r29 
 ; Statement: if i2 <= $i4 goto $i7 = i2 - 2 
(assert (<= var1101!1 var2525)) ; Cond: i2 <= $i4 
(define-const var1954 Int (- var1101!1 2)) ; Statement: $i7 = i2 - 2 
(assert true) ; Non Conditional
(assert true)
(define-const var3881 String (lineAt/905040310 var1611!1 var1610!1 var1954)) ; Statement: $r23 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, $i7) 
(assert true)
(define-const var2515 String (lineAt/905040310 var1611!1 var1610!1 var1101!1)) ; Statement: $r24 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, i2) 
(assert true)
(define-const var476 String (substring/-975425934 var2873!5 var1570)) ; Statement: $r17 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>($i6) 
(define-const var1120 String (str.++ "\u0001\n\u0001\n\u0001" var3881 var476 var2515)) ; Statement: $r25 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>($r23, $r17, $r24) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n\u0001\n\u0001") 
(assert true)
;(assert (append/672562846 var2873!5 var3707!1)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var2873!6 String)
(assert (= var2873!6 (str.++ var2873!5 var3707!1)))
(define-const var3346 var3757 var3757-init) ; Statement: $r18 = new com.github.jknack.handlebars.HandlebarsError 
(define-const var2805 String (filename/-1137484017 var1611!1)) ; Statement: $r19 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename> 
(assert true)
(define-const var1489 String (replace/2138489945 var2203 (cast-from-String-to-String "<EOF>") (cast-from-String-to-String "EOF"))) ; Statement: $r21 = virtualinvoke $r28.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<EOF>", "EOF") 
(assert true)
(define-const var3732 String (toString/-2075883882 var2873!6)) ; Statement: $r20 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1514878111 var3346 var2805 var1101!1 var1928!1 var1489 var1120 var3732)) ; Statement: specialinvoke $r18.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r19, i2, i1, $r21, $r25, $r20) 

(declare-const var3346!1 var3757)
(declare-const var2805!1 String)
(declare-const var1101!2 Int)
(declare-const var1928!2 Int)
(declare-const var1489!1 String)
(declare-const var1120!1 String)
(declare-const var3732!1 String)
(define-const var3948 var2613 var2613-init) ; Statement: $r22 = new com.github.jknack.handlebars.HandlebarsException 
(assert true)
;(assert (<init>/-2128942556 var3948 var3346!1)) ; Statement: specialinvoke $r22.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r18) 

(declare-const var3948!1 var2613)
(declare-const var3346!2 var3757)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var3019_max/1360571700=([int, int], int), cast-from-var1702-to-var1900=([java.lang.Object], com.github.jknack.handlebars.internal.antlr.CommonToken), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filename/-1137484017=([com.github.jknack.handlebars.internal.HbsErrorReporter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), var2227_split/1050514167=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var2227_join/1770488023=([java.lang.Object[], java.lang.String, int, int], java.lang.String), cast-from-__Array__Int__String__-to-__Array__Int__var1702__=([java.lang.String[]], java.lang.Object[]), substring/-975425934=([java.lang.StringBuilder, int], java.lang.String), lines/-1679411926=([com.github.jknack.handlebars.internal.HbsErrorReporter, com.github.jknack.handlebars.internal.antlr.Recognizer], java.lang.String[]), underline/1350738831=([com.github.jknack.handlebars.internal.HbsErrorReporter, java.lang.StringBuilder, java.lang.String[], int, int], void), lineAt/905040310=([com.github.jknack.handlebars.internal.HbsErrorReporter, java.lang.String[], int], java.lang.String), var3757-init=([], com.github.jknack.handlebars.HandlebarsError), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1514878111=([com.github.jknack.handlebars.HandlebarsError, java.lang.String, int, int, java.lang.String, java.lang.String, java.lang.String], void), var2613-init=([], com.github.jknack.handlebars.HandlebarsException), <init>/-2128942556=([com.github.jknack.handlebars.HandlebarsException, com.github.jknack.handlebars.HandlebarsError], void)}
; {var1284=com.github.jknack.handlebars.internal.HbsErrorReporter, var1611=r3, var191=com.github.jknack.handlebars.internal.antlr.Recognizer, var310=r16, var1702=java.lang.Object, var1326=r0, var1101=i2, var3964=i0, var2506=r13, var2030=null_type, var2314=com.github.jknack.handlebars.internal.antlr.RecognitionException, var620=r30, var3019=java.lang.Math, var1928=i1, var1900=com.github.jknack.handlebars.internal.antlr.CommonToken, var3588=r1, var2873=$r2, var661=$r4, var2704=$r5, var1858=$r6, var3945=$r7, var2999=$r8, var3625=$r9, var3707=r31, var3267=i3, var2227=org.apache.commons.lang3.StringUtils, var2546=r32, var3721=$r26, var1304=$i5, var2821=$r27, var2203=$r28, var1570=$i6, var1610=$r29, var2525=$i4, var1954=$i7, var3881=$r23, var2515=$r24, var476=$r17, var1120=$r25, var3757=com.github.jknack.handlebars.HandlebarsError, var3346=$r18, var2805=$r19, var1489=$r21, var3732=$r20, var2613=com.github.jknack.handlebars.HandlebarsException, var3948=$r22}
; {com.github.jknack.handlebars.internal.HbsErrorReporter=var1284, r3=var1611, com.github.jknack.handlebars.internal.antlr.Recognizer=var191, r16=var310, java.lang.Object=var1702, r0=var1326, i2=var1101, i0=var3964, r13=var2506, null_type=var2030, com.github.jknack.handlebars.internal.antlr.RecognitionException=var2314, r30=var620, java.lang.Math=var3019, i1=var1928, com.github.jknack.handlebars.internal.antlr.CommonToken=var1900, r1=var3588, $r2=var2873, $r4=var661, $r5=var2704, $r6=var1858, $r7=var3945, $r8=var2999, $r9=var3625, r31=var3707, i3=var3267, org.apache.commons.lang3.StringUtils=var2227, r32=var2546, $r26=var3721, $i5=var1304, $r27=var2821, $r28=var2203, $i6=var1570, $r29=var1610, $i4=var2525, $i7=var1954, $r23=var3881, $r24=var2515, $r17=var476, $r25=var1120, com.github.jknack.handlebars.HandlebarsError=var3757, $r18=var3346, $r19=var2805, $r21=var1489, $r20=var3732, com.github.jknack.handlebars.HandlebarsException=var2613, $r22=var3948}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: int length()>": 2,"<java.lang.StringBuilder: java.lang.String substring(int)>": 2,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter;	r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	r0 := @parameter1: java.lang.Object;	i2 := @parameter2: int;	i0 := @parameter3: int;	r13 := @parameter4: java.lang.String;	r30 := @parameter5: com.github.jknack.handlebars.internal.antlr.RecognitionException;	i1 = staticinvoke <java.lang.Math: int max(int,int)>(1, i0);	r1 = (com.github.jknack.handlebars.internal.antlr.CommonToken) r0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	r31 = "";	i3 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	if r1 != null goto $r11 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found: \'");	r32 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] split(java.lang.String,java.lang.String)>(r13, "\n");	$r26 = r32[0];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$i5 = lengthof r32;	$r27 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String,int,int)>(r32, "\n", 1, $i5);	r31 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r27) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\n\u0001");	goto [?= $r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3)];	$r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$i6 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	$r29 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String[] lines(com.github.jknack.handlebars.internal.antlr.Recognizer)>(r16);	virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: void underline(java.lang.StringBuilder,java.lang.String[],int,int)>($r2, $r29, i2, i1);	$i4 = lengthof $r29;	if i2 <= $i4 goto $i7 = i2 - 2;	$i7 = i2 - 2;	$r23 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, $i7);	$r24 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, i2);	$r17 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>($i6);	$r25 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>($r23, $r17, $r24) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n\u0001\n\u0001");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r18 = new com.github.jknack.handlebars.HandlebarsError;	$r19 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename>;	$r21 = virtualinvoke $r28.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<EOF>", "EOF");	$r20 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r19, i2, i1, $r21, $r25, $r20);	$r22 = new com.github.jknack.handlebars.HandlebarsException;	specialinvoke $r22.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r18);	throw $r22
;block_num 5