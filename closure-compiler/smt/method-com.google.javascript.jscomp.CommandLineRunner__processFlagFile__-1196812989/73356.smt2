(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var557 0)
(declare-sort var2710 0)
(declare-sort var383 0)
(declare-sort var3920 0)
(declare-sort var1035 0)
(declare-sort var1712 0)
(declare-sort var2197 0)
(declare-sort var3904 0)
(declare-sort var1973 0)
(declare-sort var836 0)
(declare-sort var164 0)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(declare-fun var383_of/1752379886 (String (Array Int String)) var383)
(declare-fun var2197_newBufferedReader/-1144120799 (var383 var3920) var1712)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3904-init () var3904)
(declare-fun <init>/-325640736 (var3904) void)
(declare-fun read/-1114803370 (var1712) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun close/1094523889 (var1712) void)
(declare-fun length/-171891354 (String) Int)
(declare-fun flags/-928935950 (var557) var1973)
(declare-fun cast-from-var3904-to-var836 (var3904) var836)
(declare-fun flagFiles/-367409355 (var1973) var836)
(declare-fun var836_toArray/-775711681 (var836 (Array Int var164)) (Array Int var164))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var164__ ((Array Int String)) (Array Int var164))
(declare-fun cast-from-__Array__Int__var164__-to-__Array__Int__String__ ((Array Int var164)) (Array Int String))
(declare-fun var557_processArgs/1704569830 ((Array Int String)) var836)
(declare-fun <init>/2032108350 (var3904 var1898) void)
(declare-fun cast-from-var836-to-var1898 (var836) var1898)
(declare-fun var836_clear/2124191932 (var836) void)
(declare-fun parse/287322941 (var1973 var836) void)
(declare-fun var836_addAll/-525367613 (var836 var1898) Bool)
(declare-fun cast-from-var3904-to-var1898 (var3904) var1898)
(declare-fun var836_isEmpty/-153543822 (var836) Bool)
(declare-const null-var557 var557)
(declare-const null-String String)
(declare-const var1035-UTF_8 var3920)
(declare-const null-var1973 var1973)
(declare-const var1973-guardLevels var836)
(declare-const var1973-mixedJsSources var836)
(declare-const var320 var557) ; Statement: r7 := @this: com.google.javascript.jscomp.CommandLineRunner 
(assert (not (= var320 null-var557)))
(declare-const var2225 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2225 null-String)))
(define-const var3754 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[0] 
(define-const var900 var383 (var383_of/1752379886 var2225 var3754)) ; Statement: r2 = staticinvoke <java.nio.file.Path: java.nio.file.Path of(java.lang.String,java.lang.String[])>(r0, $r1) 
(define-const var612 var3920 var1035-UTF_8) ; Statement: $r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(define-const var1978 var1712 (var2197_newBufferedReader/-1144120799 var900 var612)) ; Statement: r4 = staticinvoke <java.nio.file.Files: java.io.BufferedReader newBufferedReader(java.nio.file.Path,java.nio.charset.Charset)>(r2, $r3) 
(define-const var3107 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3107)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3107!1 String)
(assert (= var3107!1 ""))
(define-const var3569 var3904 var3904-init) ; Statement: $r28 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var3569)) ; Statement: specialinvoke $r28.<java.util.ArrayList: void <init>()>() 

(declare-const var3569!1 var3904)
(define-const var3278 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3091 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(define-const var1842 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var3469 Int (read/-1114803370 var1978)) ; Statement: $i8 = virtualinvoke r4.<java.io.BufferedReader: int read()>() 
(define-const var3254 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i10 = (int) -1 
 ; Statement: if $i8 == $i10 goto virtualinvoke r4.<java.io.BufferedReader: void close()>() 
(assert (= var3469 var3254)) ; Cond: $i8 == $i10 
(assert true)
;(assert (close/1094523889 var1978)) ; Statement: virtualinvoke r4.<java.io.BufferedReader: void close()>() 

(declare-const var1978!1 var1712)
(assert true)
(define-const var44 Int (length/-171891354 var3107!1)) ; Statement: $i0 = virtualinvoke $r27.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 == 0 goto $r9 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(assert (= var44 0)) ; Cond: $i0 == 0 
(define-const var621 var1973 (flags/-928935950 var320)) ; Statement: $r9 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(define-const var2115 var3904 var3904-init) ; Statement: $r29 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2115)) ; Statement: specialinvoke $r29.<java.util.ArrayList: void <init>()>() 

(declare-const var2115!1 var3904)
(declare-const var621!1 var1973)
(assert (not (= var621!1 null-var1973)))
(assert (= (flagFiles/-367409355 var621!1) (cast-from-var3904-to-var836 var2115!1))) ; Statement: $r9.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List flagFiles> = $r29 
(define-const var1947 (Array Int String) arr-String-init) ; Statement: $r10 = newarray (java.lang.String)[0] 
(define-const var3857 (Array Int var164) (var836_toArray/-775711681 (cast-from-var3904-to-var836 var3569!1) (cast-from-__Array__Int__String__-to-__Array__Int__var164__ var1947))) ; Statement: $r11 = interfaceinvoke $r28.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r10) 
(define-const var3836 (Array Int String) (cast-from-__Array__Int__var164__-to-__Array__Int__String__ var3857)) ; Statement: $r12 = (java.lang.String[]) $r11 
(define-const var2389 var836 (var557_processArgs/1704569830 var3836)) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.CommandLineRunner: java.util.List processArgs(java.lang.String[])>($r12) 
(define-const var2157 var3904 var3904-init) ; Statement: $r30 = new java.util.ArrayList 
(define-const var2156 var836 var1973-guardLevels) ; Statement: $r14 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List guardLevels> 
(assert true)
;(assert (<init>/2032108350 var2157 (cast-from-var836-to-var1898 var2156))) ; Statement: specialinvoke $r30.<java.util.ArrayList: void <init>(java.util.Collection)>($r14) 

(declare-const var2157!1 var3904)
(declare-const var2156!1 var836)
(define-const var3368 var3904 var3904-init) ; Statement: $r31 = new java.util.ArrayList 
(define-const var2143 var836 var1973-mixedJsSources) ; Statement: $r16 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List mixedJsSources> 
(assert true)
;(assert (<init>/2032108350 var3368 (cast-from-var836-to-var1898 var2143))) ; Statement: specialinvoke $r31.<java.util.ArrayList: void <init>(java.util.Collection)>($r16) 

(declare-const var3368!1 var3904)
(declare-const var2143!1 var836)
(define-const var2261 var836 var1973-guardLevels) ; Statement: $r17 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List guardLevels> 
;(assert (var836_clear/2124191932 var2261)) ; Statement: interfaceinvoke $r17.<java.util.List: void clear()>() 

(declare-const var2261!1 var836)
(define-const var3137 var836 var1973-mixedJsSources) ; Statement: $r18 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List mixedJsSources> 
;(assert (var836_clear/2124191932 var3137)) ; Statement: interfaceinvoke $r18.<java.util.List: void clear()>() 

(declare-const var3137!1 var836)
(define-const var296 var1973 (flags/-928935950 var320)) ; Statement: $r19 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(assert true)
;(assert (parse/287322941 var296 var2389)) ; Statement: virtualinvoke $r19.<com.google.javascript.jscomp.CommandLineRunner$Flags: void parse(java.util.List)>($r25) 

(declare-const var296!1 var1973)
(declare-const var2389!1 var836)
(define-const var2983 var836 var1973-guardLevels) ; Statement: $r20 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List guardLevels> 
;(assert (var836_addAll/-525367613 var2983 (cast-from-var3904-to-var1898 var2157!1))) ; Statement: interfaceinvoke $r20.<java.util.List: boolean addAll(java.util.Collection)>($r30) 

(declare-const var2983!1 var836)
(declare-const var2157!2 var3904)
(define-const var3650 var836 var1973-mixedJsSources) ; Statement: $r21 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List mixedJsSources> 
;(assert (var836_addAll/-525367613 var3650 (cast-from-var3904-to-var1898 var3368!1))) ; Statement: interfaceinvoke $r21.<java.util.List: boolean addAll(java.util.Collection)>($r31) 

(declare-const var3650!1 var836)
(declare-const var3368!2 var3904)
(define-const var1605 var1973 (flags/-928935950 var320)) ; Statement: $r22 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags> 
(define-const var1813 var836 (flagFiles/-367409355 var1605)) ; Statement: $r23 = $r22.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List flagFiles> 
(define-const var3949 Bool (var836_isEmpty/-153543822 var1813)) ; Statement: $z0 = interfaceinvoke $r23.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3949 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.String[]), var383_of/1752379886=([java.lang.String, java.lang.String[]], java.nio.file.Path), var2197_newBufferedReader/-1144120799=([java.nio.file.Path, java.nio.charset.Charset], java.io.BufferedReader), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3904-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), read/-1114803370=([java.io.BufferedReader], int), cast-from-Int-to-Int=([int], int), close/1094523889=([java.io.BufferedReader], void), length/-171891354=([java.lang.StringBuilder], int), flags/-928935950=([com.google.javascript.jscomp.CommandLineRunner], com.google.javascript.jscomp.CommandLineRunner$Flags), cast-from-var3904-to-var836=([java.util.ArrayList], java.util.List), flagFiles/-367409355=([com.google.javascript.jscomp.CommandLineRunner$Flags], java.util.List), var836_toArray/-775711681=([java.util.List, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var164__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var164__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[]), var557_processArgs/1704569830=([java.lang.String[]], java.util.List), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var836-to-var1898=([java.util.List], java.util.Collection), var836_clear/2124191932=([java.util.List], void), parse/287322941=([com.google.javascript.jscomp.CommandLineRunner$Flags, java.util.List], void), var836_addAll/-525367613=([java.util.List, java.util.Collection], boolean), cast-from-var3904-to-var1898=([java.util.ArrayList], java.util.Collection), var836_isEmpty/-153543822=([java.util.List], boolean)}
; {var557=com.google.javascript.jscomp.CommandLineRunner, var320=r7, var2225=r0, var2710=null_type, var3754=$r1, var383=java.nio.file.Path, var900=r2, var3920=java.nio.charset.Charset, var1035=java.nio.charset.StandardCharsets, var612=$r3, var1712=java.io.BufferedReader, var2197=java.nio.file.Files, var1978=r4, var3107=$r27, var3904=java.util.ArrayList, var3569=$r28, var3278=z1, var3091=z2, var1842=z3, var3469=$i8, var3254=$i10, var44=$i0, var1973=com.google.javascript.jscomp.CommandLineRunner$Flags, var621=$r9, var2115=$r29, var836=java.util.List, var1947=$r10, var164=java.lang.Object, var3857=$r11, var3836=$r12, var2389=$r25, var2157=$r30, var2156=$r14, var1898=java.util.Collection, var3368=$r31, var2143=$r16, var2261=$r17, var3137=$r18, var296=$r19, var2983=$r20, var3650=$r21, var1605=$r22, var1813=$r23, var3949=$z0}
; {com.google.javascript.jscomp.CommandLineRunner=var557, r7=var320, r0=var2225, null_type=var2710, $r1=var3754, java.nio.file.Path=var383, r2=var900, java.nio.charset.Charset=var3920, java.nio.charset.StandardCharsets=var1035, $r3=var612, java.io.BufferedReader=var1712, java.nio.file.Files=var2197, r4=var1978, $r27=var3107, java.util.ArrayList=var3904, $r28=var3569, z1=var3278, z2=var3091, z3=var1842, $i8=var3469, $i10=var3254, $i0=var44, com.google.javascript.jscomp.CommandLineRunner$Flags=var1973, $r9=var621, $r29=var2115, java.util.List=var836, $r10=var1947, java.lang.Object=var164, $r11=var3857, $r12=var3836, $r25=var2389, $r30=var2157, $r14=var2156, java.util.Collection=var1898, $r31=var3368, $r16=var2143, $r17=var2261, $r18=var3137, $r19=var296, $r20=var2983, $r21=var3650, $r22=var1605, $r23=var1813, $z0=var3949}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.CommandLineRunner;	r0 := @parameter0: java.lang.String;	$r1 = newarray (java.lang.String)[0];	r2 = staticinvoke <java.nio.file.Path: java.nio.file.Path of(java.lang.String,java.lang.String[])>(r0, $r1);	$r3 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	r4 = staticinvoke <java.nio.file.Files: java.io.BufferedReader newBufferedReader(java.nio.file.Path,java.nio.charset.Charset)>(r2, $r3);	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = new java.util.ArrayList;	specialinvoke $r28.<java.util.ArrayList: void <init>()>();	z1 = 0;	z2 = 0;	z3 = 1;	$i8 = virtualinvoke r4.<java.io.BufferedReader: int read()>();	$i10 = (int) -1;	if $i8 == $i10 goto virtualinvoke r4.<java.io.BufferedReader: void close()>();	virtualinvoke r4.<java.io.BufferedReader: void close()>();	$i0 = virtualinvoke $r27.<java.lang.StringBuilder: int length()>();	if $i0 == 0 goto $r9 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r9 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r29 = new java.util.ArrayList;	specialinvoke $r29.<java.util.ArrayList: void <init>()>();	$r9.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List flagFiles> = $r29;	$r10 = newarray (java.lang.String)[0];	$r11 = interfaceinvoke $r28.<java.util.List: java.lang.Object[] toArray(java.lang.Object[])>($r10);	$r12 = (java.lang.String[]) $r11;	$r25 = staticinvoke <com.google.javascript.jscomp.CommandLineRunner: java.util.List processArgs(java.lang.String[])>($r12);	$r30 = new java.util.ArrayList;	$r14 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List guardLevels>;	specialinvoke $r30.<java.util.ArrayList: void <init>(java.util.Collection)>($r14);	$r31 = new java.util.ArrayList;	$r16 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List mixedJsSources>;	specialinvoke $r31.<java.util.ArrayList: void <init>(java.util.Collection)>($r16);	$r17 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List guardLevels>;	interfaceinvoke $r17.<java.util.List: void clear()>();	$r18 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List mixedJsSources>;	interfaceinvoke $r18.<java.util.List: void clear()>();	$r19 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	virtualinvoke $r19.<com.google.javascript.jscomp.CommandLineRunner$Flags: void parse(java.util.List)>($r25);	$r20 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List guardLevels>;	interfaceinvoke $r20.<java.util.List: boolean addAll(java.util.Collection)>($r30);	$r21 = <com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List mixedJsSources>;	interfaceinvoke $r21.<java.util.List: boolean addAll(java.util.Collection)>($r31);	$r22 = r7.<com.google.javascript.jscomp.CommandLineRunner: com.google.javascript.jscomp.CommandLineRunner$Flags flags>;	$r23 = $r22.<com.google.javascript.jscomp.CommandLineRunner$Flags: java.util.List flagFiles>;	$z0 = interfaceinvoke $r23.<java.util.List: boolean isEmpty()>();	if $z0 != 0 goto return;	return
;block_num 5