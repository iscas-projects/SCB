(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1593 0)
(declare-sort var266 0)
(declare-sort var3436 0)
(declare-sort var1785 0)
(declare-sort var951 0)
(declare-sort var2120 0)
(declare-sort var423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun schema/-488737871 (var1785) var3436)
(declare-fun cast-from-var1593-to-var1785 (var1593) var1785)
(declare-fun var2120-init () var2120)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var1785) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var2120 String var423) void)
(declare-fun cast-from-var951-to-var423 (var951) var423)
(declare-const null-var1593 var1593)
(declare-const null-var266 var266)
(declare-const null-Int Int)
(declare-const null-var3436 var3436)
(declare-const null-var951 var951)
(declare-const var1510 var1593) ; Statement: r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField 
(assert (not (= var1510 null-var1593)))
(declare-const var2718 var266) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var2718 null-var266)))
(declare-const var1920 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1920 null-Int)))
(define-const var1576 var3436 (schema/-488737871 (cast-from-var1593-to-var1785 var1510))) ; Statement: $r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema> 
 ; Statement: if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field> 
(assert (not (= var1576 null-var3436))) ; Negate: Cond: $r1 == null  
(declare-const var2253 var951) ; Statement: $r5 := @caughtexception 
(assert (not (= var2253 null-var951)))
(define-const var255 var2120 var2120-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var2290 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2290)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2290!1 String)
(assert (= var2290!1 ""))
(assert true)
(define-const var789 String (append/672562846 var2290!1 "set ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var2290!2 String)
(assert (= var2290!2 (str.++ var2290!1 "set ")))
(define-const var3685 String (fieldName/-488737871 (cast-from-var1593-to-var1785 var1510))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName> 
(assert true)
(define-const var1035 String (append/672562846 var789 var3685)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var789!1 String)
(assert (= var789!1 (str.++ var789 var3685)))
(assert true)
(define-const var283 String (append/672562846 var1035 " error")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var1035!1 String)
(assert (= var1035!1 (str.++ var1035 " error")))
(assert true)
(define-const var3352 String (toString/-2075883882 var283)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var255 var3352 (cast-from-var951-to-var423 var2253))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5) 

(declare-const var255!1 var2120)
(declare-const var3352!1 String)
(declare-const var2253!1 var951)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {schema/-488737871=([com.alibaba.fastjson2.reader.FieldReader], com.alibaba.fastjson2.schema.JSONSchema), cast-from-var1593-to-var1785=([com.alibaba.fastjson2.reader.FieldReaderInt16ValueField], com.alibaba.fastjson2.reader.FieldReader), var2120-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var951-to-var423=([java.lang.Exception], java.lang.Throwable)}
; {var1593=com.alibaba.fastjson2.reader.FieldReaderInt16ValueField, var1510=r0, var266=java.lang.Object, var2718=r2, var1920=i0, var3436=com.alibaba.fastjson2.schema.JSONSchema, var1785=com.alibaba.fastjson2.reader.FieldReader, var1576=$r1, var951=java.lang.Exception, var2253=$r5, var2120=com.alibaba.fastjson2.JSONException, var255=$r6, var2290=$r7, var789=$r9, var3685=$r8, var1035=$r10, var283=$r11, var3352=$r12, var423=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt16ValueField=var1593, r0=var1510, java.lang.Object=var266, r2=var2718, i0=var1920, com.alibaba.fastjson2.schema.JSONSchema=var3436, com.alibaba.fastjson2.reader.FieldReader=var1785, $r1=var1576, java.lang.Exception=var951, $r5=var2253, com.alibaba.fastjson2.JSONException=var2120, $r6=var255, $r7=var2290, $r9=var789, $r8=var3685, $r10=var1035, $r11=var283, $r12=var3352, java.lang.Throwable=var423}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.reader.FieldReaderInt16ValueField;	r2 := @parameter0: java.lang.Object;	i0 := @parameter1: int;	$r1 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: com.alibaba.fastjson2.schema.JSONSchema schema>;	if $r1 == null goto $r3 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.reflect.Field field>;	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r8 = r0.<com.alibaba.fastjson2.reader.FieldReaderInt16ValueField: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r5);	throw $r6
;block_num 2