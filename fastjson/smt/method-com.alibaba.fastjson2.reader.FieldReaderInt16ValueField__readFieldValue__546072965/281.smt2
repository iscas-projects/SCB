(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2708 0)
(declare-sort var510 0)
(declare-sort var2739 0)
(declare-sort var1828 0)
(declare-sort var3023 0)
(declare-sort var1863 0)
(declare-sort var2545 0)
(declare-sort var347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var510) Int)
(declare-fun schema/-488737871 (var3023) var1828)
(declare-fun cast-from-var2708-to-var3023 (var2708) var3023)
(declare-fun var2545-init () var2545)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3023) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var510 String) String)
(declare-fun <init>/-743866570 (var2545 String var347) void)
(declare-fun cast-from-var1863-to-var347 (var1863) var347)
(declare-const null-var2708 var2708)
(declare-const null-var510 var510)
(declare-const null-var2739 var2739)
(declare-const null-var1828 var1828)
(declare-const null-var1863 var1863)
(declare-const var1755 var2708) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField 
(assert (not (= var1755 null-var2708)))
(declare-const var1966 var510) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var1966 null-var510)))
(declare-const var3947 var2739) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3947 null-var2739)))
(assert true)
(define-const var3705 Int (readInt32Value/1995748807 var1966)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var2321 var1828 (schema/-488737871 (cast-from-var2708-to-var3023 var1755))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field> 
(assert (not (= var2321 null-var1828))) ; Negate: Cond: $r2 == null  
(declare-const var3591 var1863) ; Statement: $r6 := @caughtexception 
(assert (not (= var3591 null-var1863)))
(define-const var1236 var2545 var2545-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var688 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var688)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var688!1 String)
(assert (= var688!1 ""))
(assert true)
(define-const var3683 String (append/672562846 var688!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var688!2 String)
(assert (= var688!2 (str.++ var688!1 "set ")))
(define-const var3190 String (fieldName/-488737871 (cast-from-var2708-to-var3023 var1755))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName> 
(assert true)
(define-const var100 String (append/672562846 var3683 var3190)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3683!1 String)
(assert (= var3683!1 (str.++ var3683 var3190)))
(assert true)
(define-const var820 String (append/672562846 var100 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var100!1 String)
(assert (= var100!1 (str.++ var100 " error")))
(assert true)
(define-const var366 String (toString/-2075883882 var820)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3949 String (info/-1659839707 var1966 var366)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var1236 var3949 (cast-from-var1863-to-var347 var3591))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var1236!1 var2545)
(declare-const var3949!1 String)
(declare-const var3591!1 var1863)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2708-to-var3023=([com.alibaba.fastjson2.reader.FieldReaderInt16ValueField], com.alibaba.fastjson2.reader.FieldReader), var2545-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1863-to-var347=([java.lang.Exception], java.lang.Throwable)}
; {var2708=com.alibaba.fastjson2.reader.FieldReaderInt16ValueField, var1755=r1, var510=com.alibaba.fastjson2.JSONReader, var1966=r0, var2739=java.lang.Object, var3947=r3, var3705=i0, var1828=com.alibaba.fastjson2.schema.JSONSchema, var3023=com.alibaba.fastjson2.reader.FieldReader, var2321=$r2, var1863=java.lang.Exception, var3591=$r6, var2545=com.alibaba.fastjson2.JSONException, var1236=$r7, var688=$r8, var3683=$r10, var3190=$r9, var100=$r11, var820=$r12, var366=$r13, var3949=$r14, var347=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16ValueField=var2708, r1=var1755, com.alibaba.fastjson2.JSONReader=var510, r0=var1966, java.lang.Object=var2739, r3=var3947, i0=var3705, com.alibaba.fastjson2.schema.JSONSchema=var1828, com.alibaba.fastjson2.reader.FieldReader=var3023, $r2=var2321, java.lang.Exception=var1863, $r6=var3591, com.alibaba.fastjson2.JSONException=var2545, $r7=var1236, $r8=var688, $r10=var3683, $r9=var3190, $r11=var100, $r12=var820, $r13=var366, $r14=var3949, java.lang.Throwable=var347}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r4 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2