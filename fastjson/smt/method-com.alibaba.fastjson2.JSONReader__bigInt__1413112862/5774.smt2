(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2678 0)
(declare-sort var146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun scale/1287024874 (var2678) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var146-init () var146)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-1380519146 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var146 String) void)
(declare-const null-var2678 var2678)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1143 var2678) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1143 null-var2678)))
(declare-const var3564 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3564 null-__Array__Int__Int__)))
(declare-const var61 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var61 null-Int)))
(declare-const var2841 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2841 null-Int)))
(define-const var1958 Int (- var2841 var61)) ; Statement: i58 = i1 - i0 
(define-const var1614 Int (scale/1287024874 var1143)) ; Statement: $s2 = r0.<com.alibaba.fastjson2.JSONReader: short scale> 
(define-const var3681 Int (cast-from-Int-to-Int var1614)) ; Statement: $i84 = (int) $s2 
 ; Statement: if $i84 <= 0 goto (branch) 
(assert (<= var3681 0)) ; Cond: $i84 <= 0 
 ; Statement: if i58 <= 38 goto i59 = i58 % 9 
(assert (not (<= var1958 38))) ; Negate: Cond: i58 <= 38  
(define-const var2111 var146 var146-init) ; Statement: $r12 = new com.alibaba.fastjson2.JSONException 
(define-const var3903 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3903)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3903!1 String)
(assert (= var3903!1 ""))
(assert true)
(define-const var2125 String (append/672562846 var3903!1 "number too large : ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("number too large : ") 
(declare-const var3903!2 String)
(assert (= var3903!2 (str.++ var3903!1 "number too large : ")))
(define-const var3813 String String-init) ; Statement: $r11 = new java.lang.String 
(assert true)
;(assert (<init>/-1380519146 var3813 var3564 var61 var1958)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(byte[],int,int)>(r1, i0, i58) 

(declare-const var3813!1 String)
(declare-const var3564!1 (Array Int Int))
(declare-const var61!1 Int)
(declare-const var1958!1 Int)
(assert true)
(define-const var967 String (append/672562846 var2125 var3813!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2125!1 String)
(assert (= var2125!1 (str.++ var2125 var3813!1)))
(assert true)
(define-const var3013 String (toString/-2075883882 var967)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2111 var3013)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2111!1 var146)
(declare-const var3013!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {scale/1287024874=([com.alibaba.fastjson2.JSONReader], short), cast-from-Int-to-Int=([short], int), var146-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-1380519146=([java.lang.String, byte[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2678=com.alibaba.fastjson2.JSONReader, var1143=r0, var3564=r1, var61=i0, var2841=i1, var1958=i58, var1614=$s2, var3681=$i84, var146=com.alibaba.fastjson2.JSONException, var2111=$r12, var3903=$r10, var2125=$r7, var3813=$r11, var967=$r8, var3013=$r9}
; {com.alibaba.fastjson2.JSONReader=var2678, r0=var1143, r1=var3564, i0=var61, i1=var2841, i58=var1958, $s2=var1614, $i84=var3681, com.alibaba.fastjson2.JSONException=var146, $r12=var2111, $r10=var3903, $r7=var2125, $r11=var3813, $r8=var967, $r9=var3013}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(byte[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(byte[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r1 := @parameter0: byte[];	i0 := @parameter1: int;	i1 := @parameter2: int;	i58 = i1 - i0;	$s2 = r0.<com.alibaba.fastjson2.JSONReader: short scale>;	$i84 = (int) $s2;	if $i84 <= 0 goto (branch);	if i58 <= 38 goto i59 = i58 % 9;	$r12 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("number too large : ");	$r11 = new java.lang.String;	specialinvoke $r11.<java.lang.String: void <init>(byte[],int,int)>(r1, i0, i58);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r12
;block_num 3