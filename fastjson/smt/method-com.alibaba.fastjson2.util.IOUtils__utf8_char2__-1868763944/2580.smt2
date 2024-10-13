(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var289 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var289-init () var289)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var289 String) void)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var664 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var664 null-__Array__Int__Int__)))
(declare-const var674 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var674 null-Int)))
(declare-const var3902 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3902 null-Int)))
(declare-const var3066 Int) ; Statement: c0 := @parameter3: char 
(assert (not (= var3066 null-Int)))
(declare-const var2144 (Array Int Int)) ; Statement: r1 := @parameter4: byte[] 
(assert (not (= var2144 null-__Array__Int__Int__)))
(declare-const var699 Int) ; Statement: i8 := @parameter5: int 
(assert (not (= var699 null-Int)))
(define-const var258 Int (cast-from-Int-to-Int var3066)) ; Statement: $i26 = (int) c0 
(define-const var241 Int (cast-from-Int-to-Int 56319)) ; Statement: $i28 = (int) 56319 
 ; Statement: if $i26 > $i28 goto $r8 = new com.alibaba.fastjson2.JSONException 
(assert (> var258 var241)) ; Cond: $i26 > $i28 
(define-const var1224 var289 var289-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var3898 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3898)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3898!1 String)
(assert (= var3898!1 ""))
(assert true)
(define-const var1917 String (append/672562846 var3898!1 "malformed input off : ")) ; Statement: $r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input off : ") 
(declare-const var3898!2 String)
(assert (= var3898!2 (str.++ var3898!1 "malformed input off : ")))
(assert true)
(define-const var2511 String (append/-1001720160 var1917 var674)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1917!1 String)
(assert (str.prefixof var1917 var1917!1))
(assert true)
(define-const var3863 String (toString/-2075883882 var2511)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1224 var3863)) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6) 

(declare-const var1224!1 var289)
(declare-const var3863!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var289-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var664=r0, var674=i1, var3902=i2, var3066=c0, var2144=r1, var699=i8, var258=$i26, var241=$i28, var289=com.alibaba.fastjson2.JSONException, var1224=$r8, var3898=$r7, var1917=$r4, var2511=$r5, var3863=$r6}
; {r0=var664, i1=var674, i2=var3902, c0=var3066, r1=var2144, i8=var699, $i26=var258, $i28=var241, com.alibaba.fastjson2.JSONException=var289, $r8=var1224, $r7=var3898, $r4=var1917, $r5=var2511, $r6=var3863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: char[];	i1 := @parameter1: int;	i2 := @parameter2: int;	c0 := @parameter3: char;	r1 := @parameter4: byte[];	i8 := @parameter5: int;	$i26 = (int) c0;	$i28 = (int) 56319;	if $i26 > $i28 goto $r8 = new com.alibaba.fastjson2.JSONException;	$r8 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("malformed input off : ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r6);	throw $r8
;block_num 2