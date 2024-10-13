(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun mBuffIdx/-281370018 (var2197) Int)
(declare-fun bname/586193822 (var2197 Bool) void)
(declare-fun String-init () String)
(declare-fun mBuff/-281370018 (var2197) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2197 var2197)
(declare-const null-Bool Bool)
(declare-const var309 var2197) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var309 null-var2197)))
(declare-const var679 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var679 null-Bool)))
(define-const var986 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
(declare-const var309!1 var2197)
(assert (not (= var309!1 null-var2197)))
(assert (= (mBuffIdx/-281370018 var309!1) var986)) ; Statement: r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx> = $i2 
(assert true)
;(assert (bname/586193822 var309!1 var679)) ; Statement: specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bname(boolean)>(z0) 

(declare-const var309!2 var2197)
(declare-const var679!1 Bool)
(define-const var2211 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var2624 (Array Int Int) (mBuff/-281370018 var309!2)) ; Statement: $r2 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff> 
(define-const var3323 Int (mBuffIdx/-281370018 var309!2)) ; Statement: $i0 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx> 
(assert true)
;(assert (<init>/-253222812 var2211 var2624 1 var3323)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i0) 

(declare-const var2211!1 String)
(declare-const var2624!1 (Array Int Int))
(declare-const var3519 Int)
(declare-const var3323!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), mBuffIdx/-281370018=([jdk.internal.util.xml.impl.Parser], int), bname/586193822=([jdk.internal.util.xml.impl.Parser, boolean], void), String-init=([], java.lang.String), mBuff/-281370018=([jdk.internal.util.xml.impl.Parser], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2197=jdk.internal.util.xml.impl.Parser, var309=r0, var679=z0, var986=$i2, var2211=$r3, var2624=$r2, var3323=$i0, var3519=1}
; {jdk.internal.util.xml.impl.Parser=var2197, r0=var309, z0=var679, $i2=var986, $r3=var2211, $r2=var2624, $i0=var3323, 1=var3519}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Parser;	z0 := @parameter0: boolean;	$i2 = (int) -1;	r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx> = $i2;	specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bname(boolean)>(z0);	$r3 = new java.lang.String;	$r2 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;	$i0 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx>;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i0);	return $r3
;block_num 1