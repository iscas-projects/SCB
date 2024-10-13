(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var116 0)
(declare-sort var1950 0)
(declare-sort var3924 0)
(declare-sort var248 0)
(declare-sort var3615 0)
(declare-sort var2605 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var248-init () var248)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var3615) String)
(declare-fun cast-from-var116-to-var3615 (var116) var3615)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var248 String var2605) void)
(declare-fun cast-from-var3924-to-var2605 (var3924) var2605)
(declare-const null-var116 var116)
(declare-const null-var1950 var1950)
(declare-const null-var3924 var3924)
(declare-const var646 var116) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly 
(assert (not (= var646 null-var116)))
(declare-const var921 var1950) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var921 null-var1950)))
(declare-const var2327 var1950) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2327 null-var1950)))
 ; Statement: if r0 != null goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly: java.lang.reflect.Field field> 
(assert (not (not (= var2327 null-var1950)))) ; Negate: Cond: r0 != null  
(declare-const var2402 var3924) ; Statement: $r13 := @caughtexception 
(assert (not (= var2402 null-var3924)))
(define-const var1964 var248 var248-init) ; Statement: $r14 = new com.alibaba.fastjson2.JSONException 
(define-const var911 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var911)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var911!1 String)
(assert (= var911!1 ""))
(assert true)
(define-const var222 String (append/672562846 var911!1 "set ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var911!2 String)
(assert (= var911!2 (str.++ var911!1 "set ")))
(define-const var1886 String (fieldName/-488737871 (cast-from-var116-to-var3615 var646))) ; Statement: $r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly: java.lang.String fieldName> 
(assert true)
(define-const var2912 String (append/672562846 var222 var1886)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var222!1 String)
(assert (= var222!1 (str.++ var222 var1886)))
(assert true)
(define-const var366 String (append/672562846 var2912 " error")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var2912!1 String)
(assert (= var2912!1 (str.++ var2912 " error")))
(assert true)
(define-const var431 String (toString/-2075883882 var366)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1964 var431 (cast-from-var3924-to-var2605 var2402))) ; Statement: specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r13) 

(declare-const var1964!1 var248)
(declare-const var431!1 String)
(declare-const var2402!1 var3924)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var248-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var116-to-var3615=([com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3924-to-var2605=([java.lang.Exception], java.lang.Throwable)}
; {var116=com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly, var646=r1, var1950=java.lang.Object, var921=r2, var2327=r0, var3924=java.lang.Exception, var2402=$r13, var248=com.alibaba.fastjson2.JSONException, var1964=$r14, var911=$r15, var222=$r17, var3615=com.alibaba.fastjson2.reader.FieldReader, var1886=$r16, var2912=$r18, var366=$r19, var431=$r20, var2605=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly=var116, r1=var646, java.lang.Object=var1950, r2=var921, r0=var2327, java.lang.Exception=var3924, $r13=var2402, com.alibaba.fastjson2.JSONException=var248, $r14=var1964, $r15=var911, $r17=var222, com.alibaba.fastjson2.reader.FieldReader=var3615, $r16=var1886, $r18=var2912, $r19=var366, $r20=var431, java.lang.Throwable=var2605}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly;	r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != null goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly: java.lang.reflect.Field field>;	$r13 := @caughtexception;	$r14 = new com.alibaba.fastjson2.JSONException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r16 = r1.<com.alibaba.fastjson2.reader.FieldReaderCollectionFieldReadOnly: java.lang.String fieldName>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r20, $r13);	throw $r14
;block_num 2