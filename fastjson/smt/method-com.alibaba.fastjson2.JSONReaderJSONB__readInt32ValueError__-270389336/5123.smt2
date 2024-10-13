(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var888 0)
(declare-sort var3319 0)
(declare-sort var1724 0)
(declare-sort var714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3319-init () var3319)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1724_typeName/1994747818 (Int) String)
(declare-fun offset/1287024874 (var714) Int)
(declare-fun cast-from-var888-to-var714 (var888) var714)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun bytes/-413709904 (var888) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3319 String) void)
(declare-const null-var888 var888)
(declare-const null-Int Int)
(declare-const var2855 var888) ; Statement: r5 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var2855 null-var888)))
(declare-const var1383 Int) ; Statement: b0 := @parameter0: byte 
(assert (not (= var1383 null-Int)))
(define-const var3914 var3319 var3319-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var3446 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3446)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3446!1 String)
(assert (= var3446!1 ""))
(assert true)
(define-const var1132 String (append/672562846 var3446!1 "readInt32Value not support ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readInt32Value not support ") 
(declare-const var3446!2 String)
(assert (= var3446!2 (str.++ var3446!1 "readInt32Value not support ")))
(define-const var2710 String (var1724_typeName/1994747818 var1383)) ; Statement: $r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0) 
(assert true)
(define-const var3713 String (append/672562846 var1132 var2710)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1132!1 String)
(assert (= var1132!1 (str.++ var1132 var2710)))
(assert true)
(define-const var3287 String (append/672562846 var3713 ", offset ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ") 
(declare-const var3713!1 String)
(assert (= var3713!1 (str.++ var3713 ", offset ")))
(define-const var1744 Int (offset/1287024874 (cast-from-var888-to-var714 var2855))) ; Statement: $i1 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert true)
(define-const var3634 String (append/-1001720160 var3287 var1744)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3287!1 String)
(assert (str.prefixof var3287 var3287!1))
(assert true)
(define-const var699 String (append/672562846 var3634 "/")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3634!1 String)
(assert (= var3634!1 (str.++ var3634 "/")))
(define-const var409 (Array Int Int) (bytes/-413709904 var2855)) ; Statement: $r8 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var2906 Int (getLength-Arr-Int-1 var409)) ; Statement: $i2 = lengthof $r8 
(assert true)
(define-const var3554 String (append/-1001720160 var699 var2906)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var699!1 String)
(assert (str.prefixof var699 var699!1))
(assert true)
(define-const var3007 String (toString/-2075883882 var3554)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3914 var3007)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var3914!1 var3319)
(declare-const var3007!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3319-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1724_typeName/1994747818=([byte], java.lang.String), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var888-to-var714=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var888=com.alibaba.fastjson2.JSONReaderJSONB, var2855=r5, var1383=b0, var3319=com.alibaba.fastjson2.JSONException, var3914=$r0, var3446=$r1, var1132=$r3, var1724=com.alibaba.fastjson2.JSONB, var2710=$r2, var3713=$r4, var3287=$r6, var714=com.alibaba.fastjson2.JSONReader, var1744=$i1, var3634=$r7, var699=$r9, var409=$r8, var2906=$i2, var3554=$r10, var3007=$r11}
; {com.alibaba.fastjson2.JSONReaderJSONB=var888, r5=var2855, b0=var1383, com.alibaba.fastjson2.JSONException=var3319, $r0=var3914, $r1=var3446, $r3=var1132, com.alibaba.fastjson2.JSONB=var1724, $r2=var2710, $r4=var3713, $r6=var3287, com.alibaba.fastjson2.JSONReader=var714, $i1=var1744, $r7=var3634, $r9=var699, $r8=var409, $i2=var2906, $r10=var3554, $r11=var3007}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	b0 := @parameter0: byte;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readInt32Value not support ");	$r2 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>(b0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ");	$i1 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r8 = r5.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i2 = lengthof $r8;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r0
;block_num 1