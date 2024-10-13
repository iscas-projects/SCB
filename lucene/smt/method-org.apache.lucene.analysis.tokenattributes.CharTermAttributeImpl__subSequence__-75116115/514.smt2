(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3032 0)
(declare-sort var1309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun termLength/-1716209920 (var3032) Int)
(declare-fun var1309_checkFromToIndex/-949241738 (Int Int Int) Int)
(declare-fun String-init () String)
(declare-fun termBuffer/-1716209920 (var3032) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3032 var3032)
(declare-const null-Int Int)
(declare-const var147 var3032) ; Statement: r0 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl 
(assert (not (= var147 null-var3032)))
(declare-const var1666 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1666 null-Int)))
(declare-const var2513 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2513 null-Int)))
(define-const var3129 Int (termLength/-1716209920 var147)) ; Statement: $i2 = r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
;(assert (var1309_checkFromToIndex/-949241738 var1666 var2513 var3129)) ; Statement: staticinvoke <java.util.Objects: int checkFromToIndex(int,int,int)>(i0, i1, $i2) 

(declare-const var1666!1 Int)
(declare-const var2513!1 Int)
(declare-const var3129!1 Int)
(define-const var1005 String String-init) ; Statement: $r1 = new java.lang.String 
(define-const var1653 (Array Int Int) (termBuffer/-1716209920 var147)) ; Statement: $r2 = r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] termBuffer> 
(define-const var410 Int (- var2513!1 var1666!1)) ; Statement: $i3 = i1 - i0 
(assert true)
;(assert (<init>/-253222812 var1005 var1653 var1666!1 var410)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i3) 

(declare-const var1005!1 String)
(declare-const var1653!1 (Array Int Int))
(declare-const var1666!2 Int)
(declare-const var410!1 Int)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {termLength/-1716209920=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl], int), var1309_checkFromToIndex/-949241738=([int, int, int], int), String-init=([], java.lang.String), termBuffer/-1716209920=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3032=org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, var147=r0, var1666=i0, var2513=i1, var3129=$i2, var1309=java.util.Objects, var1005=$r1, var1653=$r2, var410=$i3}
; {org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl=var3032, r0=var147, i0=var1666, i1=var2513, $i2=var3129, java.util.Objects=var1309, $r1=var1005, $r2=var1653, $i3=var410}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;	i0 := @parameter0: int;	i1 := @parameter1: int;	$i2 = r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	staticinvoke <java.util.Objects: int checkFromToIndex(int,int,int)>(i0, i1, $i2);	$r1 = new java.lang.String;	$r2 = r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] termBuffer>;	$i3 = i1 - i0;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i3);	return $r1
;block_num 1