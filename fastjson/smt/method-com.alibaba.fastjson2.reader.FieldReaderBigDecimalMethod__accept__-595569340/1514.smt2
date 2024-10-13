(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3066 0)
(declare-sort var2583 0)
(declare-sort var1293 0)
(declare-sort var2990 0)
(declare-sort var2431 0)
(declare-sort var3257 0)
(declare-sort var111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var2990) var1293)
(declare-fun cast-from-var3066-to-var2990 (var3066) var2990)
(declare-fun var3257-init () var3257)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2990) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3257 String var111) void)
(declare-fun cast-from-var2431-to-var111 (var2431) var111)
(declare-const null-var3066 var3066)
(declare-const null-var2583 var2583)
(declare-const null-Int Int)
(declare-const null-var1293 var1293)
(declare-const null-var2431 var2431)
(declare-const var1874 var3066) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod 
(assert (not (= var1874 null-var3066)))
(declare-const var230 var2583) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var230 null-var2583)))
(declare-const var937 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var937 null-Int)))
(define-const var3858 var1293 (schema/-488737871 (cast-from-var3066-to-var2990 var1874))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method> 
(assert (not (= var3858 null-var1293))) ; Negate: Cond: $r1 == null  
(declare-const var980 var2431) ; Statement: $r7 := @caughtexception 
(assert (not (= var980 null-var2431)))
(define-const var871 var3257 var3257-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var1604 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1604)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1604!1 String)
(assert (= var1604!1 ""))
(assert true)
(define-const var2024 String (append/672562846 var1604!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1604!2 String)
(assert (= var1604!2 (str.++ var1604!1 "set ")))
(define-const var3826 String (fieldName/-488737871 (cast-from-var3066-to-var2990 var1874))) ; Statement: $r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName> 
(assert true)
(define-const var1654 String (append/672562846 var2024 var3826)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2024!1 String)
(assert (= var2024!1 (str.++ var2024 var3826)))
(assert true)
(define-const var2402 String (append/672562846 var1654 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1654!1 String)
(assert (= var1654!1 (str.++ var1654 " error")))
(assert true)
(define-const var19 String (toString/-2075883882 var2402)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var871 var19 (cast-from-var2431-to-var111 var980))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7) 

(declare-const var871!1 var3257)
(declare-const var19!1 String)
(declare-const var980!1 var2431)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var3066-to-var2990=([com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod], com.alibaba.fastjson2.reader.FieldReader), var3257-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2431-to-var111=([java.lang.Exception], java.lang.Throwable)}
; {var3066=com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod, var1874=r0, var2583=java.lang.Object, var230=r2, var937=i0, var1293=com.alibaba.fastjson2.schema.JSONSchema, var2990=com.alibaba.fastjson2.reader.FieldReader, var3858=$r1, var2431=java.lang.Exception, var980=$r7, var3257=com.alibaba.fastjson2.JSONException, var871=$r8, var1604=$r9, var2024=$r11, var3826=$r10, var1654=$r12, var2402=$r13, var19=$r14, var111=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod=var3066, r0=var1874, java.lang.Object=var2583, r2=var230, i0=var937, com.alibaba.fastjson2.schema.JSONSchema=var1293, com.alibaba.fastjson2.reader.FieldReader=var2990, $r1=var3858, java.lang.Exception=var2431, $r7=var980, com.alibaba.fastjson2.JSONException=var3257, $r8=var871, $r9=var1604, $r11=var2024, $r10=var3826, $r12=var1654, $r13=var2402, $r14=var19, java.lang.Throwable=var111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r4 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.reflect.Method method>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r0.<com.alibaba.fastjson2.reader.FieldReaderBigDecimalMethod: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r7);	throw $r8
;block_num 2