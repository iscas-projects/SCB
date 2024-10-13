(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var216 0)
(declare-sort var1716 0)
(declare-sort var598 0)
(declare-sort var3846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1716_checkNotNullParameter/-2060636419 (var598 String) void)
(declare-fun cast-from-var216-to-var598 (var216) var598)
(declare-fun host/1711863148 (var216) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3846_contains$default/-455091908 (String String Bool Int var598) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun port/1842567001 (var216) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-const null-var216 var216)
(declare-const null-Bool Bool)
(declare-const null-var598 var598)
(declare-const var2417 var216) ; Statement: $r0 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var2417 null-var216)))
(declare-const var200 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var200 null-Bool)))
;(assert (var1716_checkNotNullParameter/-2060636419 (cast-from-var216-to-var598 var2417) "<this>")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>") 

(declare-const var2417!1 var216)
(declare-const var457 String)
(assert true)
(define-const var3414 String (host/1711863148 var2417!1)) ; Statement: $r1 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>() 
(define-const var3515 String (cast-from-String-to-String var3414)) ; Statement: $r3 = (java.lang.CharSequence) $r1 
(define-const var3682 String (cast-from-String-to-String ":")) ; Statement: $r2 = (java.lang.CharSequence) ":" 
(define-const var3788 Bool (var3846_contains$default/-455091908 var3515 var3682 (ite (= 1 0) true false) 2 null-var598)) ; Statement: $z0 = staticinvoke <kotlin.text.StringsKt: boolean contains$default(java.lang.CharSequence,java.lang.CharSequence,boolean,int,java.lang.Object)>($r3, $r2, 0, 2, null) 
 ; Statement: if $z0 == 0 goto $r16 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert (not (= (ite var3788 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3131 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3131)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3131!1 String)
(assert (= var3131!1 ""))
(assert true)
(define-const var562 String (append/-1166366385 var3131!1 91)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3131!2 String)
(assert (str.prefixof var3131!1 var3131!2))
(assert true)
(define-const var1736 String (host/1711863148 var2417!1)) ; Statement: $r12 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert true)
(define-const var1641 String (append/672562846 var562 var1736)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var562!1 String)
(assert (= var562!1 (str.++ var562 var1736)))
(assert true)
(define-const var2873 String (append/-1166366385 var1641 93)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1641!1 String)
(assert (str.prefixof var1641 var1641!1))
(assert true)
(define-const var1738 String (toString/-2075883882 var2873)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= r4 = $r16] 
(assert true) ; Non Conditional
(define-const var2208 String var1738) ; Statement: r4 = $r16 
 ; Statement: if z1 != 0 goto $r5 = new java.lang.StringBuilder 
(assert (not (= (ite var200 1 0) 0))) ; Cond: z1 != 0 
(define-const var2328 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2328)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2328!1 String)
(assert (= var2328!1 ""))
(assert true)
(define-const var1158 String (append/672562846 var2328!1 var2208)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2328!2 String)
(assert (= var2328!2 (str.++ var2328!1 var2208)))
(assert true)
(define-const var3649 String (append/-1166366385 var1158 58)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var1158!1 String)
(assert (str.prefixof var1158 var1158!1))
(assert true)
(define-const var1855 Int (port/1842567001 var2417!1)) ; Statement: $i0 = virtualinvoke $r0.<okhttp3.HttpUrl: int port()>() 
(assert true)
(define-const var1838 String (append/-1001720160 var3649 var1855)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3649!1 String)
(assert (str.prefixof var3649 var3649!1))
(assert true)
(define-const var455 String (toString/-2075883882 var1838)) ; Statement: $r17 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r17] 
(assert true) ; Non Conditional
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var1716_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var216-to-var598=([okhttp3.HttpUrl], java.lang.Object), host/1711863148=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3846_contains$default/-455091908=([java.lang.CharSequence, java.lang.CharSequence, boolean, int, java.lang.Object], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), port/1842567001=([okhttp3.HttpUrl], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder)}
; {var216=okhttp3.HttpUrl, var2417=$r0, var200=z1, var1716=kotlin.jvm.internal.Intrinsics, var598=java.lang.Object, var457="<this>", var3414=$r1, var3515=$r3, var3682=$r2, var3846=kotlin.text.StringsKt, var3788=$z0, var3131=$r11, var562=$r13, var1736=$r12, var1641=$r14, var2873=$r15, var1738=$r16, var2208=r4, var2328=$r5, var1158=$r6, var3649=$r7, var1855=$i0, var1838=$r8, var455=$r17}
; {okhttp3.HttpUrl=var216, $r0=var2417, z1=var200, kotlin.jvm.internal.Intrinsics=var1716, java.lang.Object=var598, "<this>"=var457, $r1=var3414, $r3=var3515, $r2=var3682, kotlin.text.StringsKt=var3846, $z0=var3788, $r11=var3131, $r13=var562, $r12=var1736, $r14=var1641, $r15=var2873, $r16=var1738, r4=var2208, $r5=var2328, $r6=var1158, $r7=var3649, $i0=var1855, $r8=var1838, $r17=var455}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1}
;stmts $r0 := @parameter0: okhttp3.HttpUrl;	z1 := @parameter1: boolean;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>($r0, "<this>");	$r1 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>();	$r3 = (java.lang.CharSequence) $r1;	$r2 = (java.lang.CharSequence) ":";	$z0 = staticinvoke <kotlin.text.StringsKt: boolean contains$default(java.lang.CharSequence,java.lang.CharSequence,boolean,int,java.lang.Object)>($r3, $r2, 0, 2, null);	if $z0 == 0 goto $r16 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>();	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r12 = virtualinvoke $r0.<okhttp3.HttpUrl: java.lang.String host()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= r4 = $r16];	r4 = $r16;	if z1 != 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$i0 = virtualinvoke $r0.<okhttp3.HttpUrl: int port()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r17 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r17];	return $r17
;block_num 5