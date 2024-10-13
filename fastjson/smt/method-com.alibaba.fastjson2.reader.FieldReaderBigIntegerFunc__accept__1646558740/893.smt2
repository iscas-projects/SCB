(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1178 0)
(declare-sort var3254 0)
(declare-sort var1857 0)
(declare-sort var2177 0)
(declare-sort var2153 0)
(declare-sort var3729 0)
(declare-sort var2877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2177) var1857)
(declare-fun cast-from-var1178-to-var2177 (var1178) var2177)
(declare-fun var3729-init () var3729)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/2110042505 (var2177) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3729 String var2877) void)
(declare-fun cast-from-var2153-to-var2877 (var2153) var2877)
(declare-const null-var1178 var1178)
(declare-const null-var3254 var3254)
(declare-const null-Int Int)
(declare-const null-var1857 var1857)
(declare-const null-var2153 var2153)
(declare-const var3948 var1178) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc 
(assert (not (= var3948 null-var1178)))
(declare-const var831 var3254) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var831 null-var3254)))
(declare-const var3730 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3730 null-Int)))
(define-const var2584 var1857 (schema/-488737871 (cast-from-var1178-to-var2177 var3948))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: java.util.function.BiConsumer function> 
(assert (not (= var2584 null-var1857))) ; Negate: Cond: $r1 == null  
(declare-const var887 var2153) ; Statement: $r6 := @caughtexception 
(assert (not (= var887 null-var2153)))
(define-const var248 var3729 var3729-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var168 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var168)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var168!1 String)
(assert (= var168!1 ""))
(assert true)
(define-const var1907 String (append/672562846 var168!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var168!2 String)
(assert (= var168!2 (str.++ var168!1 "set ")))
(assert true)
(define-const var1096 String (toString/2110042505 (cast-from-var1178-to-var2177 var3948))) ; Statement: $r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>() 
(assert true)
(define-const var2243 String (append/672562846 var1907 var1096)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1907!1 String)
(assert (= var1907!1 (str.++ var1907 var1096)))
(assert true)
(define-const var1983 String (append/672562846 var2243 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2243!1 String)
(assert (= var2243!1 (str.++ var2243 " error")))
(assert true)
(define-const var3758 String (toString/-2075883882 var1983)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var248 var3758 (cast-from-var2153-to-var2877 var887))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var248!1 var3729)
(declare-const var3758!1 String)
(declare-const var887!1 var2153)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1178-to-var2177=([com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc], com.alibaba.fastjson2.reader.FieldReader), var3729-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/2110042505=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2153-to-var2877=([java.lang.Exception], java.lang.Throwable)}
; {var1178=com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc, var3948=r0, var3254=java.lang.Object, var831=r2, var3730=i0, var1857=com.alibaba.fastjson2.schema.JSONSchema, var2177=com.alibaba.fastjson2.reader.FieldReader, var2584=$r1, var2153=java.lang.Exception, var887=$r6, var3729=com.alibaba.fastjson2.JSONException, var248=$r7, var168=$r8, var1907=$r10, var1096=$r9, var2243=$r11, var1983=$r12, var3758=$r13, var2877=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc=var1178, r0=var3948, java.lang.Object=var3254, r2=var831, i0=var3730, com.alibaba.fastjson2.schema.JSONSchema=var1857, com.alibaba.fastjson2.reader.FieldReader=var2177, $r1=var2584, java.lang.Exception=var2153, $r6=var887, com.alibaba.fastjson2.JSONException=var3729, $r7=var248, $r8=var168, $r10=var1907, $r9=var1096, $r11=var2243, $r12=var1983, $r13=var3758, java.lang.Throwable=var2877}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigIntegerFunc: java.util.function.BiConsumer function>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = specialinvoke r0.<com.alibaba.fastjson2.reader.FieldReader: java.lang.String toString()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2