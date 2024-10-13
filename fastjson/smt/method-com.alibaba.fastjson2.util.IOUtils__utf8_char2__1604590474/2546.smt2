(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2979-init () var2979)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2979 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3373 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var3373 null-__Array__Int__Int__)))
(declare-const var665 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var665 null-Int)))
(declare-const var396 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var396 null-Int)))
(declare-const var1244 Int) ; Statement: c0 := @parameter3: char 
(assert (not (= var1244 null-Int)))
(declare-const var3762 (Array Int Int)) ; Statement: r2 := @parameter4: byte[] 
(assert (not (= var3762 null-__Array__Int__Int__)))
(declare-const var2618 Int) ; Statement: i11 := @parameter5: int 
(assert (not (= var2618 null-Int)))
(define-const var60 Int (cast-from-Int-to-Int var1244)) ; Statement: $i29 = (int) c0 
(define-const var36 Int (cast-from-Int-to-Int 56319)) ; Statement: $i31 = (int) 56319 
 ; Statement: if $i29 > $i31 goto $r9 = new com.alibaba.fastjson2.JSONException 
(assert (> var60 var36)) ; Cond: $i29 > $i31 
(define-const var1215 var2979 var2979-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3375 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3375)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3375!1 String)
(assert (= var3375!1 ""))
(assert true)
(define-const var2932 String (append/672562846 var3375!1 "malformed input off : ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input off : ") 
(declare-const var3375!2 String)
(assert (= var3375!2 (str.++ var3375!1 "malformed input off : ")))
(assert true)
(define-const var361 String (append/-1001720160 var2932 var665)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var2932!1 String)
(assert (str.prefixof var2932 var2932!1))
(assert true)
(define-const var3831 String (toString/-2075883882 var361)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1215 var3831)) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7) 

(declare-const var1215!1 var2979)
(declare-const var3831!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var2979-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3373=r0, var665=i1, var396=i2, var1244=c0, var3762=r2, var2618=i11, var60=$i29, var36=$i31, var2979=com.alibaba.fastjson2.JSONException, var1215=$r9, var3375=$r8, var2932=$r5, var361=$r6, var3831=$r7}
; {r0=var3373, i1=var665, i2=var396, c0=var1244, r2=var3762, i11=var2618, $i29=var60, $i31=var36, com.alibaba.fastjson2.JSONException=var2979, $r9=var1215, $r8=var3375, $r5=var2932, $r6=var361, $r7=var3831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: byte[];	i1 := @parameter1: int;	i2 := @parameter2: int;	c0 := @parameter3: char;	r2 := @parameter4: byte[];	i11 := @parameter5: int;	$i29 = (int) c0;	$i31 = (int) 56319;	if $i29 > $i31 goto $r9 = new com.alibaba.fastjson2.JSONException;	$r9 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input off : ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r7);	throw $r9
;block_num 2