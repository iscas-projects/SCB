(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2076 0)
(declare-sort var3169 0)
(declare-sort var1166 0)
(declare-sort var3869 0)
(declare-sort var2890 0)
(declare-sort var2475 0)
(declare-sort var1431 0)
(declare-sort var2298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1166_toInteger/-816900337 (var3169) Int)
(declare-fun schema/-488737871 (var2890) var3869)
(declare-fun cast-from-var2076-to-var2890 (var2076) var2890)
(declare-fun var1431-init () var1431)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2890) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1431 String var2298) void)
(declare-fun cast-from-var2475-to-var2298 (var2475) var2298)
(declare-const null-var2076 var2076)
(declare-const null-var3169 var3169)
(declare-const null-var3869 var3869)
(declare-const null-var2475 var2475)
(declare-const var864 var2076) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Field 
(assert (not (= var864 null-var2076)))
(declare-const var2892 var3169) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2892 null-var3169)))
(declare-const var106 var3169) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var106 null-var3169)))
(define-const var3432 Int (var1166_toInteger/-816900337 var106)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Integer toInteger(java.lang.Object)>(r0) 
(define-const var795 var3869 (schema/-488737871 (cast-from-var2076-to-var2890 var864))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto (branch) 
(assert (= var795 null-var3869)) ; Cond: $r3 == null 
 ; Statement: if r0 != null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.reflect.Field field> 
(assert (not (not (= var106 null-var3169)))) ; Negate: Cond: r0 != null  
(declare-const var2094 var2475) ; Statement: $r8 := @caughtexception 
(assert (not (= var2094 null-var2475)))
(define-const var2664 var1431 var1431-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3829 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3829)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3829!1 String)
(assert (= var3829!1 ""))
(assert true)
(define-const var1786 String (append/672562846 var3829!1 "set ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3829!2 String)
(assert (= var3829!2 (str.++ var3829!1 "set ")))
(define-const var764 String (fieldName/-488737871 (cast-from-var2076-to-var2890 var864))) ; Statement: $r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.String fieldName> 
(assert true)
(define-const var2517 String (append/672562846 var1786 var764)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1786!1 String)
(assert (= var1786!1 (str.++ var1786 var764)))
(assert true)
(define-const var1219 String (append/672562846 var2517 " error")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2517!1 String)
(assert (= var2517!1 (str.++ var2517 " error")))
(assert true)
(define-const var529 String (toString/-2075883882 var1219)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var2664 var529 (cast-from-var2475-to-var2298 var2094))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8) 

(declare-const var2664!1 var1431)
(declare-const var529!1 String)
(declare-const var2094!1 var2475)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1166_toInteger/-816900337=([java.lang.Object], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2076-to-var2890=([com.alibaba.fastjson2.reader.FieldReaderInt32Field], com.alibaba.fastjson2.reader.FieldReader), var1431-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2475-to-var2298=([java.lang.Exception], java.lang.Throwable)}
; {var2076=com.alibaba.fastjson2.reader.FieldReaderInt32Field, var864=r2, var3169=java.lang.Object, var2892=r4, var106=r0, var1166=com.alibaba.fastjson2.util.TypeUtils, var3432=r1, var3869=com.alibaba.fastjson2.schema.JSONSchema, var2890=com.alibaba.fastjson2.reader.FieldReader, var795=$r3, var2475=java.lang.Exception, var2094=$r8, var1431=com.alibaba.fastjson2.JSONException, var2664=$r9, var3829=$r10, var1786=$r12, var764=$r11, var2517=$r13, var1219=$r14, var529=$r15, var2298=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32Field=var2076, r2=var864, java.lang.Object=var3169, r4=var2892, r0=var106, com.alibaba.fastjson2.util.TypeUtils=var1166, r1=var3432, com.alibaba.fastjson2.schema.JSONSchema=var3869, com.alibaba.fastjson2.reader.FieldReader=var2890, $r3=var795, java.lang.Exception=var2475, $r8=var2094, com.alibaba.fastjson2.JSONException=var1431, $r9=var2664, $r10=var3829, $r12=var1786, $r11=var764, $r13=var2517, $r14=var1219, $r15=var529, java.lang.Throwable=var2298}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Field;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Integer toInteger(java.lang.Object)>(r0);	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto (branch);	if r0 != null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.reflect.Field field>;	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r11 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.String fieldName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r8);	throw $r9
;block_num 3