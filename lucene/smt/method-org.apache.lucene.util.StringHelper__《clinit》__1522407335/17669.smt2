(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2003 0)
(declare-sort var1595 0)
(declare-sort var3358 0)
(declare-sort var2547 0)
(declare-sort var3168 0)
(declare-sort var177 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2003!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var1595_getProperty/258823597 (String) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var2547-init () var2547)
(declare-fun <init>/-279557996 (var2547) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3168_fill/-1423580022 ((Array Int Int) Int) void)
(declare-fun var177-init () var177)
(declare-fun <init>/-308286944 (var177 Int (Array Int Int)) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-fun var177_valueOf/913516287 (Int) var177)
(declare-fun and/-924067828 (var177 var177) var177)
(declare-fun shiftLeft/387212439 (var177 Int) var177)
(declare-fun or/1536331300 (var177 var177) var177)
(declare-const null-String String)
(define-const var2201 ClassObject var2003!class) ; Statement: $r0 = class "Lorg/apache/lucene/util/StringHelper;" 
(assert true)
(define-const var601 Bool (desiredAssertionStatus/-1561484483 var2201)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var601 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3142 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2] 
(assert true) ; Non Conditional
(define-const var489 Bool var3142) ; Statement: <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2 
(define-const var360 String (var1595_getProperty/258823597 "tests.seed")) ; Statement: $r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
 ; Statement: if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert (not (= var360 null-String))) ; Negate: Cond: $r15 == null  
(assert true)
(define-const var1142 Int (hashCode/-467973558 var360)) ; Statement: $i11 = virtualinvoke $r15.<java.lang.String: int hashCode()>() 
(define-const var555 Int var1142) ; Statement: <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i11 
 ; Statement: goto [?= $r1 = new java.lang.Object] 
(assert true) ; Non Conditional
(define-const var2336 var2547 var2547-init) ; Statement: $r1 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var2336)) ; Statement: specialinvoke $r1.<java.lang.Object: void <init>()>() 

(declare-const var2336!1 var2547)
(define-const var2466 var2547 var2336!1) ; Statement: <org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1 
(define-const var3709 (Array Int Int) arr-Int-init) ; Statement: $r13 = newarray (byte)[16] 
;(assert (var3168_fill/-1423580022 var3709 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1) 

(declare-const var3709!1 (Array Int Int))
(declare-const var2033 Int)
(define-const var270 var177 var177-init) ; Statement: $r2 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var270 1 var3709!1)) ; Statement: specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13) 

(declare-const var270!1 var177)
(declare-const var3030 Int)
(declare-const var3709!2 (Array Int Int))
(define-const var476 var177 var270!1) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2 
(define-const var2055 String (var1595_getProperty/258823597 "tests.seed")) ; Statement: $r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
(define-const var3756 String var2055) ; Statement: r28 = $r14 
 ; Statement: if $r14 == null goto $r3 = new java.io.DataInputStream 
(assert (not (= var2055 null-String))) ; Negate: Cond: $r14 == null  
(assert true)
(define-const var2994 Int (length/-134980193 var2055)) ; Statement: $i7 = virtualinvoke $r14.<java.lang.String: int length()>() 
 ; Statement: if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(assert (<= var2994 8)) ; Cond: $i7 <= 8 
(define-const var3113 Int (Int_parseLong/758265864 var3756 16)) ; Statement: $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(define-const var3013 Int var3113) ; Statement: l18 = $l10 
(define-const var891 Int var3113) ; Statement: l19 = $l10 
 ; Statement: goto [?= i21 = 0] 
(assert true) ; Non Conditional
(define-const var1704 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
 ; Statement: if i21 >= 10 goto r31 = newarray (byte)[8] 
(assert (>= var1704 10)) ; Cond: i21 >= 10 
(define-const var2192 (Array Int Int) arr-Int-init) ; Statement: r31 = newarray (byte)[8] 
;(assert (var3168_fill/-1423580022 var2192 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1) 

(declare-const var2192!1 (Array Int Int))
(declare-const var2033!1 Int)
(define-const var1447 var177 var177-init) ; Statement: $r8 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var1447 1 var2192!1)) ; Statement: specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31) 

(declare-const var1447!1 var177)
(declare-const var3030!1 Int)
(declare-const var2192!2 (Array Int Int))
(define-const var3378 var177 (var177_valueOf/913516287 var3013)) ; Statement: $r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18) 
(assert true)
(define-const var2453 var177 (and/-924067828 var3378 var1447!1)) ; Statement: r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(define-const var0 var177 (var177_valueOf/913516287 var891)) ; Statement: $r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19) 
(assert true)
(define-const var2404 var177 (and/-924067828 var0 var1447!1)) ; Statement: r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(assert true)
(define-const var3103 var177 (shiftLeft/387212439 var2453 64)) ; Statement: $r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64) 
(assert true)
(define-const var3418 var177 (or/1536331300 var3103 var2404)) ; Statement: $r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33) 
(define-const var308 var177 var3418) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var1595_getProperty/258823597=([java.lang.String], java.lang.String), hashCode/-467973558=([java.lang.String], int), var2547-init=([], java.lang.Object), <init>/-279557996=([java.lang.Object], void), arr-Int-init=([], byte[]), var3168_fill/-1423580022=([byte[], byte], void), var177-init=([], java.math.BigInteger), <init>/-308286944=([java.math.BigInteger, int, byte[]], void), length/-134980193=([java.lang.String], int), Int_parseLong/758265864=([java.lang.String, int], long), var177_valueOf/913516287=([long], java.math.BigInteger), and/-924067828=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger), shiftLeft/387212439=([java.math.BigInteger, int], java.math.BigInteger), or/1536331300=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger)}
; {var2003=org.apache.lucene.util.StringHelper, var2201=$r0, var601=$z0, var3142=$z2, var489=<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>, var1595=java.lang.System, var360=$r15, var3358=null_type, var1142=$i11, var555=<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>, var2547=java.lang.Object, var2336=$r1, var2466=<org.apache.lucene.util.StringHelper: java.lang.Object idLock>, var3709=$r13, var3168=java.util.Arrays, var2033=-1, var177=java.math.BigInteger, var270=$r2, var3030=1, var476=<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>, var2055=$r14, var3756=r28, var2994=$i7, var3113=$l10, var3013=l18, var891=l19, var1704=i21, var2192=r31, var1447=$r8, var3378=$r9, var2453=r32, var0=$r10, var2404=r33, var3103=$r11, var3418=$r12, var308=<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>}
; {org.apache.lucene.util.StringHelper=var2003, $r0=var2201, $z0=var601, $z2=var3142, <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>=var489, java.lang.System=var1595, $r15=var360, null_type=var3358, $i11=var1142, <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>=var555, java.lang.Object=var2547, $r1=var2336, <org.apache.lucene.util.StringHelper: java.lang.Object idLock>=var2466, $r13=var3709, java.util.Arrays=var3168, -1=var2033, java.math.BigInteger=var177, $r2=var270, 1=var3030, <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>=var476, $r14=var2055, r28=var3756, $i7=var2994, $l10=var3113, l18=var3013, l19=var891, i21=var1704, r31=var2192, $r8=var1447, $r9=var3378, r32=var2453, $r10=var0, r33=var2404, $r11=var3103, $r12=var3418, <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>=var308}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lorg/apache/lucene/util/StringHelper;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2];	<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2;	$r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$i11 = virtualinvoke $r15.<java.lang.String: int hashCode()>();	<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i11;	goto [?= $r1 = new java.lang.Object];	$r1 = new java.lang.Object;	specialinvoke $r1.<java.lang.Object: void <init>()>();	<org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1;	$r13 = newarray (byte)[16];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1);	$r2 = new java.math.BigInteger;	specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13);	<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2;	$r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	r28 = $r14;	if $r14 == null goto $r3 = new java.io.DataInputStream;	$i7 = virtualinvoke $r14.<java.lang.String: int length()>();	if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	$l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	l18 = $l10;	l19 = $l10;	goto [?= i21 = 0];	i21 = 0;	if i21 >= 10 goto r31 = newarray (byte)[8];	r31 = newarray (byte)[8];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1);	$r8 = new java.math.BigInteger;	specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31);	$r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18);	r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19);	r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64);	$r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33);	<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12;	return
;block_num 10