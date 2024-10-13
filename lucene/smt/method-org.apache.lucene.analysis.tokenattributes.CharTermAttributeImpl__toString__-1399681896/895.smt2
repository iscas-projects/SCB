(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun termBuffer/-1716209920 (var3329) (Array Int Int))
(declare-fun termLength/-1716209920 (var3329) Int)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3329 var3329)
(declare-const var2244 var3329) ; Statement: r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl 
(assert (not (= var2244 null-var3329)))
(define-const var2992 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var3930 (Array Int Int) (termBuffer/-1716209920 var2244)) ; Statement: $r2 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] termBuffer> 
(define-const var3821 Int (termLength/-1716209920 var2244)) ; Statement: $i0 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(assert true)
;(assert (<init>/-253222812 var2992 var3930 0 var3821)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0) 

(declare-const var2992!1 String)
(declare-const var3930!1 (Array Int Int))
(declare-const var1865 Int)
(declare-const var3821!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), termBuffer/-1716209920=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl], char[]), termLength/-1716209920=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl], int), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3329=org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, var2244=r1, var2992=$r0, var3930=$r2, var3821=$i0, var1865=0}
; {org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl=var3329, r1=var2244, $r0=var2992, $r2=var3930, $i0=var3821, 0=var1865}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;	$r0 = new java.lang.String;	$r2 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] termBuffer>;	$i0 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, 0, $i0);	return $r0
;block_num 1