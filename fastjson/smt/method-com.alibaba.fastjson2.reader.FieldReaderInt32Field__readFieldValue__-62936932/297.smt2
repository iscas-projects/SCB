(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2818 0)
(declare-sort var488 0)
(declare-sort var1357 0)
(declare-sort var308 0)
(declare-sort var984 0)
(declare-sort var2456 0)
(declare-sort var2530 0)
(declare-sort var759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readInt32/1162195591 (var488) Int)
(declare-fun schema/-488737871 (var984) var308)
(declare-fun cast-from-var2818-to-var984 (var2818) var984)
(declare-fun var2530-init () var2530)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var984) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var488 String) String)
(declare-fun <init>/-743866570 (var2530 String var759) void)
(declare-fun cast-from-var2456-to-var759 (var2456) var759)
(declare-const null-var2818 var2818)
(declare-const null-var488 var488)
(declare-const null-var1357 var1357)
(declare-const null-var308 var308)
(declare-const null-var2456 var2456)
(declare-const var827 var2818) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Field 
(assert (not (= var827 null-var2818)))
(declare-const var729 var488) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var729 null-var488)))
(declare-const var3237 var1357) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var3237 null-var1357)))
(assert true)
(define-const var2452 Int (readInt32/1162195591 var729)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>() 
(define-const var1107 var308 (schema/-488737871 (cast-from-var2818-to-var984 var827))) ; Statement: $r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.reflect.Field field> 
(assert (not (= var1107 null-var308))) ; Negate: Cond: $r3 == null  
(declare-const var1810 var2456) ; Statement: $r7 := @caughtexception 
(assert (not (= var1810 null-var2456)))
(define-const var3347 var2530 var2530-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var965 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var965)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var965!1 String)
(assert (= var965!1 ""))
(assert true)
(define-const var2186 String (append/672562846 var965!1 "set ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var965!2 String)
(assert (= var965!2 (str.++ var965!1 "set ")))
(define-const var1962 String (fieldName/-488737871 (cast-from-var2818-to-var984 var827))) ; Statement: $r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.String fieldName> 
(assert true)
(define-const var241 String (append/672562846 var2186 var1962)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2186!1 String)
(assert (= var2186!1 (str.++ var2186 var1962)))
(assert true)
(define-const var1370 String (append/672562846 var241 " error")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var241!1 String)
(assert (= var241!1 (str.++ var241 " error")))
(assert true)
(define-const var2357 String (toString/-2075883882 var1370)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3648 String (info/-1659839707 var729 var2357)) ; Statement: $r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14) 
(assert true)
;(assert (<init>/-743866570 var3347 var3648 (cast-from-var2456-to-var759 var1810))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7) 

(declare-const var3347!1 var2530)
(declare-const var3648!1 String)
(declare-const var1810!1 var2456)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {readInt32/1162195591=([com.alibaba.fastjson2.JSONReader], java.lang.Integer), schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var2818-to-var984=([com.alibaba.fastjson2.reader.FieldReaderInt32Field], com.alibaba.fastjson2.reader.FieldReader), var2530-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2456-to-var759=([java.lang.Exception], java.lang.Throwable)}
; {var2818=com.alibaba.fastjson2.reader.FieldReaderInt32Field, var827=r2, var488=com.alibaba.fastjson2.JSONReader, var729=r0, var1357=java.lang.Object, var3237=r4, var2452=r1, var308=com.alibaba.fastjson2.schema.JSONSchema, var984=com.alibaba.fastjson2.reader.FieldReader, var1107=$r3, var2456=java.lang.Exception, var1810=$r7, var2530=com.alibaba.fastjson2.JSONException, var3347=$r8, var965=$r9, var2186=$r11, var1962=$r10, var241=$r12, var1370=$r13, var2357=$r14, var3648=$r15, var759=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt32Field=var2818, r2=var827, com.alibaba.fastjson2.JSONReader=var488, r0=var729, java.lang.Object=var1357, r4=var3237, r1=var2452, com.alibaba.fastjson2.schema.JSONSchema=var308, com.alibaba.fastjson2.reader.FieldReader=var984, $r3=var1107, java.lang.Exception=var2456, $r7=var1810, com.alibaba.fastjson2.JSONException=var2530, $r8=var3347, $r9=var965, $r11=var2186, $r10=var1962, $r12=var241, $r13=var1370, $r14=var2357, $r15=var3648, java.lang.Throwable=var759}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderInt32Field;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.Object;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.Integer readInt32()>();	$r3 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r3 == null goto $r5 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.reflect.Field field>;	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r10 = r2.<com.alibaba.fastjson2.reader.FieldReaderInt32Field: java.lang.String fieldName>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r14);	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r7);	throw $r8
;block_num 2