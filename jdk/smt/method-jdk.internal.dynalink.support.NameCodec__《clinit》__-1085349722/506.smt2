(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1985!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun String-init () String)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-fun var1985_addEncoding/1059459487 (Int Int) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1985-DECODING (Array Int Int))
(define-const var2816 ClassObject var1985!class) ; Statement: $r0 = class "Ljdk/internal/dynalink/support/NameCodec;" 
(assert true)
(define-const var3500 Bool (desiredAssertionStatus/-1561484483 var2816)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var3500 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3774 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled> = $z1] 
(assert true) ; Non Conditional
(define-const var506 Bool var3774) ; Statement: <jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled> = $z1 
(define-const var2980 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var3821 (Array Int Int) arr-Int-init) ; Statement: $r2 = newarray (char)[2] 
(declare-const var3821!1 (Array Int Int))
(assert (not (= var3821!1 null-__Array__Int__Int__)))
(assert (= (select var3821!1 0) 92)) ; Statement: $r2[0] = 92 
(declare-const var3821!2 (Array Int Int))
(assert (not (= var3821!2 null-__Array__Int__Int__)))
(assert (= (select var3821!2 1) 61)) ; Statement: $r2[1] = 61 
(assert true)
;(assert (<init>/-915723298 var2980 var3821!2)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var2980!1 String)
(declare-const var3821!3 (Array Int Int))
(define-const var2776 String var2980!1) ; Statement: <jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME> = $r1 
(define-const var1316 (Array Int Int) arr-Int-init) ; Statement: $r3 = newarray (char)[58] 
(define-const var2664 (Array Int Int) var1316) ; Statement: <jdk.internal.dynalink.support.NameCodec: char[] ENCODING> = $r3 
(define-const var3167 (Array Int Int) arr-Int-init) ; Statement: $r4 = newarray (char)[93] 
(define-const var152 (Array Int Int) var3167) ; Statement: <jdk.internal.dynalink.support.NameCodec: char[] DECODING> = $r4 
;(assert (var1985_addEncoding/1059459487 47 124)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(47, 124) 

(declare-const var2581 Int)
(declare-const var2653 Int)
;(assert (var1985_addEncoding/1059459487 46 44)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(46, 44) 

(declare-const var3081 Int)
(declare-const var1899 Int)
;(assert (var1985_addEncoding/1059459487 59 63)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(59, 63) 

(declare-const var1005 Int)
(declare-const var1091 Int)
;(assert (var1985_addEncoding/1059459487 36 37)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(36, 37) 

(declare-const var3746 Int)
(declare-const var3694 Int)
;(assert (var1985_addEncoding/1059459487 60 94)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(60, 94) 

(declare-const var3496 Int)
(declare-const var2622 Int)
;(assert (var1985_addEncoding/1059459487 62 95)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(62, 95) 

(declare-const var102 Int)
(declare-const var1039 Int)
;(assert (var1985_addEncoding/1059459487 91 123)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(91, 123) 

(declare-const var1536 Int)
(declare-const var540 Int)
;(assert (var1985_addEncoding/1059459487 93 125)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(93, 125) 

(declare-const var628 Int)
(declare-const var673 Int)
;(assert (var1985_addEncoding/1059459487 58 33)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(58, 33) 

(declare-const var3722 Int)
(declare-const var1115 Int)
;(assert (var1985_addEncoding/1059459487 92 45)) ; Statement: staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(92, 45) 

(declare-const var148 Int)
(declare-const var131 Int)
(define-const var3545 (Array Int Int) var1985-DECODING) ; Statement: $r5 = <jdk.internal.dynalink.support.NameCodec: char[] DECODING> 
(declare-const var3545!1 (Array Int Int))
(assert (not (= var3545!1 null-__Array__Int__Int__)))
(assert (= (select var3545!1 28) 65279)) ; Statement: $r5[28] = 65279 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), String-init=([], java.lang.String), arr-Int-init=([], char[]), <init>/-915723298=([java.lang.String, char[]], void), var1985_addEncoding/1059459487=([char, char], void)}
; {var1985=jdk.internal.dynalink.support.NameCodec, var2816=$r0, var3500=$z0, var3774=$z1, var506=<jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled>, var2980=$r1, var3821=$r2, var2776=<jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME>, var1316=$r3, var2664=<jdk.internal.dynalink.support.NameCodec: char[] ENCODING>, var3167=$r4, var152=<jdk.internal.dynalink.support.NameCodec: char[] DECODING>, var2581=47, var2653=124, var3081=46, var1899=44, var1005=59, var1091=63, var3746=36, var3694=37, var3496=60, var2622=94, var102=62, var1039=95, var1536=91, var540=123, var628=93, var673=125, var3722=58, var1115=33, var148=92, var131=45, var3545=$r5}
; {jdk.internal.dynalink.support.NameCodec=var1985, $r0=var2816, $z0=var3500, $z1=var3774, <jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled>=var506, $r1=var2980, $r2=var3821, <jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME>=var2776, $r3=var1316, <jdk.internal.dynalink.support.NameCodec: char[] ENCODING>=var2664, $r4=var3167, <jdk.internal.dynalink.support.NameCodec: char[] DECODING>=var152, 47=var2581, 124=var2653, 46=var3081, 44=var1899, 59=var1005, 63=var1091, 36=var3746, 37=var3694, 60=var3496, 94=var2622, 62=var102, 95=var1039, 91=var1536, 123=var540, 93=var628, 125=var673, 58=var3722, 33=var1115, 92=var148, 45=var131, $r5=var3545}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts $r0 = class "Ljdk/internal/dynalink/support/NameCodec;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= <jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled> = $z1];	<jdk.internal.dynalink.support.NameCodec: boolean $assertionsDisabled> = $z1;	$r1 = new java.lang.String;	$r2 = newarray (char)[2];	$r2[0] = 92;	$r2[1] = 61;	specialinvoke $r1.<java.lang.String: void <init>(char[])>($r2);	<jdk.internal.dynalink.support.NameCodec: java.lang.String EMPTY_NAME> = $r1;	$r3 = newarray (char)[58];	<jdk.internal.dynalink.support.NameCodec: char[] ENCODING> = $r3;	$r4 = newarray (char)[93];	<jdk.internal.dynalink.support.NameCodec: char[] DECODING> = $r4;	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(47, 124);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(46, 44);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(59, 63);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(36, 37);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(60, 94);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(62, 95);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(91, 123);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(93, 125);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(58, 33);	staticinvoke <jdk.internal.dynalink.support.NameCodec: void addEncoding(char,char)>(92, 45);	$r5 = <jdk.internal.dynalink.support.NameCodec: char[] DECODING>;	$r5[28] = 65279;	return
;block_num 3