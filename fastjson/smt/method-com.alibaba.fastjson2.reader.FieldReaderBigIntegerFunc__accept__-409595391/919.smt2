(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3010 0)
(declare-sort var2878 0)
(declare-sort var2907 0)
(declare-sort var1871 0)
(declare-sort var2538 0)
(declare-sort var1532 0)
(declare-sort var1757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1871) var2907)
(declare-fun cast-from-var3010-to-var1871 (var3010) var1871)
(declare-fun var1532-init () var1532)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2110042505 (var1871) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1532 String var1757) void)
(declare-fun cast-from-var2538-to-var1757 (var2538) var1757)
(declare-const null-var3010 var3010)
(declare-const null-var2878 var2878)
(declare-const null-Int Int)
(declare-const null-var2907 var2907)
(declare-const null-var2538 var2538)
(declare-const var272 var3010) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc 
(assert (not (= var272 null-var3010)))
(declare-const var2799 var2878) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2799 null-var2878)))
(declare-const var433 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var433 null-Int)))
(define-const var948 var2907 (schema/-488737871 (cast-from-var3010-to-var1871 var272))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: java.util.function.BiConsumer function> 
(assert (not (= var948 null-var2907))) ; Negate: Cond: $r1 == null  
(declare-const var3974 var2538) ; Statement: $r6 := @caughtexception 
(assert (not (= var3974 null-var2538)))
(define-const var2473 var1532 var1532-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var551 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var551)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var551!1 String)
(assert (= var551!1 ""))
(assert true)
(define-const var2984 String (append/672562846 var551!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var551!2 String)
(assert (= var551!2 (str.++ var551!1 "set ")))
(assert true)
(define-const var1104 String (toString/2110042505 (cast-from-var3010-to-var1871 var272))) ; Statement: $r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>() 
(assert true)
(define-const var2129 String (append/672562846 var2984 var1104)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2984!1 String)
(assert (= var2984!1 (str.++ var2984 var1104)))
(assert true)
(define-const var488 String (append/672562846 var2129 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2129!1 String)
(assert (= var2129!1 (str.++ var2129 " error")))
(assert true)
(define-const var2126 String (toString/-2075883882 var488)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2473 var2126 (cast-from-var2538-to-var1757 var3974))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var2473!1 var1532)
(declare-const var2126!1 String)
(declare-const var3974!1 var2538)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3010-to-var1871=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc], com.alibaba.fastjson2.reader.FieldReader), var1532-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2110042505=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2538-to-var1757=([java.lang.Exception], java.lang.Throwable)}
; {var3010=com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc, var272=r0, var2878=java.lang.Object, var2799=r2, var433=l0, var2907=com.alibaba.fastjson2.schema.JSONSchema, var1871=com.alibaba.fastjson2.reader.FieldReader, var948=$r1, var2538=java.lang.Exception, var3974=$r6, var1532=com.alibaba.fastjson2.JSONException, var2473=$r7, var551=$r8, var2984=$r10, var1104=$r9, var2129=$r11, var488=$r12, var2126=$r13, var1757=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc=var3010, r0=var272, java.lang.Object=var2878, r2=var2799, l0=var433, com.alibaba.fastjson2.schema.JSONSchema=var2907, com.alibaba.fastjson2.reader.FieldReader=var1871, $r1=var948, java.lang.Exception=var2538, $r6=var3974, com.alibaba.fastjson2.JSONException=var1532, $r7=var2473, $r8=var551, $r10=var2984, $r9=var1104, $r11=var2129, $r12=var488, $r13=var2126, java.lang.Throwable=var1757}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc;	r2 := @parameter0: java.lang.Object;	l0 := @parameter1: long;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: java.util.function.BiConsumer function>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2