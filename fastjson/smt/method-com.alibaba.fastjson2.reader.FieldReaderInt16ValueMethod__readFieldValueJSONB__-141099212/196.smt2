(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2908 0)
(declare-sort var950 0)
(declare-sort var3147 0)
(declare-sort var103 0)
(declare-sort var2666 0)
(declare-sort var736 0)
(declare-sort var1433 0)
(declare-sort var2682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32Value/1995748807 (var950) Int)
(declare-fun schema/-488737871 (var2666) var103)
(declare-fun cast-from-var2908-to-var2666 (var2908) var2666)
(declare-fun var1433-init () var1433)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2666) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var950 String) String)
(declare-fun <init>/-743866570 (var1433 String var2682) void)
(declare-fun cast-from-var736-to-var2682 (var736) var2682)
(declare-const null-var2908 var2908)
(declare-const null-var950 var950)
(declare-const null-var3147 var3147)
(declare-const null-var103 var103)
(declare-const null-var736 var736)
(declare-const var1624 var2908) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod 
(assert (not (= var1624 null-var2908)))
(declare-const var2403 var950) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2403 null-var950)))
(declare-const var478 var3147) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var478 null-var3147)))
(assert true)
(define-const var1857 Int (readInt32Value/1995748807 var2403)) ; Statement: i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>() 
(define-const var2444 var103 (schema/-488737871 (cast-from-var2908-to-var2666 var1624))) ; Statement: $r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.reflect.Method method> 
(assert (not (= var2444 null-var103))) ; Negate: Cond: $r2 == null  
(declare-const var3398 var736) ; Statement: $r8 := @caughtexception 
(assert (not (= var3398 null-var736)))
(define-const var3090 var1433 var1433-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3909 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3909)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3909!1 String)
(assert (= var3909!1 ""))
(assert true)
(define-const var3653 String (append/672562846 var3909!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3909!2 String)
(assert (= var3909!2 (str.++ var3909!1 "set ")))
(define-const var3729 String (fieldName/-488737871 (cast-from-var2908-to-var2666 var1624))) ; Statement: $r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var3018 String (append/672562846 var3653 var3729)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3653!1 String)
(assert (= var3653!1 (str.++ var3653 var3729)))
(assert true)
(define-const var3965 String (append/672562846 var3018 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3018!1 String)
(assert (= var3018!1 (str.++ var3018 " error")))
(assert true)
(define-const var3888 String (toString/-2075883882 var3965)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2384 String (info/-1659839707 var2403 var3888)) ; Statement: $r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15) 
(assert true)
;(assert (<init>/-743866570 var3090 var2384 (cast-from-var736-to-var2682 var3398))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8) 

(declare-const var3090!1 var1433)
(declare-const var2384!1 String)
(declare-const var3398!1 var736)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32Value/1995748807=([com.alibaba.fastjson2.JSONReader], int), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2908-to-var2666=([com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod], com.alibaba.fastjson2.reader.FieldReader), var1433-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var736-to-var2682=([java.lang.Exception], java.lang.Throwable)}
; {var2908=com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod, var1624=r1, var950=com.alibaba.fastjson2.JSONReader, var2403=r0, var3147=java.lang.Object, var478=r3, var1857=i0, var103=com.alibaba.fastjson2.schema.JSONSchema, var2666=com.alibaba.fastjson2.reader.FieldReader, var2444=$r2, var736=java.lang.Exception, var3398=$r8, var1433=com.alibaba.fastjson2.JSONException, var3090=$r9, var3909=$r10, var3653=$r12, var3729=$r11, var3018=$r13, var3965=$r14, var3888=$r15, var2384=$r16, var2682=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod=var2908, r1=var1624, com.alibaba.fastjson2.JSONReader=var950, r0=var2403, java.lang.Object=var3147, r3=var478, i0=var1857, com.alibaba.fastjson2.schema.JSONSchema=var103, com.alibaba.fastjson2.reader.FieldReader=var2666, $r2=var2444, java.lang.Exception=var736, $r8=var3398, com.alibaba.fastjson2.JSONException=var1433, $r9=var3090, $r10=var3909, $r12=var3653, $r11=var3729, $r13=var3018, $r14=var3965, $r15=var3888, $r16=var2384, java.lang.Throwable=var2682}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r3 := @parameter1: java.lang.Object;	i0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int readInt32Value()>();	$r2 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r2 == null goto $r5 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueMethod: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r16 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r15);	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r16, $r8);	throw $r9
;block_num 2