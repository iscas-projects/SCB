(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1758 0)
(declare-sort var3119 0)
(declare-sort var3746 0)
(declare-sort var3357 0)
(declare-sort var80 0)
(declare-sort var1049 0)
(declare-sort var2455 0)
(declare-sort var653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3746_toInteger/-816900337 (var3119) Int)
(declare-fun schema/-488737871 (var80) var3357)
(declare-fun cast-from-var1758-to-var80 (var1758) var80)
(declare-fun var2455-init () var2455)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var80) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2455 String var653) void)
(declare-fun cast-from-var1049-to-var653 (var1049) var653)
(declare-const null-var1758 var1758)
(declare-const null-var3119 var3119)
(declare-const null-var3357 var3357)
(declare-const null-var1049 var1049)
(declare-const var1448 var1758) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Method 
(assert (not (= var1448 null-var1758)))
(declare-const var486 var3119) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var486 null-var3119)))
(declare-const var130 var3119) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var130 null-var3119)))
(define-const var1474 Int (var3746_toInteger/-816900337 var130)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Integer toInteger(java.lang.Object)>(r0) 
(define-const var795 var3357 (schema/-488737871 (cast-from-var1758-to-var80 var1448))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.reflect.Method method> 
(assert (not (= var795 null-var3357))) ; Negate: Cond: $r3 == null  
(declare-const var636 var1049) ; Statement: $r8 := @caughtexception 
(assert (not (= var636 null-var1049)))
(define-const var622 var2455 var2455-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3156 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3156)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3156!1 String)
(assert (= var3156!1 ""))
(assert true)
(define-const var415 String (append/672562846 var3156!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3156!2 String)
(assert (= var3156!2 (str.++ var3156!1 "set ")))
(define-const var943 String (fieldName/-488737871 (cast-from-var1758-to-var80 var1448))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.String fieldName> 
(assert true)
(define-const var487 String (append/672562846 var415 var943)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var415!1 String)
(assert (= var415!1 (str.++ var415 var943)))
(assert true)
(define-const var681 String (append/672562846 var487 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var487!1 String)
(assert (= var487!1 (str.++ var487 " error")))
(assert true)
(define-const var829 String (toString/-2075883882 var681)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var622 var829 (cast-from-var1049-to-var653 var636))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var622!1 var2455)
(declare-const var829!1 String)
(declare-const var636!1 var1049)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3746_toInteger/-816900337=([java.lang.Object], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1758-to-var80=([com.alibaba.fastjson2.reader.FieldReaderInt32Method], com.alibaba.fastjson2.reader.FieldReader), var2455-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1049-to-var653=([java.lang.Exception], java.lang.Throwable)}
; {var1758=com.alibaba.fastjson2.reader.FieldReaderInt32Method, var1448=r2, var3119=java.lang.Object, var486=r4, var130=r0, var3746=com.alibaba.fastjson2.util.TypeUtils, var1474=r1, var3357=com.alibaba.fastjson2.schema.JSONSchema, var80=com.alibaba.fastjson2.reader.FieldReader, var795=$r3, var1049=java.lang.Exception, var636=$r8, var2455=com.alibaba.fastjson2.JSONException, var622=$r9, var3156=$r10, var415=$r12, var943=$r11, var487=$r13, var681=$r14, var829=$r15, var653=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32Method=var1758, r2=var1448, java.lang.Object=var3119, r4=var486, r0=var130, com.alibaba.fastjson2.util.TypeUtils=var3746, r1=var1474, com.alibaba.fastjson2.schema.JSONSchema=var3357, com.alibaba.fastjson2.reader.FieldReader=var80, $r3=var795, java.lang.Exception=var1049, $r8=var636, com.alibaba.fastjson2.JSONException=var2455, $r9=var622, $r10=var3156, $r12=var415, $r11=var943, $r13=var487, $r14=var681, $r15=var829, java.lang.Throwable=var653}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Method;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Integer toInteger(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r6 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.reflect.Method method>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Method: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 2