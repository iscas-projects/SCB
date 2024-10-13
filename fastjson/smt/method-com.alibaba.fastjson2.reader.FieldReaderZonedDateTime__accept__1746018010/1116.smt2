(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var121 0)
(declare-sort var950 0)
(declare-sort var2453 0)
(declare-sort var481 0)
(declare-sort var2330 0)
(declare-sort var3490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2330) var481)
(declare-fun cast-from-var121-to-var2330 (var121) var2330)
(declare-fun var3490-init () var3490)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2330) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3490 String) void)
(declare-const null-var121 var121)
(declare-const null-var950 var950)
(declare-const null-var2453 var2453)
(declare-const null-var481 var481)
(declare-const var211 var121) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderZonedDateTime 
(assert (not (= var211 null-var121)))
(declare-const var3240 var950) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var3240 null-var950)))
(declare-const var3832 var2453) ; Statement: r2 := @parameter1: java.time.ZonedDateTime 
(assert (not (= var3832 null-var2453)))
(define-const var3647 var481 (schema/-488737871 (cast-from-var121-to-var2330 var211))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderZonedDateTime: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto (branch) 
(assert (= var3647 null-var481)) ; Cond: $r1 == null 
 ; Statement: if r2 != null goto (branch) 
(assert (not (= var3832 null-var2453))) ; Cond: r2 != null 
 ; Statement: if r3 != null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderZonedDateTime: java.util.function.BiConsumer function> 
(assert (not (not (= var3240 null-var950)))) ; Negate: Cond: r3 != null  
(define-const var154 var3490 var3490-init) ; Statement: $r11 = new com.alibaba.fastjson2.JSONException 
(define-const var1447 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1447)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1447!1 String)
(assert (= var1447!1 ""))
(assert true)
(define-const var2115 String (append/672562846 var1447!1 "set ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1447!2 String)
(assert (= var1447!2 (str.++ var1447!1 "set ")))
(define-const var10 String (fieldName/-488737871 (cast-from-var121-to-var2330 var211))) ; Statement: $r13 = r0.<com.alibaba.fastjson2.reader.FieldReaderZonedDateTime: java.lang.String fieldName> 
(assert true)
(define-const var3950 String (append/672562846 var2115 var10)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var2115!1 String)
(assert (= var2115!1 (str.++ var2115 var10)))
(assert true)
(define-const var2709 String (append/672562846 var3950 " error, object is null")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, object is null") 
(declare-const var3950!1 String)
(assert (= var3950!1 (str.++ var3950 " error, object is null")))
(assert true)
(define-const var2717 String (toString/-2075883882 var2709)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var154 var2717)) ; Statement: specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r17) 

(declare-const var154!1 var3490)
(declare-const var2717!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var121-to-var2330=([com.alibaba.fastjson2.reader.FieldReaderZonedDateTime], com.alibaba.fastjson2.reader.FieldReader), var3490-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var121=com.alibaba.fastjson2.reader.FieldReaderZonedDateTime, var211=r0, var950=java.lang.Object, var3240=r3, var2453=java.time.ZonedDateTime, var3832=r2, var481=com.alibaba.fastjson2.schema.JSONSchema, var2330=com.alibaba.fastjson2.reader.FieldReader, var3647=$r1, var3490=com.alibaba.fastjson2.JSONException, var154=$r11, var1447=$r12, var2115=$r14, var10=$r13, var3950=$r15, var2709=$r16, var2717=$r17}
; {com.alibaba.fastjson2.reader.FieldReaderZonedDateTime=var121, r0=var211, java.lang.Object=var950, r3=var3240, java.time.ZonedDateTime=var2453, r2=var3832, com.alibaba.fastjson2.schema.JSONSchema=var481, com.alibaba.fastjson2.reader.FieldReader=var2330, $r1=var3647, com.alibaba.fastjson2.JSONException=var3490, $r11=var154, $r12=var1447, $r14=var2115, $r13=var10, $r15=var3950, $r16=var2709, $r17=var2717}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderZonedDateTime;	r3 := @parameter0: java.lang.Object;	r2 := @parameter1: java.time.ZonedDateTime;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderZonedDateTime: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto (branch);	if r2 != null goto (branch);	if r3 != null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderZonedDateTime: java.util.function.BiConsumer function>;	$r11 = new com.alibaba.fastjson2.JSONException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r13 = r0.<com.alibaba.fastjson2.reader.FieldReaderZonedDateTime: java.lang.String fieldName>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error, object is null");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r17);	throw $r11
;block_num 4