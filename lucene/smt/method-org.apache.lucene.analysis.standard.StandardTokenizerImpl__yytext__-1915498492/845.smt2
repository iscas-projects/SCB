(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun zzBuffer/-814387035 (var3715) (Array Int Int))
(declare-fun zzStartRead/-814387035 (var3715) Int)
(declare-fun zzMarkedPos/-814387035 (var3715) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3715 var3715)
(declare-const var2371 var3715) ; Statement: r1 := @this: org.apache.lucene.analysis.standard.StandardTokenizerImpl 
(assert (not (= var2371 null-var3715)))
(define-const var2960 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var2056 (Array Int Int) (zzBuffer/-814387035 var2371)) ; Statement: $r2 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: char[] zzBuffer> 
(define-const var1705 Int (zzStartRead/-814387035 var2371)) ; Statement: $i3 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: int zzStartRead> 
(define-const var2881 Int (zzMarkedPos/-814387035 var2371)) ; Statement: $i1 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: int zzMarkedPos> 
(define-const var3425 Int (zzStartRead/-814387035 var2371)) ; Statement: $i0 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: int zzStartRead> 
(define-const var2505 Int (- var2881 var3425)) ; Statement: $i2 = $i1 - $i0 
(assert true)
;(assert (<init>/-253222812 var2960 var2056 var1705 var2505)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i3, $i2) 

(declare-const var2960!1 String)
(declare-const var2056!1 (Array Int Int))
(declare-const var1705!1 Int)
(declare-const var2505!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), zzBuffer/-814387035=([org.apache.lucene.analysis.standard.StandardTokenizerImpl], char[]), zzStartRead/-814387035=([org.apache.lucene.analysis.standard.StandardTokenizerImpl], int), zzMarkedPos/-814387035=([org.apache.lucene.analysis.standard.StandardTokenizerImpl], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3715=org.apache.lucene.analysis.standard.StandardTokenizerImpl, var2371=r1, var2960=$r0, var2056=$r2, var1705=$i3, var2881=$i1, var3425=$i0, var2505=$i2}
; {org.apache.lucene.analysis.standard.StandardTokenizerImpl=var3715, r1=var2371, $r0=var2960, $r2=var2056, $i3=var1705, $i1=var2881, $i0=var3425, $i2=var2505}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.standard.StandardTokenizerImpl;	$r0 = new java.lang.String;	$r2 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: char[] zzBuffer>;	$i3 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: int zzStartRead>;	$i1 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: int zzMarkedPos>;	$i0 = r1.<org.apache.lucene.analysis.standard.StandardTokenizerImpl: int zzStartRead>;	$i2 = $i1 - $i0;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, $i3, $i2);	return $r0
;block_num 1