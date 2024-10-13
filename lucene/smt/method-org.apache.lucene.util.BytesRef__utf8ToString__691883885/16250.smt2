(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var654 0)
(declare-sort var3202 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/727234302 (var654) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun bytes/727234302 (var654) (Array Int Int))
(declare-fun offset/727234302 (var654) Int)
(declare-fun var3202_UTF8toUTF16/-1591285115 ((Array Int Int) Int Int (Array Int Int)) Int)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var654 var654)
(declare-const var934 var654) ; Statement: r0 := @this: org.apache.lucene.util.BytesRef 
(assert (not (= var934 null-var654)))
(define-const var1756 Int (length/727234302 var934)) ; Statement: $i0 = r0.<org.apache.lucene.util.BytesRef: int length> 
(define-const var1182 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (char)[$i0] 
(define-const var22 (Array Int Int) (bytes/727234302 var934)) ; Statement: $r2 = r0.<org.apache.lucene.util.BytesRef: byte[] bytes> 
(define-const var1185 Int (offset/727234302 var934)) ; Statement: $i2 = r0.<org.apache.lucene.util.BytesRef: int offset> 
(define-const var3872 Int (length/727234302 var934)) ; Statement: $i1 = r0.<org.apache.lucene.util.BytesRef: int length> 
(define-const var3471 Int (var3202_UTF8toUTF16/-1591285115 var22 var1185 var3872 var1182)) ; Statement: i3 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int UTF8toUTF16(byte[],int,int,char[])>($r2, $i2, $i1, r1) 
(define-const var117 String String-init) ; Statement: $r3 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var117 var1182 0 var3471)) ; Statement: specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>(r1, 0, i3) 

(declare-const var117!1 String)
(declare-const var1182!1 (Array Int Int))
(declare-const var807 Int)
(declare-const var3471!1 Int)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/727234302=([org.apache.lucene.util.BytesRef], int), arr-Int-init=([], char[]), bytes/727234302=([org.apache.lucene.util.BytesRef], byte[]), offset/727234302=([org.apache.lucene.util.BytesRef], int), var3202_UTF8toUTF16/-1591285115=([byte[], int, int, char[]], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var654=org.apache.lucene.util.BytesRef, var934=r0, var1756=$i0, var1182=r1, var22=$r2, var1185=$i2, var3872=$i1, var3202=org.apache.lucene.util.UnicodeUtil, var3471=i3, var117=$r3, var807=0}
; {org.apache.lucene.util.BytesRef=var654, r0=var934, $i0=var1756, r1=var1182, $r2=var22, $i2=var1185, $i1=var3872, org.apache.lucene.util.UnicodeUtil=var3202, i3=var3471, $r3=var117, 0=var807}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.lucene.util.BytesRef;	$i0 = r0.<org.apache.lucene.util.BytesRef: int length>;	r1 = newarray (char)[$i0];	$r2 = r0.<org.apache.lucene.util.BytesRef: byte[] bytes>;	$i2 = r0.<org.apache.lucene.util.BytesRef: int offset>;	$i1 = r0.<org.apache.lucene.util.BytesRef: int length>;	i3 = staticinvoke <org.apache.lucene.util.UnicodeUtil: int UTF8toUTF16(byte[],int,int,char[])>($r2, $i2, $i1, r1);	$r3 = new java.lang.String;	specialinvoke $r3.<java.lang.String: void <init>(char[],int,int)>(r1, 0, i3);	return $r3
;block_num 1