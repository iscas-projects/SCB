(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1731 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun length/-171891354 (String) Int)
(declare-fun termLength/-1716209920 (var1731) Int)
(declare-fun resizeBuffer/-837211114 (var1731 Int) (Array Int Int))
(declare-fun getChars/-1382080545 (String Int Int (Array Int Int) Int) void)
(declare-const null-var1731 var1731)
(declare-const null-String String)
(declare-const var2195 var1731) ; Statement: r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl 
(assert (not (= var2195 null-var1731)))
(declare-const var3273 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3273 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(assert (not (= var3273 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2524 Int (length/-171891354 var3273)) ; Statement: i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>() 
(define-const var724 Int (termLength/-1716209920 var2195)) ; Statement: $i1 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(define-const var1741 Int (+ var724 var2524)) ; Statement: $i2 = $i1 + i0 
(assert true)
(define-const var229 (Array Int Int) (resizeBuffer/-837211114 var2195 var1741)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] resizeBuffer(int)>($i2) 
(define-const var3982 Int (termLength/-1716209920 var2195)) ; Statement: $i3 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(assert true)
;(assert (getChars/-1382080545 var3273 0 var2524 var229 var3982)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: void getChars(int,int,char[],int)>(0, i0, $r2, $i3) 

(declare-const var3273!1 String)
(declare-const var584 Int)
(declare-const var2524!1 Int)
(declare-const var229!1 (Array Int Int))
(declare-const var3982!1 Int)
(define-const var633 Int (termLength/-1716209920 var2195)) ; Statement: $i4 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(define-const var2757 Int (+ var633 var2524!1)) ; Statement: $i5 = $i4 + i0 
(declare-const var2195!1 var1731)
(assert (not (= var2195!1 null-var1731)))
(assert (= (termLength/-1716209920 var2195!1) var2757)) ; Statement: r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> = $i5 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-171891354=([java.lang.StringBuilder], int), termLength/-1716209920=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl], int), resizeBuffer/-837211114=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, int], char[]), getChars/-1382080545=([java.lang.StringBuilder, int, int, char[], int], void)}
; {var1731=org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, var2195=r1, var3273=r0, var2524=i0, var724=$i1, var1741=$i2, var229=$r2, var3982=$i3, var584=0, var633=$i4, var2757=$i5}
; {org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl=var1731, r1=var2195, r0=var3273, i0=var2524, $i1=var724, $i2=var1741, $r2=var229, $i3=var3982, 0=var584, $i4=var633, $i5=var2757}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: void getChars(int,int,char[],int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: void getChars(int,int,char[],int)>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;	r0 := @parameter0: java.lang.StringBuilder;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	i0 = virtualinvoke r0.<java.lang.StringBuilder: int length()>();	$i1 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	$i2 = $i1 + i0;	$r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] resizeBuffer(int)>($i2);	$i3 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	virtualinvoke r0.<java.lang.StringBuilder: void getChars(int,int,char[],int)>(0, i0, $r2, $i3);	$i4 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	$i5 = $i4 + i0;	r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> = $i5;	return r1
;block_num 2