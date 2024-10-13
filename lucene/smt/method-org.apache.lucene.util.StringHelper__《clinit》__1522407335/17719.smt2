(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2229 0)
(declare-sort var3527 0)
(declare-sort var345 0)
(declare-sort var2670 0)
(declare-sort var266 0)
(declare-sort var2764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2229!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun var3527_getProperty/258823597 (String) String)
(declare-fun var3527_currentTimeMillis/630293680 () Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2670-init () var2670)
(declare-fun <init>/-279557996 (var2670) void)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var266_fill/-1423580022 ((Array Int Int) Int) void)
(declare-fun var2764-init () var2764)
(declare-fun <init>/-308286944 (var2764 Int (Array Int Int)) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun Int_parseLong/758265864 (String Int) Int)
(declare-fun var2764_valueOf/913516287 (Int) var2764)
(declare-fun and/-924067828 (var2764 var2764) var2764)
(declare-fun shiftLeft/387212439 (var2764 Int) var2764)
(declare-fun or/1536331300 (var2764 var2764) var2764)
(declare-const null-String String)
(define-const var2863 ClassObject var2229!class) ; Statement: $r0 = class "Lorg/apache/lucene/util/StringHelper;" 
(assert true)
(define-const var1474 Bool (desiredAssertionStatus/-1561484483 var2863)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z2 = 0 
(assert (not (= (ite var1474 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2671 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
(define-const var104 Bool var2671) ; Statement: <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2 
(define-const var2328 String (var3527_getProperty/258823597 "tests.seed")) ; Statement: $r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
 ; Statement: if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(assert (= var2328 null-String)) ; Cond: $r15 == null 
(define-const var1470 Int var3527_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var1031 Int (cast-from-Int-to-Int var1470)) ; Statement: $i1 = (int) $l0 
(define-const var858 Int var1031) ; Statement: <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i1 
(assert true) ; Non Conditional
(define-const var2743 var2670 var2670-init) ; Statement: $r1 = new java.lang.Object 
(assert true)
;(assert (<init>/-279557996 var2743)) ; Statement: specialinvoke $r1.<java.lang.Object: void <init>()>() 

(declare-const var2743!1 var2670)
(define-const var1090 var2670 var2743!1) ; Statement: <org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1 
(define-const var1133 (Array Int Int) arr-Int-init) ; Statement: $r13 = newarray (byte)[16] 
;(assert (var266_fill/-1423580022 var1133 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1) 

(declare-const var1133!1 (Array Int Int))
(declare-const var239 Int)
(define-const var1747 var2764 var2764-init) ; Statement: $r2 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var1747 1 var1133!1)) ; Statement: specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13) 

(declare-const var1747!1 var2764)
(declare-const var500 Int)
(declare-const var1133!2 (Array Int Int))
(define-const var2147 var2764 var1747!1) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2 
(define-const var103 String (var3527_getProperty/258823597 "tests.seed")) ; Statement: $r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed") 
(define-const var2465 String var103) ; Statement: r28 = $r14 
 ; Statement: if $r14 == null goto $r3 = new java.io.DataInputStream 
(assert (not (= var103 null-String))) ; Negate: Cond: $r14 == null  
(assert true)
(define-const var2697 Int (length/-134980193 var103)) ; Statement: $i7 = virtualinvoke $r14.<java.lang.String: int length()>() 
 ; Statement: if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(assert (<= var2697 8)) ; Cond: $i7 <= 8 
(define-const var1888 Int (Int_parseLong/758265864 var2465 16)) ; Statement: $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16) 
(define-const var711 Int var1888) ; Statement: l18 = $l10 
(define-const var621 Int var1888) ; Statement: l19 = $l10 
 ; Statement: goto [?= i21 = 0] 
(assert true) ; Non Conditional
(define-const var3118 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
 ; Statement: if i21 >= 10 goto r31 = newarray (byte)[8] 
(assert (>= var3118 10)) ; Cond: i21 >= 10 
(define-const var954 (Array Int Int) arr-Int-init) ; Statement: r31 = newarray (byte)[8] 
;(assert (var266_fill/-1423580022 var954 -1)) ; Statement: staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1) 

(declare-const var954!1 (Array Int Int))
(declare-const var239!1 Int)
(define-const var3057 var2764 var2764-init) ; Statement: $r8 = new java.math.BigInteger 
(assert true)
;(assert (<init>/-308286944 var3057 1 var954!1)) ; Statement: specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31) 

(declare-const var3057!1 var2764)
(declare-const var500!1 Int)
(declare-const var954!2 (Array Int Int))
(define-const var3754 var2764 (var2764_valueOf/913516287 var711)) ; Statement: $r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18) 
(assert true)
(define-const var2104 var2764 (and/-924067828 var3754 var3057!1)) ; Statement: r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(define-const var3641 var2764 (var2764_valueOf/913516287 var621)) ; Statement: $r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19) 
(assert true)
(define-const var326 var2764 (and/-924067828 var3641 var3057!1)) ; Statement: r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8) 
(assert true)
(define-const var2830 var2764 (shiftLeft/387212439 var2104 64)) ; Statement: $r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64) 
(assert true)
(define-const var1816 var2764 (or/1536331300 var2830 var326)) ; Statement: $r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33) 
(define-const var497 var2764 var1816) ; Statement: <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), var3527_getProperty/258823597=([java.lang.String], java.lang.String), var3527_currentTimeMillis/630293680=([], long), cast-from-Int-to-Int=([long], int), var2670-init=([], java.lang.Object), <init>/-279557996=([java.lang.Object], void), arr-Int-init=([], byte[]), var266_fill/-1423580022=([byte[], byte], void), var2764-init=([], java.math.BigInteger), <init>/-308286944=([java.math.BigInteger, int, byte[]], void), length/-134980193=([java.lang.String], int), Int_parseLong/758265864=([java.lang.String, int], long), var2764_valueOf/913516287=([long], java.math.BigInteger), and/-924067828=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger), shiftLeft/387212439=([java.math.BigInteger, int], java.math.BigInteger), or/1536331300=([java.math.BigInteger, java.math.BigInteger], java.math.BigInteger)}
; {var2229=org.apache.lucene.util.StringHelper, var2863=$r0, var1474=$z0, var2671=$z2, var104=<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>, var3527=java.lang.System, var2328=$r15, var345=null_type, var1470=$l0, var1031=$i1, var858=<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>, var2670=java.lang.Object, var2743=$r1, var1090=<org.apache.lucene.util.StringHelper: java.lang.Object idLock>, var1133=$r13, var266=java.util.Arrays, var239=-1, var2764=java.math.BigInteger, var1747=$r2, var500=1, var2147=<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>, var103=$r14, var2465=r28, var2697=$i7, var1888=$l10, var711=l18, var621=l19, var3118=i21, var954=r31, var3057=$r8, var3754=$r9, var2104=r32, var3641=$r10, var326=r33, var2830=$r11, var1816=$r12, var497=<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>}
; {org.apache.lucene.util.StringHelper=var2229, $r0=var2863, $z0=var1474, $z2=var2671, <org.apache.lucene.util.StringHelper: boolean $assertionsDisabled>=var104, java.lang.System=var3527, $r15=var2328, null_type=var345, $l0=var1470, $i1=var1031, <org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED>=var858, java.lang.Object=var2670, $r1=var2743, <org.apache.lucene.util.StringHelper: java.lang.Object idLock>=var1090, $r13=var1133, java.util.Arrays=var266, -1=var239, java.math.BigInteger=var2764, $r2=var1747, 1=var500, <org.apache.lucene.util.StringHelper: java.math.BigInteger mask128>=var2147, $r14=var103, r28=var2465, $i7=var2697, $l10=var1888, l18=var711, l19=var621, i21=var3118, r31=var954, $r8=var3057, $r9=var3754, r32=var2104, $r10=var3641, r33=var326, $r11=var2830, $r12=var1816, <org.apache.lucene.util.StringHelper: java.math.BigInteger nextId>=var497}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lorg/apache/lucene/util/StringHelper;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z2 = 0;	$z2 = 0;	<org.apache.lucene.util.StringHelper: boolean $assertionsDisabled> = $z2;	$r15 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	if $r15 == null goto $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$i1 = (int) $l0;	<org.apache.lucene.util.StringHelper: int GOOD_FAST_HASH_SEED> = $i1;	$r1 = new java.lang.Object;	specialinvoke $r1.<java.lang.Object: void <init>()>();	<org.apache.lucene.util.StringHelper: java.lang.Object idLock> = $r1;	$r13 = newarray (byte)[16];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>($r13, -1);	$r2 = new java.math.BigInteger;	specialinvoke $r2.<java.math.BigInteger: void <init>(int,byte[])>(1, $r13);	<org.apache.lucene.util.StringHelper: java.math.BigInteger mask128> = $r2;	$r14 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("tests.seed");	r28 = $r14;	if $r14 == null goto $r3 = new java.io.DataInputStream;	$i7 = virtualinvoke $r14.<java.lang.String: int length()>();	if $i7 <= 8 goto $l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	$l10 = staticinvoke <java.lang.Long: long parseLong(java.lang.String,int)>(r28, 16);	l18 = $l10;	l19 = $l10;	goto [?= i21 = 0];	i21 = 0;	if i21 >= 10 goto r31 = newarray (byte)[8];	r31 = newarray (byte)[8];	staticinvoke <java.util.Arrays: void fill(byte[],byte)>(r31, -1);	$r8 = new java.math.BigInteger;	specialinvoke $r8.<java.math.BigInteger: void <init>(int,byte[])>(1, r31);	$r9 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l18);	r32 = virtualinvoke $r9.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r10 = staticinvoke <java.math.BigInteger: java.math.BigInteger valueOf(long)>(l19);	r33 = virtualinvoke $r10.<java.math.BigInteger: java.math.BigInteger and(java.math.BigInteger)>($r8);	$r11 = virtualinvoke r32.<java.math.BigInteger: java.math.BigInteger shiftLeft(int)>(64);	$r12 = virtualinvoke $r11.<java.math.BigInteger: java.math.BigInteger or(java.math.BigInteger)>(r33);	<org.apache.lucene.util.StringHelper: java.math.BigInteger nextId> = $r12;	return
;block_num 10