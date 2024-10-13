(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var792 0)
(declare-sort var2121 0)
(declare-sort var1217 0)
(declare-sort var457 0)
(declare-sort var1539 0)
(declare-sort var846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var792!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var2121_getProperty/258823597 (String) String)
(declare-fun var2121_currentTimeMillis/630293680 () Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var457-init () var457)
(declare-fun <init>/-279557996 (var457) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var1539_fill/-1423580022 ((Array Int Int) Int) void)
(declare-fun var846-init () var846)
(declare-fun <init>/-308286944 (var846 Int (Array Int Int)) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-fun var846_valueOf/913516287 (Int) var846)
(declare-fun and/-924067828 (var846 var846) var846)
(declare-fun shiftLeft/387212439 (var846 Int) var846)
(declare-fun or/1536331300 (var846 var846) var846)
(declare-const null-String String)
(define-const var2395 ClassObject var792!class) ; Statement: $r0 = class "Lorg/apache/lucene/util/StringHelper;" 
(assert true)
(define-const var2197 Bool (desiredAssertionStatus/-1561484483 var2395)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (not (= (ite var2197 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2955 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2] 
(assert true) ; Non Conditional
(define-const var537 Bool var2955) ; Statement: <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2 
(define-const var3384 String (var2121_getProperty/258823597 "tests.seed")) ; Statement: $r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
 ; Statement: if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert (= var3384 null-String)) ; Cond: $r15 == null 
(define-const var3535 Int var2121_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var1670 Int (cast-from-Int-to-Int var3535)) ; Statement: $i1 = (int) $l0 
(define-const var867 Int var1670) ; Statement: <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i1 
(assert true) ; Non Conditional
(define-const var3219 var457 var457-init) ; Statement: $r1 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var3219)) ; Statement: specialinvoke $r1.<java.lang.Object: void <init>()>() 

(declare-const var3219!1 var457)
(define-const var299 var457 var3219!1) ; Statement: <org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1 
(define-const var2593 (Array Int Int) arr-Int-init) ; Statement: $r13 = newarray (byte)[16] 
;(assert (var1539_fill/-1423580022 var2593 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1) 

(declare-const var2593!1 (Array Int Int))
(declare-const var1679 Int)
(define-const var2746 var846 var846-init) ; Statement: $r2 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var2746 1 var2593!1)) ; Statement: specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13) 

(declare-const var2746!1 var846)
(declare-const var3574 Int)
(declare-const var2593!2 (Array Int Int))
(define-const var570 var846 var2746!1) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2 
(define-const var482 String (var2121_getProperty/258823597 "tests.seed")) ; Statement: $r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
(define-const var598 String var482) ; Statement: r28 = $r14 
 ; Statement: if $r14 == null goto $r3 = new java.io.DataInputStream 
(assert (not (= var482 null-String))) ; Negate: Cond: $r14 == null  
(assert true)
(define-const var1783 Int (length/-134980193 var482)) ; Statement: $i7 = virtualinvoke $r14.<java.lang.String: int length()>() 
 ; Statement: if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(assert (<= var1783 8)) ; Cond: $i7 <= 8 
(define-const var2368 Int (Int_parseLong/758265864 var598 16)) ; Statement: $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(define-const var943 Int var2368) ; Statement: l18 = $l10 
(define-const var716 Int var2368) ; Statement: l19 = $l10 
 ; Statement: goto [?= i21 = 0] 
(assert true) ; Non Conditional
(define-const var3627 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
 ; Statement: if i21 >= 10 goto r31 = newarray (byte)[8] 
(assert (>= var3627 10)) ; Cond: i21 >= 10 
(define-const var89 (Array Int Int) arr-Int-init) ; Statement: r31 = newarray (byte)[8] 
;(assert (var1539_fill/-1423580022 var89 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1) 

(declare-const var89!1 (Array Int Int))
(declare-const var1679!1 Int)
(define-const var2613 var846 var846-init) ; Statement: $r8 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var2613 1 var89!1)) ; Statement: specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31) 

(declare-const var2613!1 var846)
(declare-const var3574!1 Int)
(declare-const var89!2 (Array Int Int))
(define-const var1815 var846 (var846_valueOf/913516287 var943)) ; Statement: $r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18) 
(assert true)
(define-const var3814 var846 (and/-924067828 var1815 var2613!1)) ; Statement: r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(define-const var2173 var846 (var846_valueOf/913516287 var716)) ; Statement: $r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19) 
(assert true)
(define-const var2849 var846 (and/-924067828 var2173 var2613!1)) ; Statement: r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(assert true)
(define-const var3185 var846 (shiftLeft/387212439 var3814 64)) ; Statement: $r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64) 
(assert true)
(define-const var2394 var846 (or/1536331300 var3185 var2849)) ; Statement: $r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33) 
(define-const var3013 var846 var2394) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var2121_getProperty/258823597=([java.lang.String], java.lang.String), var2121_currentTimeMillis/630293680=([], long), cast-from-Int-to-Int=([long], int), var457-init=([], java.lang.Object), <init>/-279557996=([java.lang.Object], void), arr-Int-init=([], byte[]), var1539_fill/-1423580022=([byte[], byte], void), var846-init=([], java.math.BigInteger), <init>/-308286944=([java.math.BigInteger, int, byte[]], void), length/-134980193=([java.lang.String], int), Int_parseLong/758265864=([java.lang.String, int], long), var846_valueOf/913516287=([long], java.math.BigInteger), and/-924067828=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger), shiftLeft/387212439=([java.math.BigInteger, int], java.math.BigInteger), or/1536331300=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger)}
; {var792=org.apache.lucene.util.StringHelper, var2395=$r0, var2197=$z0, var2955=$z2, var537=<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>, var2121=java.lang.System, var3384=$r15, var1217=null_type, var3535=$l0, var1670=$i1, var867=<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>, var457=java.lang.Object, var3219=$r1, var299=<org.apache.lucene.util.StringHelper: java.lang.Object idLock>, var2593=$r13, var1539=java.util.Arrays, var1679=-1, var846=java.math.BigInteger, var2746=$r2, var3574=1, var570=<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>, var482=$r14, var598=r28, var1783=$i7, var2368=$l10, var943=l18, var716=l19, var3627=i21, var89=r31, var2613=$r8, var1815=$r9, var3814=r32, var2173=$r10, var2849=r33, var3185=$r11, var2394=$r12, var3013=<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>}
; {org.apache.lucene.util.StringHelper=var792, $r0=var2395, $z0=var2197, $z2=var2955, <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>=var537, java.lang.System=var2121, $r15=var3384, null_type=var1217, $l0=var3535, $i1=var1670, <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>=var867, java.lang.Object=var457, $r1=var3219, <org.apache.lucene.util.StringHelper: java.lang.Object idLock>=var299, $r13=var2593, java.util.Arrays=var1539, -1=var1679, java.math.BigInteger=var846, $r2=var2746, 1=var3574, <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>=var570, $r14=var482, r28=var598, $i7=var1783, $l10=var2368, l18=var943, l19=var716, i21=var3627, r31=var89, $r8=var2613, $r9=var1815, r32=var3814, $r10=var2173, r33=var2849, $r11=var3185, $r12=var2394, <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>=var3013}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lorg/apache/lucene/util/StringHelper;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 1;	goto [?= <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2];	<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2;	$r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$i1 = (int) $l0;	<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i1;	$r1 = new java.lang.Object;	specialinvoke $r1.<java.lang.Object: void <init>()>();	<org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1;	$r13 = newarray (byte)[16];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1);	$r2 = new java.math.BigInteger;	specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13);	<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2;	$r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	r28 = $r14;	if $r14 == null goto $r3 = new java.io.DataInputStream;	$i7 = virtualinvoke $r14.<java.lang.String: int length()>();	if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	$l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	l18 = $l10;	l19 = $l10;	goto [?= i21 = 0];	i21 = 0;	if i21 >= 10 goto r31 = newarray (byte)[8];	r31 = newarray (byte)[8];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1);	$r8 = new java.math.BigInteger;	specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31);	$r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18);	r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19);	r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64);	$r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33);	<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12;	return
;block_num 10