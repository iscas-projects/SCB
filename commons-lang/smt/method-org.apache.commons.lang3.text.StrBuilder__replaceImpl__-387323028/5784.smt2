(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var174 0)
(declare-sort var321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var174) Int)
(declare-fun buffer/1389889126 (var174) (Array Int Int))
(declare-fun getChars/1306883398 (String Int Int (Array Int Int) Int) void)
(declare-const null-var174 var174)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var922 var174) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var922 null-var174)))
(declare-const var2484 Int) ; Statement: i5 := @parameter0: int 
(assert (not (= var2484 null-Int)))
(declare-const var2270 Int) ; Statement: i6 := @parameter1: int 
(assert (not (= var2270 null-Int)))
(declare-const var3015 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3015 null-Int)))
(declare-const var3166 String) ; Statement: r1 := @parameter3: java.lang.String 
(assert (not (= var3166 null-String)))
(declare-const var1669 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var1669 null-Int)))
(define-const var2859 Int (size/1389889126 var922)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(define-const var100 Int (- var2859 var3015)) ; Statement: $i3 = $i1 - i0 
(define-const var2992 Int (+ var100 var1669)) ; Statement: i4 = $i3 + i2 
 ; Statement: if i2 == i0 goto (branch) 
(assert (= var1669 var3015)) ; Cond: i2 == i0 
 ; Statement: if i2 <= 0 goto return 
(assert (not (<= var1669 0))) ; Negate: Cond: i2 <= 0  
(define-const var1272 (Array Int Int) (buffer/1389889126 var922)) ; Statement: $r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer> 
(assert true)
;(assert (getChars/1306883398 var3166 0 var1669 var1272 var2484)) ; Statement: virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(0, i2, $r2, i5) 

(declare-const var3166!1 String)
(declare-const var1684 Int)
(declare-const var1669!1 Int)
(declare-const var1272!1 (Array Int Int))
(declare-const var2484!1 Int)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int), buffer/1389889126=([org.apache.commons.lang3.text.StrBuilder], char[]), getChars/1306883398=([java.lang.String, int, int, char[], int], void)}
; {var174=org.apache.commons.lang3.text.StrBuilder, var922=r0, var2484=i5, var2270=i6, var3015=i0, var3166=r1, var321=null_type, var1669=i2, var2859=$i1, var100=$i3, var2992=i4, var1272=$r2, var1684=0}
; {org.apache.commons.lang3.text.StrBuilder=var174, r0=var922, i5=var2484, i6=var2270, i0=var3015, r1=var3166, null_type=var321, i2=var1669, $i1=var2859, $i3=var100, i4=var2992, $r2=var1272, 0=var1684}
;seq <java.lang.String: void getChars(int,int,char[],int)>
;cnt {"<java.lang.String: void getChars(int,int,char[],int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i5 := @parameter0: int;	i6 := @parameter1: int;	i0 := @parameter2: int;	r1 := @parameter3: java.lang.String;	i2 := @parameter4: int;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i3 = $i1 - i0;	i4 = $i3 + i2;	if i2 == i0 goto (branch);	if i2 <= 0 goto return;	$r2 = r0.<org.apache.commons.lang3.text.StrBuilder: char[] buffer>;	virtualinvoke r1.<java.lang.String: void getChars(int,int,char[],int)>(0, i2, $r2, i5);	return
;block_num 4