(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun bqstr/-1395969227 (var1535 Int) void)
(declare-fun String-init () String)
(declare-fun mBuff/-281370018 (var1535) (Array Int Int))
(declare-fun mBuffIdx/-281370018 (var1535) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1535 var1535)
(declare-const null-Int Int)
(declare-const var2635 var1535) ; Statement: r0 := @this: jdk.internal.util.xml.impl.Parser 
(assert (not (= var2635 null-var1535)))
(declare-const var403 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var403 null-Int)))
(define-const var3931 Int (cast-from-Int-to-Int var403)) ; Statement: $i4 = (int) c0 
 ; Statement: if $i4 != 61 goto $i6 = (int) c0 
(assert (not (= var3931 61))) ; Cond: $i4 != 61 
(define-const var1175 Int (cast-from-Int-to-Int var403)) ; Statement: $i6 = (int) c0 
 ; Statement: if $i6 != 61 goto $c3 = c0 
(assert (not (not (= var1175 61)))) ; Negate: Cond: $i6 != 61  
(define-const var3634 Int 45) ; Statement: $c3 = 45 
 ; Statement: goto [?= specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>($c3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (bqstr/-1395969227 var2635 var3634)) ; Statement: specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>($c3) 

(declare-const var2635!1 var1535)
(declare-const var3634!1 Int)
(define-const var2819 String String-init) ; Statement: $r3 = new java.lang.String 
(define-const var205 (Array Int Int) (mBuff/-281370018 var2635!1)) ; Statement: $r2 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff> 
(define-const var2845 Int (mBuffIdx/-281370018 var2635!1)) ; Statement: $i1 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx> 
(assert true)
;(assert (<init>/-253222812 var2819 var205 1 var2845)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i1) 

(declare-const var2819!1 String)
(declare-const var205!1 (Array Int Int))
(declare-const var2317 Int)
(declare-const var2845!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), bqstr/-1395969227=([jdk.internal.util.xml.impl.Parser, char], void), String-init=([], java.lang.String), mBuff/-281370018=([jdk.internal.util.xml.impl.Parser], char[]), mBuffIdx/-281370018=([jdk.internal.util.xml.impl.Parser], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1535=jdk.internal.util.xml.impl.Parser, var2635=r0, var403=c0, var3931=$i4, var1175=$i6, var3634=$c3, var2819=$r3, var205=$r2, var2845=$i1, var2317=1}
; {jdk.internal.util.xml.impl.Parser=var1535, r0=var2635, c0=var403, $i4=var3931, $i6=var1175, $c3=var3634, $r3=var2819, $r2=var205, $i1=var2845, 1=var2317}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: jdk.internal.util.xml.impl.Parser;	c0 := @parameter0: char;	$i4 = (int) c0;	if $i4 != 61 goto $i6 = (int) c0;	$i6 = (int) c0;	if $i6 != 61 goto $c3 = c0;	$c3 = 45;	goto [?= specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>($c3)];	specialinvoke r0.<jdk.internal.util.xml.impl.Parser: void bqstr(char)>($c3);	$r3 = new java.lang.String;	$r2 = r0.<jdk.internal.util.xml.impl.Parser: char[] mBuff>;	$i1 = r0.<jdk.internal.util.xml.impl.Parser: int mBuffIdx>;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>($r2, 1, $i1);	return $r3
;block_num 4