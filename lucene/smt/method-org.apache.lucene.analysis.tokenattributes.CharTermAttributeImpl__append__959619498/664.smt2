(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2619 0)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun termLength/-1716209920 (var2619) Int)
(declare-fun resizeBuffer/-837211114 (var2619 Int) (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-const null-var2619 var2619)
(declare-const null-String String)
(declare-const var3429 var2619) ; Statement: r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl 
(assert (not (= var3429 null-var2619)))
(declare-const var2217 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2217 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2217 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3475 Int (length/-134980193 var2217)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3373 Int (termLength/-1716209920 var3429)) ; Statement: $i1 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(define-const var3371 Int (+ var3373 var3475)) ; Statement: $i2 = $i1 + i0 
(assert true)
(define-const var2806 (Array Int Int) (resizeBuffer/-837211114 var3429 var3371)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] resizeBuffer(int)>($i2) 
(define-const var3163 Int (termLength/-1716209920 var3429)) ; Statement: $i3 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(assert true)
;(assert (getChars/1306883398 var2217 0 var3475 var2806 var3163)) ; Statement: virtualinvoke r0.<java.lang.String: void getChars(int,int,char[],int)>(0, i0, $r2, $i3) 

(declare-const var2217!1 String)
(declare-const var92 Int)
(declare-const var3475!1 Int)
(declare-const var2806!1 (Array Int Int))
(declare-const var3163!1 Int)
(define-const var1718 Int (termLength/-1716209920 var3429)) ; Statement: $i4 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(define-const var1910 Int (+ var1718 var3475!1)) ; Statement: $i5 = $i4 + i0 
(declare-const var3429!1 var2619)
(assert (not (= var3429!1 null-var2619)))
(assert (= (termLength/-1716209920 var3429!1) var1910)) ; Statement: r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> = $i5 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), termLength/-1716209920=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl], int), resizeBuffer/-837211114=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, int], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void)}
; {var2619=org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, var3429=r1, var2217=r0, var2336=null_type, var3475=i0, var3373=$i1, var3371=$i2, var2806=$r2, var3163=$i3, var92=0, var1718=$i4, var1910=$i5}
; {org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl=var2619, r1=var3429, r0=var2217, null_type=var2336, i0=var3475, $i1=var3373, $i2=var3371, $r2=var2806, $i3=var3163, 0=var92, $i4=var1718, $i5=var1910}
;seq <java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;	r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	$i2 = $i1 + i0;	$r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] resizeBuffer(int)>($i2);	$i3 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	virtualinvoke r0.<java.lang.String: void getChars(int,int,char[],int)>(0, i0, $r2, $i3);	$i4 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	$i5 = $i4 + i0;	r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> = $i5;	return r1
;block_num 2