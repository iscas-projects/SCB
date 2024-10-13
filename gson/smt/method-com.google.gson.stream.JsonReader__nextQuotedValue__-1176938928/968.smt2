(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun buffer/1477480286 (var442) (Array Int Int))
(declare-fun pos/1477480286 (var442) Int)
(declare-fun limit/1477480286 (var442) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var442 var442)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var2757 var442) ; Statement: r0 := @this: com.google.gson.stream.JsonReader 
(assert (not (= var2757 null-var442)))
(declare-const var3312 Int) ; Statement: c5 := @parameter0: char 
(assert (not (= var3312 null-Int)))
(define-const var2651 (Array Int Int) (buffer/1477480286 var2757)) ; Statement: r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer> 
(define-const var1994 String null-String) ; Statement: r7 = null 
(assert true) ; Non Conditional
(define-const var1355 Int (pos/1477480286 var2757)) ; Statement: $i1 = r0.<com.google.gson.stream.JsonReader: int pos> 
(define-const var1992 Int var1355) ; Statement: i15 = $i1 
(define-const var1997 Int (limit/1477480286 var2757)) ; Statement: i16 = r0.<com.google.gson.stream.JsonReader: int limit> 
(define-const var3583 Int var1355) ; Statement: i17 = $i1 
(assert true) ; Non Conditional
 ; Statement: if i15 >= i16 goto (branch) 
(assert (not (>= var1992 var1997))) ; Negate: Cond: i15 >= i16  
(define-const var2676 Int var1992) ; Statement: $i4 = i15 
(define-const var1992!1 Int (+ var1992 1)) ; Statement: i15 = i15 + 1 
(define-const var1017 Int (select var2651 var2676)) ; Statement: c18 = r1[$i4] 
(define-const var482 Int (cast-from-Int-to-Int var1017)) ; Statement: $i22 = (int) c18 
(define-const var2797 Int (cast-from-Int-to-Int var3312)) ; Statement: $i23 = (int) c5 
 ; Statement: if $i22 != $i23 goto $i24 = (int) c18 
(assert (not (not (= var482 var2797)))) ; Negate: Cond: $i22 != $i23  
(declare-const var2757!1 var442)
(assert (not (= var2757!1 null-var442)))
(assert (= (pos/1477480286 var2757!1) var1992!1)) ; Statement: r0.<com.google.gson.stream.JsonReader: int pos> = i15 
(define-const var1427 Int (- var1992!1 var3583)) ; Statement: $i14 = i15 - i17 
(define-const var3461 Int (- var1427 1)) ; Statement: i19 = $i14 - 1 
 ; Statement: if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19) 
(assert (not (not (= var1994 null-String)))) ; Negate: Cond: r7 != null  
(define-const var2356 String String-init) ; Statement: $r8 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2356 var2651 var3583 var3461)) ; Statement: specialinvoke $r8.<java.lang.String: void <init>(char[],int,int)>(r1, i17, i19) 

(declare-const var2356!1 String)
(declare-const var2651!1 (Array Int Int))
(declare-const var3583!1 Int)
(declare-const var3461!1 Int)
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {buffer/1477480286=([com.google.gson.stream.JsonReader], char[]), pos/1477480286=([com.google.gson.stream.JsonReader], int), limit/1477480286=([com.google.gson.stream.JsonReader], int), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var442=com.google.gson.stream.JsonReader, var2757=r0, var3312=c5, var2651=r1, var1994=r7, var1355=$i1, var1992=i15, var1997=i16, var3583=i17, var2676=$i4, var1017=c18, var482=$i22, var2797=$i23, var1427=$i14, var3461=i19, var2356=$r8}
; {com.google.gson.stream.JsonReader=var442, r0=var2757, c5=var3312, r1=var2651, r7=var1994, $i1=var1355, i15=var1992, i16=var1997, i17=var3583, $i4=var2676, c18=var1017, $i22=var482, $i23=var2797, $i14=var1427, i19=var3461, $r8=var2356}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.google.gson.stream.JsonReader;	c5 := @parameter0: char;	r1 = r0.<com.google.gson.stream.JsonReader: char[] buffer>;	r7 = null;	$i1 = r0.<com.google.gson.stream.JsonReader: int pos>;	i15 = $i1;	i16 = r0.<com.google.gson.stream.JsonReader: int limit>;	i17 = $i1;	if i15 >= i16 goto (branch);	$i4 = i15;	i15 = i15 + 1;	c18 = r1[$i4];	$i22 = (int) c18;	$i23 = (int) c5;	if $i22 != $i23 goto $i24 = (int) c18;	r0.<com.google.gson.stream.JsonReader: int pos> = i15;	$i14 = i15 - i17;	i19 = $i14 - 1;	if r7 != null goto virtualinvoke r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>(r1, i17, i19);	$r8 = new java.lang.String;	specialinvoke $r8.<java.lang.String: void <init>(char[],int,int)>(r1, i17, i19);	return $r8
;block_num 6