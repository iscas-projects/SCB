(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var1877 0)
(declare-sort var1986 0)
(declare-sort var1090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfObjectStart/-245382802 (var1877) Bool)
(declare-fun nextIfNullOrEmptyString/-1812407907 (var1877) Bool)
(declare-fun var1090-init () var1090)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun current/1026386434 (var1877) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1877 String) String)
(declare-fun <init>/-2099196170 (var1090 String) void)
(declare-const null-var426 var426)
(declare-const null-var1877 var1877)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1986 var1986)
(declare-const null-Int Int)
(declare-const var577 var426) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMapMultiValueType 
(assert (not (= var577 null-var426)))
(declare-const var3961 var1877) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3961 null-var1877)))
(declare-const var488 ClassObject) ; Statement: r28 := @parameter1: java.lang.reflect.Type 
(assert (not (= var488 null-ClassObject)))
(declare-const var818 var1986) ; Statement: r10 := @parameter2: java.lang.Object 
(assert (not (= var818 null-var1986)))
(declare-const var1069 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var1069 null-Int)))
(assert true)
(define-const var406 Bool (nextIfObjectStart/-245382802 var3961)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>() 
 ; Statement: if $z0 != 0 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>() 
(assert (not (not (= (ite var406 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var252 Bool (nextIfNullOrEmptyString/-1812407907 var3961)) ; Statement: $z5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>() 
 ; Statement: if $z5 == 0 goto $r21 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var252 1 0) 0)) ; Cond: $z5 == 0 
(define-const var915 var1090 var1090-init) ; Statement: $r21 = new com.alibaba.fastjson2.JSONException 
(define-const var1453 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1453)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1453!1 String)
(assert (= var1453!1 ""))
(assert true)
(define-const var3347 String (append/672562846 var1453!1 "expect \u0027{\u0027, but \u0027")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect \'{\', but \'") 
(declare-const var1453!2 String)
(assert (= var1453!2 (str.++ var1453!1 "expect \u0027{\u0027, but \u0027")))
(assert true)
(define-const var3752 Int (current/1026386434 var3961)) ; Statement: $c9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: char current()>() 
(assert true)
(define-const var3700 String (append/-1166366385 var3347 var3752)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9) 
(declare-const var3347!1 String)
(assert (str.prefixof var3347 var3347!1))
(assert true)
(define-const var1418 String (append/672562846 var3700 "\u0027")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3700!1 String)
(assert (= var3700!1 (str.++ var3700 "\u0027")))
(assert true)
(define-const var135 String (toString/-2075883882 var1418)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var615 String (info/-1659839707 var3961 var135)) ; Statement: $r27 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r26) 
(assert true)
;(assert (<init>/-2099196170 var915 var615)) ; Statement: specialinvoke $r21.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r27) 

(declare-const var915!1 var1090)
(declare-const var615!1 String)
 ; Statement: throw $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfObjectStart/-245382802=([com.alibaba.fastjson2.JSONReader], boolean), nextIfNullOrEmptyString/-1812407907=([com.alibaba.fastjson2.JSONReader], boolean), var1090-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), current/1026386434=([com.alibaba.fastjson2.JSONReader], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var426=com.alibaba.fastjson2.reader.ObjectReaderImplMapMultiValueType, var577=r2, var1877=com.alibaba.fastjson2.JSONReader, var3961=r0, var488=r28, var1986=java.lang.Object, var818=r10, var1069=l0, var406=$z0, var252=$z5, var1090=com.alibaba.fastjson2.JSONException, var915=$r21, var1453=$r22, var3347=$r23, var3752=$c9, var3700=$r24, var1418=$r25, var135=$r26, var615=$r27}
; {com.alibaba.fastjson2.reader.ObjectReaderImplMapMultiValueType=var426, r2=var577, com.alibaba.fastjson2.JSONReader=var1877, r0=var3961, r28=var488, java.lang.Object=var1986, r10=var818, l0=var1069, $z0=var406, $z5=var252, com.alibaba.fastjson2.JSONException=var1090, $r21=var915, $r22=var1453, $r23=var3347, $c9=var3752, $r24=var3700, $r25=var1418, $r26=var135, $r27=var615}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplMapMultiValueType;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r28 := @parameter1: java.lang.reflect.Type;	r10 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfObjectStart()>();	if $z0 != 0 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context getContext()>();	$z5 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>();	if $z5 == 0 goto $r21 = new com.alibaba.fastjson2.JSONException;	$r21 = new com.alibaba.fastjson2.JSONException;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expect \'{\', but \'");	$c9 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: char current()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c9);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r26);	specialinvoke $r21.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r27);	throw $r21
;block_num 3