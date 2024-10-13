(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2616 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2616!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun String-init () String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun var2616_addEncoding/1059459487 (Int Int) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2616-DECODING (Array Int Int))
(define-const var2313 ClassObject var2616!class) ; Statement: $r0 = class "Ljdk/internal/dynalink/support/NameCodec;" 
(assert true)
(define-const var3624 Bool (desiredAssertionStatus/-1561484483 var2313)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var3624 1 0) 0))) ; Cond: $z0 != 0 
(define-const var939 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2213 Bool var939) ; Statement: <jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled> = $z1 
(define-const var3182 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var3337 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (char)[2] 
(declare-const var3337!1 (Array Int Int))
(assert (not (= var3337!1 null-__Array__Int__Int__)))
(assert (= (select var3337!1 0) 92)) ; Statement: $r2[0] = 92 
(declare-const var3337!2 (Array Int Int))
(assert (not (= var3337!2 null-__Array__Int__Int__)))
(assert (= (select var3337!2 1) 61)) ; Statement: $r2[1] = 61 
(assert true)
;(assert (<init>/-915723298 var3182 var3337!2)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var3182!1 String)
(declare-const var3337!3 (Array Int Int))
(define-const var2049 String var3182!1) ; Statement: <jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME> = $r1 
(define-const var2282 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (char)[58] 
(define-const var2239 (Array Int Int) var2282) ; Statement: <jdk.internal.dynalink.support.NameCodec: char[] ENCODING> = $r3 
(define-const var478 (Array Int Int) arr-Int-init) ; Statement: $r4 = newarray (char)[93] 
(define-const var2399 (Array Int Int) var478) ; Statement: <jdk.internal.dynalink.support.NameCodec: char[] DECODING> = $r4 
;(assert (var2616_addEncoding/1059459487 47 124)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(47, 124) 

(declare-const var2572 Int)
(declare-const var2423 Int)
;(assert (var2616_addEncoding/1059459487 46 44)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(46, 44) 

(declare-const var1195 Int)
(declare-const var1020 Int)
;(assert (var2616_addEncoding/1059459487 59 63)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(59, 63) 

(declare-const var1247 Int)
(declare-const var3611 Int)
;(assert (var2616_addEncoding/1059459487 36 37)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(36, 37) 

(declare-const var153 Int)
(declare-const var2759 Int)
;(assert (var2616_addEncoding/1059459487 60 94)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(60, 94) 

(declare-const var1309 Int)
(declare-const var3670 Int)
;(assert (var2616_addEncoding/1059459487 62 95)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(62, 95) 

(declare-const var1786 Int)
(declare-const var3216 Int)
;(assert (var2616_addEncoding/1059459487 91 123)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(91, 123) 

(declare-const var466 Int)
(declare-const var3448 Int)
;(assert (var2616_addEncoding/1059459487 93 125)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(93, 125) 

(declare-const var1163 Int)
(declare-const var3157 Int)
;(assert (var2616_addEncoding/1059459487 58 33)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(58, 33) 

(declare-const var253 Int)
(declare-const var844 Int)
;(assert (var2616_addEncoding/1059459487 92 45)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(92, 45) 

(declare-const var2987 Int)
(declare-const var1130 Int)
(define-const var3489 (Array Int Int) var2616-DECODING) ; Statement: $r5 = <jdk.internal.dynalink.support.NameCodec: char[] DECODING> 
(declare-const var3489!1 (Array Int Int))
(assert (not (= var3489!1 null-__Array__Int__Int__)))
(assert (= (select var3489!1 28) 65279)) ; Statement: $r5[28] = 65279 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), String-init=([], java.lang.String), arr-Int-init=([], char[]), <init>/-915723298=([java.lang.String, char[]], void), var2616_addEncoding/1059459487=([char, char], void)}
; {var2616=jdk.internal.dynalink.support.NameCodec, var2313=$r0, var3624=$z0, var939=$z1, var2213=<jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled>, var3182=$r1, var3337=$r2, var2049=<jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME>, var2282=$r3, var2239=<jdk.internal.dynalink.support.NameCodec: char[] ENCODING>, var478=$r4, var2399=<jdk.internal.dynalink.support.NameCodec: char[] DECODING>, var2572=47, var2423=124, var1195=46, var1020=44, var1247=59, var3611=63, var153=36, var2759=37, var1309=60, var3670=94, var1786=62, var3216=95, var466=91, var3448=123, var1163=93, var3157=125, var253=58, var844=33, var2987=92, var1130=45, var3489=$r5}
; {jdk.internal.dynalink.support.NameCodec=var2616, $r0=var2313, $z0=var3624, $z1=var939, <jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled>=var2213, $r1=var3182, $r2=var3337, <jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME>=var2049, $r3=var2282, <jdk.internal.dynalink.support.NameCodec: char[] ENCODING>=var2239, $r4=var478, <jdk.internal.dynalink.support.NameCodec: char[] DECODING>=var2399, 47=var2572, 124=var2423, 46=var1195, 44=var1020, 59=var1247, 63=var3611, 36=var153, 37=var2759, 60=var1309, 94=var3670, 62=var1786, 95=var3216, 91=var466, 123=var3448, 93=var1163, 125=var3157, 58=var253, 33=var844, 92=var2987, 45=var1130, $r5=var3489}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts $r0 = class "Ljdk/internal/dynalink/support/NameCodec;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	<jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled> = $z1;	$r1 = new java.lang.String;	$r2 = newarray (char)[2];	$r2[0] = 92;	$r2[1] = 61;	specialinvoke $r1.<java.lang.String: void <init>(char[])>($r2);	<jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME> = $r1;	$r3 = newarray (char)[58];	<jdk.internal.dynalink.support.NameCodec: char[] ENCODING> = $r3;	$r4 = newarray (char)[93];	<jdk.internal.dynalink.support.NameCodec: char[] DECODING> = $r4;	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(47, 124);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(46, 44);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(59, 63);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(36, 37);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(60, 94);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(62, 95);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(91, 123);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(93, 125);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(58, 33);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(92, 45);	$r5 = <jdk.internal.dynalink.support.NameCodec: char[] DECODING>;	$r5[28] = 65279;	return
;block_num 3