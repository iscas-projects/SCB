(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3627 0)
(declare-sort var2833 0)
(declare-sort var1753 0)
(declare-sort var3836 0)
(declare-sort var3279 0)
(declare-sort var1754 0)
(declare-sort var1549 0)
(declare-sort var3640 0)
(declare-sort var1367 0)
(declare-sort var3842 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1754_max/1360571700 (Int Int) Int)
(declare-fun cast-from-var1753-to-var1549 (var1753) var1549)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filename/-1137484017 (var3627) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun length/-171891354 (String) Int)
(declare-fun var3640_split/1050514167 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3640_join/1770488023 ((Array Int var1753) String Int Int) String)
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var1753__ ((Array Int String)) (Array Int var1753))
(declare-fun substring/-975425934 (String Int) String)
(declare-fun lines/-1679411926 (var3627 var2833) (Array Int String))
(declare-fun underline/1350738831 (var3627 String (Array Int String) Int Int) void)
(declare-fun lineAt/905040310 (var3627 (Array Int String) Int) String)
(declare-fun var1367-init () var1367)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1514878111 (var1367 String Int Int String String String) void)
(declare-fun var3842-init () var3842)
(declare-fun <init>/-2128942556 (var3842 var1367) void)
(declare-const null-var3627 var3627)
(declare-const null-var2833 var2833)
(declare-const null-var1753 var1753)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-var3279 var3279)
(declare-const null-var1549 var1549)
(declare-const var2218 var3627) ; Statement: r3 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter 
(assert (not (= var2218 null-var3627)))
(declare-const var3351 var2833) ; Statement: r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer 
(assert (not (= var3351 null-var2833)))
(declare-const var2231 var1753) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2231 null-var1753)))
(declare-const var2636 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var2636 null-Int)))
(declare-const var2742 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2742 null-Int)))
(declare-const var3406 String) ; Statement: r13 := @parameter4: java.lang.String 
(assert (not (= var3406 null-String)))
(declare-const var1030 var3279) ; Statement: r30 := @parameter5: com.github.jknack.handlebars.internal.antlr.RecognitionException 
(assert (not (= var1030 null-var3279)))
(define-const var3096 Int (var1754_max/1360571700 1 var2742)) ; Statement: i1 = staticinvoke <java.lang.Math: int max(int,int)>(1, i0) 
(define-const var2903 var1549 (cast-from-var1753-to-var1549 var2231)) ; Statement: r1 = (com.github.jknack.handlebars.internal.antlr.CommonToken) r0 
(define-const var2077 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2077)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2077!1 String)
(assert (= var2077!1 ""))
(define-const var3554 String (filename/-1137484017 var2218)) ; Statement: $r4 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename> 
(assert true)
(define-const var1149 String (append/672562846 var2077!1 var3554)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2077!2 String)
(assert (= var2077!2 (str.++ var2077!1 var3554)))
(assert true)
(define-const var1018 String (append/672562846 var1149 ":")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1149!1 String)
(assert (= var1149!1 (str.++ var1149 ":")))
(assert true)
(define-const var214 String (append/-1001720160 var1018 var2636)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1018!1 String)
(assert (str.prefixof var1018 var1018!1))
(assert true)
(define-const var2450 String (append/672562846 var214 ":")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var214!1 String)
(assert (= var214!1 (str.++ var214 ":")))
(assert true)
(define-const var3692 String (append/-1001720160 var2450 var3096)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2450!1 String)
(assert (str.prefixof var2450 var2450!1))
(assert true)
;(assert (append/672562846 var3692 ": ")) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var3692!1 String)
(assert (= var3692!1 (str.++ var3692 ": ")))
(define-const var1247 String "") ; Statement: r31 = "" 
(assert true)
(define-const var2493 Int (length/-171891354 var2077!2)) ; Statement: i3 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
 ; Statement: if r1 != null goto $r11 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found: \'") 
(assert (not (not (= var2903 null-var1549)))) ; Negate: Cond: r1 != null  
(define-const var3707 (Array Int String) (var3640_split/1050514167 var3406 "\n")) ; Statement: r32 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] split(java.lang.String,java.lang.String)>(r13, "\n") 
(define-const var3360 String (select var3707 0)) ; Statement: $r26 = r32[0] 
(assert true)
;(assert (append/672562846 var2077!2 var3360)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var2077!3 String)
(assert (= var2077!3 (str.++ var2077!2 var3360)))
(define-const var2654 Int (getLength-Arr-String-1 var3707)) ; Statement: $i5 = lengthof r32 
(define-const var2860 String (var3640_join/1770488023 (cast-from-__Array__Int__String__-to-__Array__Int__var1753__ var3707) "\n" 1 var2654)) ; Statement: $r27 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String,int,int)>(r32, "\n", 1, $i5) 
(define-const var1247!1 String (str.++ "\n\u0001" var2860)) ; Statement: r31 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r27) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\n\u0001") 
 ; Statement: goto [?= $r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3084 String (substring/-975425934 var2077!3 var2493)) ; Statement: $r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3) 
(assert true)
;(assert (append/672562846 var2077!3 "\n")) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var2077!4 String)
(assert (= var2077!4 (str.++ var2077!3 "\n")))
(assert true)
(define-const var3799 Int (length/-171891354 var2077!4)) ; Statement: $i6 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var1399 (Array Int String) (lines/-1679411926 var2218 var3351)) ; Statement: $r29 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String[] lines(com.github.jknack.handlebars.internal.antlr.Recognizer)>(r16) 
(assert true)
;(assert (underline/1350738831 var2218 var2077!4 var1399 var2636 var3096)) ; Statement: virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: void underline(java.lang.StringBuilder,java.lang.String[],int,int)>($r2, $r29, i2, i1) 

(declare-const var2218!1 var3627)
(declare-const var2077!5 String)
(declare-const var1399!1 (Array Int String))
(declare-const var2636!1 Int)
(declare-const var3096!1 Int)
(define-const var542 Int (getLength-Arr-String-1 var1399!1)) ; Statement: $i4 = lengthof $r29 
 ; Statement: if i2 <= $i4 goto $i7 = i2 - 2 
(assert (not (<= var2636!1 var542))) ; Negate: Cond: i2 <= $i4  
(define-const var3606 Int (getLength-Arr-String-1 var1399!1)) ; Statement: $i7 = lengthof $r29 
 ; Statement: goto [?= $r23 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, $i7)] 
(assert true) ; Non Conditional
(assert true)
(define-const var302 String (lineAt/905040310 var2218!1 var1399!1 var3606)) ; Statement: $r23 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, $i7) 
(assert true)
(define-const var3483 String (lineAt/905040310 var2218!1 var1399!1 var2636!1)) ; Statement: $r24 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, i2) 
(assert true)
(define-const var3028 String (substring/-975425934 var2077!5 var3799)) ; Statement: $r17 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>($i6) 
(define-const var480 String (str.++ "\u0001\n\u0001\n\u0001" var302 var3028 var3483)) ; Statement: $r25 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>($r23, $r17, $r24) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n\u0001\n\u0001") 
(assert true)
;(assert (append/672562846 var2077!5 var1247!1)) ; Statement: virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31) 
(declare-const var2077!6 String)
(assert (= var2077!6 (str.++ var2077!5 var1247!1)))
(define-const var3596 var1367 var1367-init) ; Statement: $r18 = new com.github.jknack.handlebars.HandlebarsError 
(define-const var2817 String (filename/-1137484017 var2218!1)) ; Statement: $r19 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename> 
(assert true)
(define-const var1287 String (replace/2138489945 var3084 (cast-from-String-to-String "<EOF>") (cast-from-String-to-String "EOF"))) ; Statement: $r21 = virtualinvoke $r28.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<EOF>", "EOF") 
(assert true)
(define-const var863 String (toString/-2075883882 var2077!6)) ; Statement: $r20 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1514878111 var3596 var2817 var2636!1 var3096!1 var1287 var480 var863)) ; Statement: specialinvoke $r18.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r19, i2, i1, $r21, $r25, $r20) 

(declare-const var3596!1 var1367)
(declare-const var2817!1 String)
(declare-const var2636!2 Int)
(declare-const var3096!2 Int)
(declare-const var1287!1 String)
(declare-const var480!1 String)
(declare-const var863!1 String)
(define-const var2409 var3842 var3842-init) ; Statement: $r22 = new com.github.jknack.handlebars.HandlebarsException 
(assert true)
;(assert (<init>/-2128942556 var2409 var3596!1)) ; Statement: specialinvoke $r22.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r18) 

(declare-const var2409!1 var3842)
(declare-const var3596!2 var1367)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var1754_max/1360571700=([int, int], int), cast-from-var1753-to-var1549=([java.lang.Object], com.github.jknack.handlebars.internal.antlr.CommonToken), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filename/-1137484017=([com.github.jknack.handlebars.internal.HbsErrorReporter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), var3640_split/1050514167=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), var3640_join/1770488023=([java.lang.Object[], java.lang.String, int, int], java.lang.String), cast-from-__Array__Int__String__-to-__Array__Int__var1753__=([java.lang.String[]], java.lang.Object[]), substring/-975425934=([java.lang.StringBuilder, int], java.lang.String), lines/-1679411926=([com.github.jknack.handlebars.internal.HbsErrorReporter, com.github.jknack.handlebars.internal.antlr.Recognizer], java.lang.String[]), underline/1350738831=([com.github.jknack.handlebars.internal.HbsErrorReporter, java.lang.StringBuilder, java.lang.String[], int, int], void), lineAt/905040310=([com.github.jknack.handlebars.internal.HbsErrorReporter, java.lang.String[], int], java.lang.String), var1367-init=([], com.github.jknack.handlebars.HandlebarsError), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1514878111=([com.github.jknack.handlebars.HandlebarsError, java.lang.String, int, int, java.lang.String, java.lang.String, java.lang.String], void), var3842-init=([], com.github.jknack.handlebars.HandlebarsException), <init>/-2128942556=([com.github.jknack.handlebars.HandlebarsException, com.github.jknack.handlebars.HandlebarsError], void)}
; {var3627=com.github.jknack.handlebars.internal.HbsErrorReporter, var2218=r3, var2833=com.github.jknack.handlebars.internal.antlr.Recognizer, var3351=r16, var1753=java.lang.Object, var2231=r0, var2636=i2, var2742=i0, var3406=r13, var3836=null_type, var3279=com.github.jknack.handlebars.internal.antlr.RecognitionException, var1030=r30, var1754=java.lang.Math, var3096=i1, var1549=com.github.jknack.handlebars.internal.antlr.CommonToken, var2903=r1, var2077=$r2, var3554=$r4, var1149=$r5, var1018=$r6, var214=$r7, var2450=$r8, var3692=$r9, var1247=r31, var2493=i3, var3640=org.apache.commons.lang3.StringUtils, var3707=r32, var3360=$r26, var2654=$i5, var2860=$r27, var3084=$r28, var3799=$i6, var1399=$r29, var542=$i4, var3606=$i7, var302=$r23, var3483=$r24, var3028=$r17, var480=$r25, var1367=com.github.jknack.handlebars.HandlebarsError, var3596=$r18, var2817=$r19, var1287=$r21, var863=$r20, var3842=com.github.jknack.handlebars.HandlebarsException, var2409=$r22}
; {com.github.jknack.handlebars.internal.HbsErrorReporter=var3627, r3=var2218, com.github.jknack.handlebars.internal.antlr.Recognizer=var2833, r16=var3351, java.lang.Object=var1753, r0=var2231, i2=var2636, i0=var2742, r13=var3406, null_type=var3836, com.github.jknack.handlebars.internal.antlr.RecognitionException=var3279, r30=var1030, java.lang.Math=var1754, i1=var3096, com.github.jknack.handlebars.internal.antlr.CommonToken=var1549, r1=var2903, $r2=var2077, $r4=var3554, $r5=var1149, $r6=var1018, $r7=var214, $r8=var2450, $r9=var3692, r31=var1247, i3=var2493, org.apache.commons.lang3.StringUtils=var3640, r32=var3707, $r26=var3360, $i5=var2654, $r27=var2860, $r28=var3084, $i6=var3799, $r29=var1399, $i4=var542, $i7=var3606, $r23=var302, $r24=var3483, $r17=var3028, $r25=var480, com.github.jknack.handlebars.HandlebarsError=var1367, $r18=var3596, $r19=var2817, $r21=var1287, $r20=var863, com.github.jknack.handlebars.HandlebarsException=var3842, $r22=var2409}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: int length()>": 2,"<java.lang.StringBuilder: java.lang.String substring(int)>": 2,"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter;	r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.Recognizer;	r0 := @parameter1: java.lang.Object;	i2 := @parameter2: int;	i0 := @parameter3: int;	r13 := @parameter4: java.lang.String;	r30 := @parameter5: com.github.jknack.handlebars.internal.antlr.RecognitionException;	i1 = staticinvoke <java.lang.Math: int max(int,int)>(1, i0);	r1 = (com.github.jknack.handlebars.internal.antlr.CommonToken) r0;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename>;	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	r31 = "";	i3 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	if r1 != null goto $r11 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("found: \'");	r32 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String[] split(java.lang.String,java.lang.String)>(r13, "\n");	$r26 = r32[0];	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$i5 = lengthof r32;	$r27 = staticinvoke <org.apache.commons.lang3.StringUtils: java.lang.String join(java.lang.Object[],java.lang.String,int,int)>(r32, "\n", 1, $i5);	r31 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String)>($r27) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\n\u0001");	goto [?= $r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3)];	$r28 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(i3);	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	$i6 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	$r29 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String[] lines(com.github.jknack.handlebars.internal.antlr.Recognizer)>(r16);	virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: void underline(java.lang.StringBuilder,java.lang.String[],int,int)>($r2, $r29, i2, i1);	$i4 = lengthof $r29;	if i2 <= $i4 goto $i7 = i2 - 2;	$i7 = lengthof $r29;	goto [?= $r23 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, $i7)];	$r23 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, $i7);	$r24 = virtualinvoke r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String lineAt(java.lang.String[],int)>($r29, i2);	$r17 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>($i6);	$r25 = dynamicinvoke "makeConcatWithConstants" <java.lang.String (java.lang.String,java.lang.String,java.lang.String)>($r23, $r17, $r24) <java.lang.invoke.StringConcatFactory: java.lang.invoke.CallSite makeConcatWithConstants(java.lang.invoke.MethodHandles$Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String,java.lang.Object[])>("\u0001\n\u0001\n\u0001");	virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r31);	$r18 = new com.github.jknack.handlebars.HandlebarsError;	$r19 = r3.<com.github.jknack.handlebars.internal.HbsErrorReporter: java.lang.String filename>;	$r21 = virtualinvoke $r28.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>("<EOF>", "EOF");	$r20 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<com.github.jknack.handlebars.HandlebarsError: void <init>(java.lang.String,int,int,java.lang.String,java.lang.String,java.lang.String)>($r19, i2, i1, $r21, $r25, $r20);	$r22 = new com.github.jknack.handlebars.HandlebarsException;	specialinvoke $r22.<com.github.jknack.handlebars.HandlebarsException: void <init>(com.github.jknack.handlebars.HandlebarsError)>($r18);	throw $r22
;block_num 5