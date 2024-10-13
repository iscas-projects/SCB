(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3417 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun scale/1287024874 (var3417) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2521-init () var2521)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2521 String) void)
(declare-const null-var3417 var3417)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3251 var3417) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3251 null-var3417)))
(declare-const var2627 (Array Int Int)) ; Statement: r1 := @parameter0: char[] 
(assert (not (= var2627 null-__Array__Int__Int__)))
(declare-const var1289 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1289 null-Int)))
(declare-const var3693 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3693 null-Int)))
(define-const var3558 Int (- var3693 var1289)) ; Statement: i50 = i1 - i0 
(define-const var2974 Int (scale/1287024874 var3251)) ; Statement: $s2 = r0.<com.alibaba.fastjson2.JSONReader: short scale> 
(define-const var1891 Int (cast-from-Int-to-Int var2974)) ; Statement: $i77 = (int) $s2 
 ; Statement: if $i77 <= 0 goto (branch) 
(assert (<= var1891 0)) ; Cond: $i77 <= 0 
 ; Statement: if i50 <= 38 goto i51 = i50 % 9 
(assert (not (<= var3558 38))) ; Negate: Cond: i50 <= 38  
(define-const var2033 var2521 var2521-init) ; Statement: $r12 = new com.alibaba.fastjson2.JSONException 
(define-const var591 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var591)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var591!1 String)
(assert (= var591!1 ""))
(assert true)
(define-const var3756 String (append/672562846 var591!1 "number too large : ")) ; Statement: $r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("number too large : ") 
(declare-const var591!2 String)
(assert (= var591!2 (str.++ var591!1 "number too large : ")))
(define-const var991 String String-init) ; Statement: $r11 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var991 var2627 var1289 var3558)) ; Statement: specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i50) 

(declare-const var991!1 String)
(declare-const var2627!1 (Array Int Int))
(declare-const var1289!1 Int)
(declare-const var3558!1 Int)
(assert true)
(define-const var2896 String (append/672562846 var3756 var991!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3756!1 String)
(assert (= var3756!1 (str.++ var3756 var991!1)))
(assert true)
(define-const var2398 String (toString/-2075883882 var2896)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2033 var2398)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2033!1 var2521)
(declare-const var2398!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {scale/1287024874=([com.alibaba.fastjson2.JSONReader], short), cast-from-Int-to-Int=([short], int), var2521-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-253222812=([java.lang.String, char[], int, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3417=com.alibaba.fastjson2.JSONReader, var3251=r0, var2627=r1, var1289=i0, var3693=i1, var3558=i50, var2974=$s2, var1891=$i77, var2521=com.alibaba.fastjson2.JSONException, var2033=$r12, var591=$r10, var3756=$r7, var991=$r11, var2896=$r8, var2398=$r9}
; {com.alibaba.fastjson2.JSONReader=var3417, r0=var3251, r1=var2627, i0=var1289, i1=var3693, i50=var3558, $s2=var2974, $i77=var1891, com.alibaba.fastjson2.JSONException=var2521, $r12=var2033, $r10=var591, $r7=var3756, $r11=var991, $r8=var2896, $r9=var2398}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[],int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: void <init>(char[],int,int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r1 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	i50 = i1 - i0;	$s2 = r0.<com.alibaba.fastjson2.JSONReader: short scale>;	$i77 = (int) $s2;	if $i77 <= 0 goto (branch);	if i50 <= 38 goto i51 = i50 % 9;	$r12 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("number too large : ");	$r11 = new java.lang.String;	specialinvoke $r11.<java.lang.String: void <init>(char[],int,int)>(r1, i0, i50);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r12
;block_num 3