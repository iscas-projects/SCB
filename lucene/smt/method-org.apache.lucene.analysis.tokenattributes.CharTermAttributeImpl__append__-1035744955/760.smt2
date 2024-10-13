(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3990 0)
(declare-sort var3883 0)
(declare-sort var3566 0)
(declare-sort var3838 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun cast-from-var3883-to-String (var3883) String)
(declare-fun var3883_buffer/-1657253545 (var3883) (Array Int Int))
(declare-fun termLength/-1716209920 (var3990) Int)
(declare-fun resizeBuffer/-837211114 (var3990 Int) (Array Int Int))
(declare-fun var3566_arraycopy/-325913181 (var3838 Int var3838 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var3838 ((Array Int Int)) var3838)
(declare-const null-var3990 var3990)
(declare-const null-var3883 var3883)
(declare-const var3932 var3990) ; Statement: r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl 
(assert (not (= var3932 null-var3990)))
(declare-const var2827 var3883) ; Statement: r0 := @parameter0: org.apache.lucene.analysis.tokenattributes.CharTermAttribute 
(assert (not (= var2827 null-var3883)))
 ; Statement: if r0 != null goto i0 = interfaceinvoke r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>() 
(assert (not (= var2827 null-var3883))) ; Cond: r0 != null 
(define-const var3839 Int (String_length/-667254855 (cast-from-var3883-to-String var2827))) ; Statement: i0 = interfaceinvoke r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>() 
(define-const var1977 (Array Int Int) (var3883_buffer/-1657253545 var2827)) ; Statement: $r3 = interfaceinvoke r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>() 
(define-const var1956 Int (termLength/-1716209920 var3932)) ; Statement: $i1 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(define-const var1349 Int (+ var1956 var3839)) ; Statement: $i2 = $i1 + i0 
(assert true)
(define-const var2784 (Array Int Int) (resizeBuffer/-837211114 var3932 var1349)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] resizeBuffer(int)>($i2) 
(define-const var280 Int (termLength/-1716209920 var3932)) ; Statement: $i3 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
;(assert (var3566_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var3838 var1977) 0 (cast-from-__Array__Int__Int__-to-var3838 var2784) var280 var3839)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r3, 0, $r2, $i3, i0) 

(declare-const var1977!1 (Array Int Int))
(declare-const var1143 Int)
(declare-const var2784!1 (Array Int Int))
(declare-const var280!1 Int)
(declare-const var3839!1 Int)
(define-const var954 Int (termLength/-1716209920 var3932)) ; Statement: $i4 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> 
(define-const var1344 Int (+ var954 var3839!1)) ; Statement: $i5 = $i4 + i0 
(declare-const var3932!1 var3990)
(assert (not (= var3932!1 null-var3990)))
(assert (= (termLength/-1716209920 var3932!1) var1344)) ; Statement: r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> = $i5 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), cast-from-var3883-to-String=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], java.lang.CharSequence), var3883_buffer/-1657253545=([org.apache.lucene.analysis.tokenattributes.CharTermAttribute], char[]), termLength/-1716209920=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl], int), resizeBuffer/-837211114=([org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, int], char[]), var3566_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var3838=([char[]], java.lang.Object)}
; {var3990=org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl, var3932=r1, var3883=org.apache.lucene.analysis.tokenattributes.CharTermAttribute, var2827=r0, var3839=i0, var1977=$r3, var1956=$i1, var1349=$i2, var2784=$r2, var280=$i3, var3566=java.lang.System, var3838=java.lang.Object, var1143=0, var954=$i4, var1344=$i5}
; {org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl=var3990, r1=var3932, org.apache.lucene.analysis.tokenattributes.CharTermAttribute=var3883, r0=var2827, i0=var3839, $r3=var1977, $i1=var1956, $i2=var1349, $r2=var2784, $i3=var280, java.lang.System=var3566, java.lang.Object=var3838, 0=var1143, $i4=var954, $i5=var1344}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl;	r0 := @parameter0: org.apache.lucene.analysis.tokenattributes.CharTermAttribute;	if r0 != null goto i0 = interfaceinvoke r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>();	i0 = interfaceinvoke r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: int length()>();	$r3 = interfaceinvoke r0.<org.apache.lucene.analysis.tokenattributes.CharTermAttribute: char[] buffer()>();	$i1 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	$i2 = $i1 + i0;	$r2 = virtualinvoke r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: char[] resizeBuffer(int)>($i2);	$i3 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r3, 0, $r2, $i3, i0);	$i4 = r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength>;	$i5 = $i4 + i0;	r1.<org.apache.lucene.analysis.tokenattributes.CharTermAttributeImpl: int termLength> = $i5;	return r1
;block_num 2