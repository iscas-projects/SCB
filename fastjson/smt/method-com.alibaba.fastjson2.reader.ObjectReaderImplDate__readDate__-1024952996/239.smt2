(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1427 0)
(declare-sort var1095 0)
(declare-sort var859 0)
(declare-sort var288 0)
(declare-sort var2066 0)
(declare-sort var2365 0)
(declare-sort var343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun useSimpleFormatter/-1559571708 (var859) Bool)
(declare-fun cast-from-var1427-to-var859 (var1427) var859)
(declare-fun readString/1282532359 (var1095) String)
(declare-fun var288-init () var288)
(declare-fun format/-1559571708 (var859) String)
(declare-fun var2365-init () var2365)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var1095 String) String)
(declare-fun <init>/-743866570 (var2365 String var343) void)
(declare-fun cast-from-var2066-to-var343 (var2066) var343)
(declare-const null-var1427 var1427)
(declare-const null-var1095 var1095)
(declare-const null-var2066 var2066)
(declare-const var2890 var1427) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDate 
(assert (not (= var2890 null-var1427)))
(declare-const var3861 var1095) ; Statement: r1 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3861 null-var1095)))
(define-const var3854 Bool (useSimpleFormatter/-1559571708 (cast-from-var1427-to-var859 var2890))) ; Statement: $z0 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: boolean useSimpleFormatter> 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>() 
(assert (not (= (ite var3854 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1559 String (readString/1282532359 var3861)) ; Statement: r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(define-const var1653 var288 var288-init) ; Statement: $r38 = new java.text.SimpleDateFormat 
(define-const var3092 String (format/-1559571708 (cast-from-var1427-to-var859 var2890))) ; Statement: $r19 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: java.lang.String format> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1731 var2066) ; Statement: $r21 := @caughtexception 
(assert (not (= var1731 null-var2066)))
(define-const var3049 var2365 var2365-init) ; Statement: $r40 = new com.alibaba.fastjson2.JSONException 
(define-const var1779 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1779)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1779!1 String)
(assert (= var1779!1 ""))
(assert true)
(define-const var2018 String (append/672562846 var1779!1 "parse error : ")) ; Statement: $r24 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parse error : ") 
(declare-const var1779!2 String)
(assert (= var1779!2 (str.++ var1779!1 "parse error : ")))
(assert true)
(define-const var96 String (append/672562846 var2018 var1559)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r28) 
(declare-const var2018!1 String)
(assert (= var2018!1 (str.++ var2018 var1559)))
(assert true)
(define-const var315 String (toString/-2075883882 var96)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1376 String (info/-1659839707 var3861 var315)) ; Statement: $r27 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r26) 
(assert true)
;(assert (<init>/-743866570 var3049 var1376 (cast-from-var2066-to-var343 var1731))) ; Statement: specialinvoke $r40.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r27, $r21) 

(declare-const var3049!1 var2365)
(declare-const var1376!1 String)
(declare-const var1731!1 var2066)
 ; Statement: throw $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {useSimpleFormatter/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], boolean), cast-from-var1427-to-var859=([com.alibaba.fastjson2.reader.ObjectReaderImplDate], com.alibaba.fastjson2.codec.DateTimeCodec), readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), var288-init=([], java.text.SimpleDateFormat), format/-1559571708=([com.alibaba.fastjson2.codec.DateTimeCodec], java.lang.String), var2365-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2066-to-var343=([java.text.ParseException], java.lang.Throwable)}
; {var1427=com.alibaba.fastjson2.reader.ObjectReaderImplDate, var2890=r0, var1095=com.alibaba.fastjson2.JSONReader, var3861=r1, var859=com.alibaba.fastjson2.codec.DateTimeCodec, var3854=$z0, var1559=r28, var288=java.text.SimpleDateFormat, var1653=$r38, var3092=$r19, var2066=java.text.ParseException, var1731=$r21, var2365=com.alibaba.fastjson2.JSONException, var3049=$r40, var1779=$r39, var2018=$r24, var96=$r25, var315=$r26, var1376=$r27, var343=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.ObjectReaderImplDate=var1427, r0=var2890, com.alibaba.fastjson2.JSONReader=var1095, r1=var3861, com.alibaba.fastjson2.codec.DateTimeCodec=var859, $z0=var3854, r28=var1559, java.text.SimpleDateFormat=var288, $r38=var1653, $r19=var3092, java.text.ParseException=var2066, $r21=var1731, com.alibaba.fastjson2.JSONException=var2365, $r40=var3049, $r39=var1779, $r24=var2018, $r25=var96, $r26=var315, $r27=var1376, java.lang.Throwable=var343}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplDate;	r1 := @parameter0: com.alibaba.fastjson2.JSONReader;	$z0 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: boolean useSimpleFormatter>;	if $z0 == 0 goto $z1 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: boolean nextIfNullOrEmptyString()>();	r28 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r38 = new java.text.SimpleDateFormat;	$r19 = r0.<com.alibaba.fastjson2.reader.ObjectReaderImplDate: java.lang.String format>;	$r21 := @caughtexception;	$r40 = new com.alibaba.fastjson2.JSONException;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("parse error : ");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r28);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	$r27 = virtualinvoke r1.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r26);	specialinvoke $r40.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r27, $r21);	throw $r40
;block_num 3