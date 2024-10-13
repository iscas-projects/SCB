(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var98 0)
(declare-sort var1706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun pos/-853829893 (var98) Int)
(declare-fun size/-853829893 (var98) Int)
(declare-fun var1706_min/-1112089438 (Int Int) Int)
(declare-fun s/-853829893 (var98) String)
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-const null-var98 var98)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1480 var98) ; Statement: r0 := @this: org.apache.lucene.analysis.ReusableStringReader 
(assert (not (= var1480 null-var98)))
(declare-const var616 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var616 null-__Array__Int__Int__)))
(declare-const var2207 Int) ; Statement: i6 := @parameter1: int 
(assert (not (= var2207 null-Int)))
(declare-const var522 Int) ; Statement: i11 := @parameter2: int 
(assert (not (= var522 null-Int)))
(define-const var2966 Int (pos/-853829893 var1480)) ; Statement: $i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var2668 Int (size/-853829893 var1480)) ; Statement: $i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size> 
 ; Statement: if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null 
(assert (not (>= var2966 var2668))) ; Negate: Cond: $i1 >= $i0  
(define-const var974 Int (size/-853829893 var1480)) ; Statement: $i3 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size> 
(define-const var2838 Int (pos/-853829893 var1480)) ; Statement: $i2 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var1415 Int (- var974 var2838)) ; Statement: $i4 = $i3 - $i2 
(define-const var1908 Int (var1706_min/-1112089438 var522 var1415)) ; Statement: i12 = staticinvoke <java.lang.Math: int min(int,int)>(i11, $i4) 
(define-const var3369 String (s/-853829893 var1480)) ; Statement: $r2 = r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> 
(define-const var3953 Int (pos/-853829893 var1480)) ; Statement: $i8 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var527 Int (pos/-853829893 var1480)) ; Statement: $i5 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var482 Int (+ var527 var1908)) ; Statement: $i7 = $i5 + i12 
(assert true)
;(assert (getChars/1306883398 var3369 var3953 var482 var616 var2207)) ; Statement: virtualinvoke $r2.<java.lang.String: void getChars(int,int,char[],int)>($i8, $i7, r1, i6) 

(declare-const var3369!1 String)
(declare-const var3953!1 Int)
(declare-const var482!1 Int)
(declare-const var616!1 (Array Int Int))
(declare-const var2207!1 Int)
(define-const var516 Int (pos/-853829893 var1480)) ; Statement: $i9 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> 
(define-const var3308 Int (+ var516 var1908)) ; Statement: $i10 = $i9 + i12 
(declare-const var1480!1 var98)
(assert (not (= var1480!1 null-var98)))
(assert (= (pos/-853829893 var1480!1) var3308)) ; Statement: r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> = $i10 
 ; Statement: return i12 
(check-sat)
(get-model)
(get-unsat-core)
; {pos/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), size/-853829893=([org.apache.lucene.analysis.ReusableStringReader], int), var1706_min/-1112089438=([int, int], int), s/-853829893=([org.apache.lucene.analysis.ReusableStringReader], java.lang.String), getChars/1306883398=([java.lang.String, int, int, char[], int], void)}
; {var98=org.apache.lucene.analysis.ReusableStringReader, var1480=r0, var616=r1, var2207=i6, var522=i11, var2966=$i1, var2668=$i0, var974=$i3, var2838=$i2, var1415=$i4, var1706=java.lang.Math, var1908=i12, var3369=$r2, var3953=$i8, var527=$i5, var482=$i7, var516=$i9, var3308=$i10}
; {org.apache.lucene.analysis.ReusableStringReader=var98, r0=var1480, r1=var616, i6=var2207, i11=var522, $i1=var2966, $i0=var2668, $i3=var974, $i2=var2838, $i4=var1415, java.lang.Math=var1706, i12=var1908, $r2=var3369, $i8=var3953, $i5=var527, $i7=var482, $i9=var516, $i10=var3308}
;seq <java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.ReusableStringReader;	r1 := @parameter0: char[];	i6 := @parameter1: int;	i11 := @parameter2: int;	$i1 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i0 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size>;	if $i1 >= $i0 goto r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s> = null;	$i3 = r0.<org.apache.lucene.analysis.ReusableStringReader: int size>;	$i2 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i4 = $i3 - $i2;	i12 = staticinvoke <java.lang.Math: int min(int,int)>(i11, $i4);	$r2 = r0.<org.apache.lucene.analysis.ReusableStringReader: java.lang.String s>;	$i8 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i5 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i7 = $i5 + i12;	virtualinvoke $r2.<java.lang.String: void getChars(int,int,char[],int)>($i8, $i7, r1, i6);	$i9 = r0.<org.apache.lucene.analysis.ReusableStringReader: int pos>;	$i10 = $i9 + i12;	r0.<org.apache.lucene.analysis.ReusableStringReader: int pos> = $i10;	return i12
;block_num 2