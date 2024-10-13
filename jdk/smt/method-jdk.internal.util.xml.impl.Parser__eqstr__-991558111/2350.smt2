(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2999 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun bqstr/-1395969227 (var2999 Int) void)
(declare-fun String-init () String)
(declare-fun mBuff/-281370018 (var2999) (Array Int Int))
(declare-fun mBuffIdx/-281370018 (var2999) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var2999 var2999)
(declare-const null-Int Int)
(declare-const var914 var2999) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var914 null-var2999)))
(declare-const var1305 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1305 null-Int)))
(define-const var3553 Int (cast-from-Int-to-Int var1305)) ; Statement: $i4 = (int) c0 
 ; Statement: if $i4 != 61 goto $i6 = (int) c0 
(assert (not (= var3553 61))) ; Cond: $i4 != 61 
(define-const var2627 Int (cast-from-Int-to-Int var1305)) ; Statement: $i6 = (int) c0 
 ; Statement: if $i6 != 61 goto $c3 = c0 
(assert (not (= var2627 61))) ; Cond: $i6 != 61 
(define-const var818 Int var1305) ; Statement: $c3 = c0 
(assert true) ; Non Conditional
(assert true)
;(assert (bqstr/-1395969227 var914 var818)) ; Statement: specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>($c3) 

(declare-const var914!1 var2999)
(declare-const var818!1 Int)
(define-const var2041 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var2915 (Array Int Int) (mBuff/-281370018 var914!1)) ; Statement: $r2 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff> 
(define-const var1847 Int (mBuffIdx/-281370018 var914!1)) ; Statement: $i1 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx> 
(assert true)
;(assert (<init>/-253222812 var2041 var2915 1 var1847)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i1) 

(declare-const var2041!1 String)
(declare-const var2915!1 (Array Int Int))
(declare-const var1609 Int)
(declare-const var1847!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), bqstr/-1395969227=([jdk.internal.util.xml.impl.Parser, char], void), String-init=([], java.lang.String), mBuff/-281370018=([jdk.internal.util.xml.impl.Parser], char[]), mBuffIdx/-281370018=([jdk.internal.util.xml.impl.Parser], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var2999=jdk.internal.util.xml.impl.Parser, var914=r0, var1305=c0, var3553=$i4, var2627=$i6, var818=$c3, var2041=$r3, var2915=$r2, var1847=$i1, var1609=1}
; {jdk.internal.util.xml.impl.Parser=var2999, r0=var914, c0=var1305, $i4=var3553, $i6=var2627, $c3=var818, $r3=var2041, $r2=var2915, $i1=var1847, 1=var1609}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Parser;	c0 := @parameter0: char;	$i4 = (int) c0;	if $i4 != 61 goto $i6 = (int) c0;	$i6 = (int) c0;	if $i6 != 61 goto $c3 = c0;	$c3 = c0;	specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>($c3);	$r3 = new java.lang.String;	$r2 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;	$i1 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx>;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i1);	return $r3
;block_num 4