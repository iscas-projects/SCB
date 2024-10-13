(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var431 0)
(declare-sort var3781 0)
(declare-sort var1970 0)
(declare-sort var3420 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validateIndex/-1908911276 (var431 Int) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun size/1389889126 (var431) Int)
(declare-fun ensureCapacity/784942214 (var431 Int) var431)
(declare-fun buffer/1389889126 (var431) (Array Int Int))
(declare-fun var1970_arraycopy/-325913181 (var3420 Int var3420 Int Int) void)
(declare-fun cast-from-__Array__Int__Int__-to-var3420 ((Array Int Int)) var3420)
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-const null-var431 var431)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2027 var431) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2027 null-var431)))
(declare-const var1473 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1473 null-Int)))
(declare-const var2019 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2019 null-String)))
(assert true)
;(assert (validateIndex/-1908911276 var2027 var1473)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: void validateIndex(int)>(i0) 

(declare-const var2027!1 var431)
(declare-const var1473!1 Int)
 ; Statement: if r4 != null goto (branch) 
(assert (not (= var2019 null-String))) ; Cond: r4 != null 
 ; Statement: if r4 == null goto return r0 
(assert (not (= var2019 null-String))) ; Negate: Cond: r4 == null  
(assert true)
(define-const var103 Int (length/-134980193 var2019)) ; Statement: i1 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if i1 <= 0 goto return r0 
(assert (not (<= var103 0))) ; Negate: Cond: i1 <= 0  
(define-const var269 Int (size/1389889126 var2027!1)) ; Statement: $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(define-const var2330 Int (+ var269 var103)) ; Statement: i3 = $i2 + i1 
(assert true)
;(assert (ensureCapacity/784942214 var2027!1 var2330)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder ensureCapacity(int)>(i3) 

(declare-const var2027!2 var431)
(declare-const var2330!1 Int)
(define-const var1828 (Array Int Int) (buffer/1389889126 var2027!2)) ; Statement: $r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var1478 (Array Int Int) (buffer/1389889126 var2027!2)) ; Statement: $r1 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(define-const var557 Int (+ var1473!1 var103)) ; Statement: $i6 = i0 + i1 
(define-const var2572 Int (size/1389889126 var2027!2)) ; Statement: $i4 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(define-const var1350 Int (- var2572 var1473!1)) ; Statement: $i5 = $i4 - i0 
;(assert (var1970_arraycopy/-325913181 (cast-from-__Array__Int__Int__-to-var3420 var1828) var1473!1 (cast-from-__Array__Int__Int__-to-var3420 var1478) var557 var1350)) ; Statement: staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r2, i0, $r1, $i6, $i5) 

(declare-const var1828!1 (Array Int Int))
(declare-const var1473!2 Int)
(declare-const var1478!1 (Array Int Int))
(declare-const var557!1 Int)
(declare-const var1350!1 Int)
(declare-const var2027!3 var431)
(assert (not (= var2027!3 null-var431)))
(assert (= (size/1389889126 var2027!3) var2330!1)) ; Statement: r0.<org.apache.commons.lang3.text.StrBuilder: int size> = i3 
(define-const var1946 (Array Int Int) (buffer/1389889126 var2027!3)) ; Statement: $r3 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(assert true)
;(assert (getChars/1306883398 var2019 0 var103 var1946 var1473!2)) ; Statement: virtualinvoke r4.<java.lang.String: void getChars(int,int,char[],int)>(0, i1, $r3, i0) 

(declare-const var2019!1 String)
(declare-const var3864 Int)
(declare-const var103!1 Int)
(declare-const var1946!1 (Array Int Int))
(declare-const var1473!3 Int)
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {validateIndex/-1908911276=([org.apache.commons.lang3.text.StrBuilder, int], void), length/-134980193=([java.lang.String], int), size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), ensureCapacity/784942214=([org.apache.commons.lang3.text.StrBuilder, int], org.apache.commons.lang3.text.StrBuilder), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), var1970_arraycopy/-325913181=([java.lang.Object, int, java.lang.Object, int, int], void), cast-from-__Array__Int__Int__-to-var3420=([char[]], java.lang.Object), getChars/1306883398=([java.lang.String, int, int, char[], int], void)}
; {var431=org.apache.commons.lang3.text.StrBuilder, var2027=r0, var1473=i0, var2019=r4, var3781=null_type, var103=i1, var269=$i2, var2330=i3, var1828=$r2, var1478=$r1, var557=$i6, var2572=$i4, var1350=$i5, var1970=java.lang.System, var3420=java.lang.Object, var1946=$r3, var3864=0}
; {org.apache.commons.lang3.text.StrBuilder=var431, r0=var2027, i0=var1473, r4=var2019, null_type=var3781, i1=var103, $i2=var269, i3=var2330, $r2=var1828, $r1=var1478, $i6=var557, $i4=var2572, $i5=var1350, java.lang.System=var1970, java.lang.Object=var3420, $r3=var1946, 0=var3864}
;seq <java.lang.String: int length()>;	<java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	r4 := @parameter1: java.lang.String;	virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: void validateIndex(int)>(i0);	if r4 != null goto (branch);	if r4 == null goto return r0;	i1 = virtualinvoke r4.<java.lang.String: int length()>();	if i1 <= 0 goto return r0;	$i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	i3 = $i2 + i1;	virtualinvoke r0.<org.apache.commons.lang3.text.StrBuilder: org.apache.commons.lang3.text.StrBuilder ensureCapacity(int)>(i3);	$r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$r1 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	$i6 = i0 + i1;	$i4 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i5 = $i4 - i0;	staticinvoke <java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>($r2, i0, $r1, $i6, $i5);	r0.<org.apache.commons.lang3.text.StrBuilder: int size> = i3;	$r3 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	virtualinvoke r4.<java.lang.String: void getChars(int,int,char[],int)>(0, i1, $r3, i0);	return r0
;block_num 5