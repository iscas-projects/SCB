(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2531 0)
(declare-sort var2875 0)
(declare-sort var1791 0)
(declare-sort var1080 0)
(declare-sort var2701 0)
(declare-sort var3656 0)
(declare-sort var2439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1080) var1791)
(declare-fun cast-from-var2531-to-var1080 (var2531) var1080)
(declare-fun var3656-init () var3656)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1080) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3656 String var2439) void)
(declare-fun cast-from-var2701-to-var2439 (var2701) var2439)
(declare-const null-var2531 var2531)
(declare-const null-var2875 var2875)
(declare-const null-Int Int)
(declare-const null-var1791 var1791)
(declare-const null-var2701 var2701)
(declare-const var1222 var2531) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField 
(assert (not (= var1222 null-var2531)))
(declare-const var2278 var2875) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2278 null-var2875)))
(declare-const var1406 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1406 null-Int)))
(define-const var2008 var1791 (schema/-488737871 (cast-from-var2531-to-var1080 var1222))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field> 
(assert (not (= var2008 null-var1791))) ; Negate: Cond: $r1 == null  
(declare-const var3261 var2701) ; Statement: $r6 := @caughtexception 
(assert (not (= var3261 null-var2701)))
(define-const var3418 var3656 var3656-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var159 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var159)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var159!1 String)
(assert (= var159!1 ""))
(assert true)
(define-const var2918 String (append/672562846 var159!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var159!2 String)
(assert (= var159!2 (str.++ var159!1 "set ")))
(define-const var1834 String (fieldName/-488737871 (cast-from-var2531-to-var1080 var1222))) ; Statement: $r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName> 
(assert true)
(define-const var2134 String (append/672562846 var2918 var1834)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2918!1 String)
(assert (= var2918!1 (str.++ var2918 var1834)))
(assert true)
(define-const var2144 String (append/672562846 var2134 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2134!1 String)
(assert (= var2134!1 (str.++ var2134 " error")))
(assert true)
(define-const var1853 String (toString/-2075883882 var2144)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3418 var1853 (cast-from-var2701-to-var2439 var3261))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var3418!1 var3656)
(declare-const var1853!1 String)
(declare-const var3261!1 var2701)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2531-to-var1080=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerField], com.alibaba.fastjson2.reader.FieldReader), var3656-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2701-to-var2439=([java.lang.Exception], java.lang.Throwable)}
; {var2531=com.alibaba.fastjson2.reader.FieldReaderBigIntegerField, var1222=r0, var2875=java.lang.Object, var2278=r2, var1406=i0, var1791=com.alibaba.fastjson2.schema.JSONSchema, var1080=com.alibaba.fastjson2.reader.FieldReader, var2008=$r1, var2701=java.lang.Exception, var3261=$r6, var3656=com.alibaba.fastjson2.JSONException, var3418=$r7, var159=$r8, var2918=$r10, var1834=$r9, var2134=$r11, var2144=$r12, var1853=$r13, var2439=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerField=var2531, r0=var1222, java.lang.Object=var2875, r2=var2278, i0=var1406, com.alibaba.fastjson2.schema.JSONSchema=var1791, com.alibaba.fastjson2.reader.FieldReader=var1080, $r1=var2008, java.lang.Exception=var2701, $r6=var3261, com.alibaba.fastjson2.JSONException=var3656, $r7=var3418, $r8=var159, $r10=var2918, $r9=var1834, $r11=var2134, $r12=var2144, $r13=var1853, java.lang.Throwable=var2439}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerField;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2