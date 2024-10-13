(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2698 0)
(declare-sort var3145 0)
(declare-sort var3807 0)
(declare-sort var584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3145-init () var3145)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun type/-413709904 (var2698) Int)
(declare-fun var3807_typeName/1994747818 (Int) String)
(declare-fun offset/1287024874 (var584) Int)
(declare-fun cast-from-var2698-to-var584 (var2698) var584)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun bytes/-413709904 (var2698) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3145 String) void)
(declare-const null-var2698 var2698)
(declare-const var1701 var2698) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var1701 null-var2698)))
(define-const var3089 var3145 var3145-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var2660 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2660)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2660!1 String)
(assert (= var2660!1 ""))
(assert true)
(define-const var1026 String (append/672562846 var2660!1 "string value not support input ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("string value not support input ") 
(declare-const var2660!2 String)
(assert (= var2660!2 (str.++ var2660!1 "string value not support input ")))
(define-const var705 Int (type/-413709904 var1701)) ; Statement: $b0 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte type> 
(define-const var1811 String (var3807_typeName/1994747818 var705)) ; Statement: $r3 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b0) 
(assert true)
(define-const var2733 String (append/672562846 var1026 var1811)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1026!1 String)
(assert (= var1026!1 (str.++ var1026 var1811)))
(assert true)
(define-const var2199 String (append/672562846 var2733 " offset ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ") 
(declare-const var2733!1 String)
(assert (= var2733!1 (str.++ var2733 " offset ")))
(define-const var846 Int (offset/1287024874 (cast-from-var2698-to-var584 var1701))) ; Statement: $i1 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert true)
(define-const var1729 String (append/-1001720160 var2199 var846)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2199!1 String)
(assert (str.prefixof var2199 var2199!1))
(assert true)
(define-const var2255 String (append/672562846 var1729 "/")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var1729!1 String)
(assert (= var1729!1 (str.++ var1729 "/")))
(define-const var137 (Array Int Int) (bytes/-413709904 var1701)) ; Statement: $r8 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var3019 Int (getLength-Arr-Int-1 var137)) ; Statement: $i2 = lengthof $r8 
(assert true)
(define-const var2709 String (append/-1001720160 var2255 var3019)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2255!1 String)
(assert (str.prefixof var2255 var2255!1))
(assert true)
(define-const var896 String (toString/-2075883882 var2709)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3089 var896)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var3089!1 var3145)
(declare-const var896!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3145-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), type/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), var3807_typeName/1994747818=([byte], java.lang.String), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2698-to-var584=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2698=com.alibaba.fastjson2.JSONReaderJSONB, var1701=r2, var3145=com.alibaba.fastjson2.JSONException, var3089=$r0, var2660=$r1, var1026=$r4, var705=$b0, var3807=com.alibaba.fastjson2.JSONB, var1811=$r3, var2733=$r5, var2199=$r6, var584=com.alibaba.fastjson2.JSONReader, var846=$i1, var1729=$r7, var2255=$r9, var137=$r8, var3019=$i2, var2709=$r10, var896=$r11}
; {com.alibaba.fastjson2.JSONReaderJSONB=var2698, r2=var1701, com.alibaba.fastjson2.JSONException=var3145, $r0=var3089, $r1=var2660, $r4=var1026, $b0=var705, com.alibaba.fastjson2.JSONB=var3807, $r3=var1811, $r5=var2733, $r6=var2199, com.alibaba.fastjson2.JSONReader=var584, $i1=var846, $r7=var1729, $r9=var2255, $r8=var137, $i2=var3019, $r10=var2709, $r11=var896}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("string value not support input ");	$b0 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte type>;	$r3 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" offset ");	$i1 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r8 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i2 = lengthof $r8;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r0
;block_num 1