(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2274 0)
(declare-sort var3889 0)
(declare-sort var3668 0)
(declare-sort var3804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3889-init () var3889)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun strtype/-413709904 (var2274) Int)
(declare-fun var3668_typeName/1994747818 (Int) String)
(declare-fun offset/1287024874 (var3804) Int)
(declare-fun cast-from-var2274-to-var3804 (var2274) var3804)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun bytes/-413709904 (var2274) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3889 String) void)
(declare-const null-var2274 var2274)
(declare-const var2102 var2274) ; Statement: r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB 
(assert (not (= var2102 null-var2274)))
(define-const var3933 var3889 var3889-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONException 
(define-const var981 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var981)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var981!1 String)
(assert (= var981!1 ""))
(assert true)
(define-const var146 String (append/672562846 var981!1 "readString not support type ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readString not support type ") 
(declare-const var981!2 String)
(assert (= var981!2 (str.++ var981!1 "readString not support type ")))
(define-const var234 Int (strtype/-413709904 var2102)) ; Statement: $b0 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte strtype> 
(define-const var2704 String (var3668_typeName/1994747818 var234)) ; Statement: $r3 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b0) 
(assert true)
(define-const var3761 String (append/672562846 var146 var2704)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var146!1 String)
(assert (= var146!1 (str.++ var146 var2704)))
(assert true)
(define-const var3621 String (append/672562846 var3761 ", offset ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ") 
(declare-const var3761!1 String)
(assert (= var3761!1 (str.++ var3761 ", offset ")))
(define-const var1527 Int (offset/1287024874 (cast-from-var2274-to-var3804 var2102))) ; Statement: $i1 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: int offset> 
(assert true)
(define-const var804 String (append/-1001720160 var3621 var1527)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3621!1 String)
(assert (str.prefixof var3621 var3621!1))
(assert true)
(define-const var2496 String (append/672562846 var804 "/")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var804!1 String)
(assert (= var804!1 (str.++ var804 "/")))
(define-const var3886 (Array Int Int) (bytes/-413709904 var2102)) ; Statement: $r8 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes> 
(define-const var1834 Int (getLength-Arr-Int-1 var3886)) ; Statement: $i2 = lengthof $r8 
(assert true)
(define-const var3210 String (append/-1001720160 var2496 var1834)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2496!1 String)
(assert (str.prefixof var2496 var2496!1))
(assert true)
(define-const var42 String (toString/-2075883882 var3210)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3933 var42)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11) 

(declare-const var3933!1 var3889)
(declare-const var42!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3889-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), strtype/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte), var3668_typeName/1994747818=([byte], java.lang.String), offset/1287024874=([com.alibaba.fastjson2.JSONReader], int), cast-from-var2274-to-var3804=([com.alibaba.fastjson2.JSONReaderJSONB], com.alibaba.fastjson2.JSONReader), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), bytes/-413709904=([com.alibaba.fastjson2.JSONReaderJSONB], byte[]), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2274=com.alibaba.fastjson2.JSONReaderJSONB, var2102=r2, var3889=com.alibaba.fastjson2.JSONException, var3933=$r0, var981=$r1, var146=$r4, var234=$b0, var3668=com.alibaba.fastjson2.JSONB, var2704=$r3, var3761=$r5, var3621=$r6, var3804=com.alibaba.fastjson2.JSONReader, var1527=$i1, var804=$r7, var2496=$r9, var3886=$r8, var1834=$i2, var3210=$r10, var42=$r11}
; {com.alibaba.fastjson2.JSONReaderJSONB=var2274, r2=var2102, com.alibaba.fastjson2.JSONException=var3889, $r0=var3933, $r1=var981, $r4=var146, $b0=var234, com.alibaba.fastjson2.JSONB=var3668, $r3=var2704, $r5=var3761, $r6=var3621, com.alibaba.fastjson2.JSONReader=var3804, $i1=var1527, $r7=var804, $r9=var2496, $r8=var3886, $i2=var1834, $r10=var3210, $r11=var42}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.JSONReaderJSONB;	$r0 = new com.alibaba.fastjson2.JSONException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("readString not support type ");	$b0 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte strtype>;	$r3 = staticinvoke <com.alibaba.fastjson2.JSONB: java.lang.String typeName(byte)>($b0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset ");	$i1 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: int offset>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r8 = r2.<com.alibaba.fastjson2.JSONReaderJSONB: byte[] bytes>;	$i2 = lengthof $r8;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r11);	throw $r0
;block_num 1