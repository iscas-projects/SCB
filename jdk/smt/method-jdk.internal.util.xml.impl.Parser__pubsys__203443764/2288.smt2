(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2389 0)
(declare-sort var1824 0)
(declare-sort var3607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pair/-1800420241 (var2389 var1824) var1824)
(declare-fun name/-1580151085 (var2389 Bool) String)
(declare-fun name/2073447641 (var1824) String)
(declare-fun bqstr/-1395969227 (var2389 Int) void)
(declare-fun String-init () String)
(declare-fun mBuff/-281370018 (var2389) (Array Int Int))
(declare-fun mBuffIdx/-281370018 (var2389) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun value/2073447641 (var1824) String)
(declare-const null-var2389 var2389)
(declare-const null-Int Int)
(declare-const null-NullType var3607)
(declare-const null-var1824 var1824)
(declare-const null-String String)
(declare-const var2683 var2389) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var2683 null-var2389)))
(declare-const var2617 Int) ; Statement: c3 := @parameter0: char 
(assert (not (= var2617 null-Int)))
(assert true)
(define-const var2230 var1824 (pair/-1800420241 var2683 null-var1824)) ; Statement: r1 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>(null) 
(assert true)
(define-const var2972 String (name/-1580151085 var2683 (ite (= 1 0) true false))) ; Statement: r2 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: java.lang.String name(boolean)>(0) 
(define-const var3811 String "PUBLIC") ; Statement: $r3 = "PUBLIC" 
(assert true)
(define-const var3417 Bool (= var3811 var2972)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 != 1 goto $r4 = "SYSTEM" 
(assert (not (= (ite var3417 1 0) 1))) ; Cond: $z0 != 1 
(define-const var1175 String "SYSTEM") ; Statement: $r4 = "SYSTEM" 
(assert true)
(define-const var2835 Bool (= var1175 var2972)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z1 != 1 goto virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: void panic(java.lang.String)>("") 
(assert (not (not (= (ite var2835 1 0) 1)))) ; Negate: Cond: $z1 != 1  
(declare-const var2230!1 var1824)
(assert (not (= var2230!1 null-var1824)))
(assert (= (name/2073447641 var2230!1) null-String)) ; Statement: r1.<jdk.internal.util.xml.impl.Pair: java.lang.String name> = null 
(assert true)
;(assert (bqstr/-1395969227 var2683 32)) ; Statement: specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>(32) 

(declare-const var2683!1 var2389)
(declare-const var3245 Int)
(define-const var205 String String-init) ; Statement: $r13 = new java.lang.String 
(define-const var13 (Array Int Int) (mBuff/-281370018 var2683!1)) ; Statement: $r6 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff> 
(define-const var3447 Int (mBuffIdx/-281370018 var2683!1)) ; Statement: $i0 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx> 
(assert true)
;(assert (<init>/-253222812 var205 var13 1 var3447)) ; Statement: specialinvoke $r13.<java.lang.String: void <init>(char[],int,int)>($r6, 1, $i0) 

(declare-const var205!1 String)
(declare-const var13!1 (Array Int Int))
(declare-const var612 Int)
(declare-const var3447!1 Int)
(declare-const var2230!2 var1824)
(assert (not (= var2230!2 null-var1824)))
(assert (= (value/2073447641 var2230!2) var205!1)) ; Statement: r1.<jdk.internal.util.xml.impl.Pair: java.lang.String value> = $r13 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {pair/-1800420241=([jdk.internal.util.xml.impl.Parser, jdk.internal.util.xml.impl.Pair], jdk.internal.util.xml.impl.Pair), name/-1580151085=([jdk.internal.util.xml.impl.Parser, boolean], java.lang.String), name/2073447641=([jdk.internal.util.xml.impl.Pair], java.lang.String), bqstr/-1395969227=([jdk.internal.util.xml.impl.Parser, char], void), String-init=([], java.lang.String), mBuff/-281370018=([jdk.internal.util.xml.impl.Parser], char[]), mBuffIdx/-281370018=([jdk.internal.util.xml.impl.Parser], int), <init>/-253222812=([java.lang.String, char[], int, int], void), value/2073447641=([jdk.internal.util.xml.impl.Pair], java.lang.String)}
; {var2389=jdk.internal.util.xml.impl.Parser, var2683=r0, var2617=c3, var1824=jdk.internal.util.xml.impl.Pair, var2230=r1, var2972=r2, var3811=$r3, var3417=$z0, var1175=$r4, var2835=$z1, var3607=null_type, var3245=32, var205=$r13, var13=$r6, var3447=$i0, var612=1}
; {jdk.internal.util.xml.impl.Parser=var2389, r0=var2683, c3=var2617, jdk.internal.util.xml.impl.Pair=var1824, r1=var2230, r2=var2972, $r3=var3811, $z0=var3417, $r4=var1175, $z1=var2835, null_type=var3607, 32=var3245, $r13=var205, $r6=var13, $i0=var3447, 1=var612}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Parser;	c3 := @parameter0: char;	r1 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: jdk.internal.util.xml.impl.Pair pair(jdk.internal.util.xml.impl.Pair)>(null);	r2 = virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: java.lang.String name(boolean)>(0);	$r3 = "PUBLIC";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 != 1 goto $r4 = "SYSTEM";	$r4 = "SYSTEM";	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z1 != 1 goto virtualinvoke r0.<jdk.internal.util.xml.impl.Parser: void panic(java.lang.String)>("");	r1.<jdk.internal.util.xml.impl.Pair: java.lang.String name> = null;	specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>(32);	$r13 = new java.lang.String;	$r6 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;	$i0 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx>;	specialinvoke $r13.<java.lang.String: void <init>(char[],int,int)>($r6, 1, $i0);	r1.<jdk.internal.util.xml.impl.Pair: java.lang.String value> = $r13;	return r1
;block_num 3