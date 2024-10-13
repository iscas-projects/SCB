(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var2614 0)
(declare-sort var3827 0)
(declare-sort var1918 0)
(declare-sort var3695 0)
(declare-sort var65 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3110!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var2614_getProperty/258823597 (String) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1918-init () var1918)
(declare-fun <init>/-279557996 (var1918) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3695_fill/-1423580022 ((Array Int Int) Int) void)
(declare-fun var65-init () var65)
(declare-fun <init>/-308286944 (var65 Int (Array Int Int)) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-fun var65_valueOf/913516287 (Int) var65)
(declare-fun and/-924067828 (var65 var65) var65)
(declare-fun shiftLeft/387212439 (var65 Int) var65)
(declare-fun or/1536331300 (var65 var65) var65)
(declare-const null-String String)
(define-const var486 ClassObject var3110!class) ; Statement: $r0 = class "Lorg/apache/lucene/util/StringHelper;" 
(assert true)
(define-const var3873 Bool (desiredAssertionStatus/-1561484483 var486)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var3873 1 0) 0))) ; Cond: $z0 != 0 
(define-const var484 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var1720 Bool var484) ; Statement: <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2 
(define-const var3135 String (var2614_getProperty/258823597 "tests.seed")) ; Statement: $r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
 ; Statement: if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert (not (= var3135 null-String))) ; Negate: Cond: $r15 == null  
(assert true)
(define-const var1536 Int (hashCode/-467973558 var3135)) ; Statement: $i11 = virtualinvoke $r15.<java.lang.String: int hashCode()>() 
(define-const var2425 Int var1536) ; Statement: <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i11 
 ; Statement: goto [?= $r1 = new java.lang.Object] 
(assert true) ; Non Conditional
(define-const var376 var1918 var1918-init) ; Statement: $r1 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var376)) ; Statement: specialinvoke $r1.<java.lang.Object: void <init>()>() 

(declare-const var376!1 var1918)
(define-const var2290 var1918 var376!1) ; Statement: <org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1 
(define-const var283 (Array Int Int) arr-Int-init) ; Statement: $r13 = newarray (byte)[16] 
;(assert (var3695_fill/-1423580022 var283 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1) 

(declare-const var283!1 (Array Int Int))
(declare-const var1851 Int)
(define-const var2720 var65 var65-init) ; Statement: $r2 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var2720 1 var283!1)) ; Statement: specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13) 

(declare-const var2720!1 var65)
(declare-const var1052 Int)
(declare-const var283!2 (Array Int Int))
(define-const var2370 var65 var2720!1) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2 
(define-const var1128 String (var2614_getProperty/258823597 "tests.seed")) ; Statement: $r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
(define-const var2947 String var1128) ; Statement: r28 = $r14 
 ; Statement: if $r14 == null goto $r3 = new java.io.DataInputStream 
(assert (not (= var1128 null-String))) ; Negate: Cond: $r14 == null  
(assert true)
(define-const var1952 Int (length/-134980193 var1128)) ; Statement: $i7 = virtualinvoke $r14.<java.lang.String: int length()>() 
 ; Statement: if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(assert (<= var1952 8)) ; Cond: $i7 <= 8 
(define-const var2761 Int (Int_parseLong/758265864 var2947 16)) ; Statement: $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(define-const var2272 Int var2761) ; Statement: l18 = $l10 
(define-const var3499 Int var2761) ; Statement: l19 = $l10 
 ; Statement: goto [?= i21 = 0] 
(assert true) ; Non Conditional
(define-const var3814 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
 ; Statement: if i21 >= 10 goto r31 = newarray (byte)[8] 
(assert (>= var3814 10)) ; Cond: i21 >= 10 
(define-const var1456 (Array Int Int) arr-Int-init) ; Statement: r31 = newarray (byte)[8] 
;(assert (var3695_fill/-1423580022 var1456 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1) 

(declare-const var1456!1 (Array Int Int))
(declare-const var1851!1 Int)
(define-const var2838 var65 var65-init) ; Statement: $r8 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var2838 1 var1456!1)) ; Statement: specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31) 

(declare-const var2838!1 var65)
(declare-const var1052!1 Int)
(declare-const var1456!2 (Array Int Int))
(define-const var10 var65 (var65_valueOf/913516287 var2272)) ; Statement: $r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18) 
(assert true)
(define-const var877 var65 (and/-924067828 var10 var2838!1)) ; Statement: r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(define-const var959 var65 (var65_valueOf/913516287 var3499)) ; Statement: $r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19) 
(assert true)
(define-const var2755 var65 (and/-924067828 var959 var2838!1)) ; Statement: r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(assert true)
(define-const var921 var65 (shiftLeft/387212439 var877 64)) ; Statement: $r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64) 
(assert true)
(define-const var1074 var65 (or/1536331300 var921 var2755)) ; Statement: $r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33) 
(define-const var2772 var65 var1074) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var2614_getProperty/258823597=([java.lang.String], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1918-init=([], java.lang.Object), <init>/-279557996=([java.lang.Object], void), arr-Int-init=([], byte[]), var3695_fill/-1423580022=([byte[], byte], void), var65-init=([], java.math.BigInteger), <init>/-308286944=([java.math.BigInteger, int, byte[]], void), length/-134980193=([java.lang.String], int), Int_parseLong/758265864=([java.lang.String, int], long), var65_valueOf/913516287=([long], java.math.BigInteger), and/-924067828=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger), shiftLeft/387212439=([java.math.BigInteger, int], java.math.BigInteger), or/1536331300=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger)}
; {var3110=org.apache.lucene.util.StringHelper, var486=$r0, var3873=$z0, var484=$z2, var1720=<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>, var2614=java.lang.System, var3135=$r15, var3827=null_type, var1536=$i11, var2425=<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>, var1918=java.lang.Object, var376=$r1, var2290=<org.apache.lucene.util.StringHelper: java.lang.Object idLock>, var283=$r13, var3695=java.util.Arrays, var1851=-1, var65=java.math.BigInteger, var2720=$r2, var1052=1, var2370=<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>, var1128=$r14, var2947=r28, var1952=$i7, var2761=$l10, var2272=l18, var3499=l19, var3814=i21, var1456=r31, var2838=$r8, var10=$r9, var877=r32, var959=$r10, var2755=r33, var921=$r11, var1074=$r12, var2772=<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>}
; {org.apache.lucene.util.StringHelper=var3110, $r0=var486, $z0=var3873, $z2=var484, <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>=var1720, java.lang.System=var2614, $r15=var3135, null_type=var3827, $i11=var1536, <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>=var2425, java.lang.Object=var1918, $r1=var376, <org.apache.lucene.util.StringHelper: java.lang.Object idLock>=var2290, $r13=var283, java.util.Arrays=var3695, -1=var1851, java.math.BigInteger=var65, $r2=var2720, 1=var1052, <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>=var2370, $r14=var1128, r28=var2947, $i7=var1952, $l10=var2761, l18=var2272, l19=var3499, i21=var3814, r31=var1456, $r8=var2838, $r9=var10, r32=var877, $r10=var959, r33=var2755, $r11=var921, $r12=var1074, <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>=var2772}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lorg/apache/lucene/util/StringHelper;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2;	$r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$i11 = virtualinvoke $r15.<java.lang.String: int hashCode()>();	<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i11;	goto [?= $r1 = new java.lang.Object];	$r1 = new java.lang.Object;	specialinvoke $r1.<java.lang.Object: void <init>()>();	<org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1;	$r13 = newarray (byte)[16];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1);	$r2 = new java.math.BigInteger;	specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13);	<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2;	$r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	r28 = $r14;	if $r14 == null goto $r3 = new java.io.DataInputStream;	$i7 = virtualinvoke $r14.<java.lang.String: int length()>();	if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	$l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	l18 = $l10;	l19 = $l10;	goto [?= i21 = 0];	i21 = 0;	if i21 >= 10 goto r31 = newarray (byte)[8];	r31 = newarray (byte)[8];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1);	$r8 = new java.math.BigInteger;	specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31);	$r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18);	r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19);	r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64);	$r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33);	<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12;	return
;block_num 10