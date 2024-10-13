(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2438 0)
(declare-sort var3847 0)
(declare-sort var1895 0)
(declare-sort var3920 0)
(declare-sort var3034 0)
(declare-sort var2091 0)
(declare-sort var2402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readIfNull/-460644769 (var3847) Bool)
(declare-fun var3034-init () var3034)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2091) String)
(declare-fun cast-from-var2438-to-var2091 (var2438) var2091)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var3847 String) String)
(declare-fun <init>/-743866570 (var3034 String var2402) void)
(declare-fun cast-from-var3920-to-var2402 (var3920) var2402)
(declare-const null-var2438 var2438)
(declare-const null-var3847 var3847)
(declare-const null-var1895 var1895)
(declare-const null-var3920 var3920)
(declare-const var3615 var2438) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField 
(assert (not (= var3615 null-var2438)))
(declare-const var3537 var3847) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3537 null-var3847)))
(declare-const var2931 var1895) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2931 null-var1895)))
(assert true)
(define-const var2816 Bool (readIfNull/-460644769 var3537)) ; Statement: $z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField: java.lang.reflect.Field field> 
(assert (not (= (ite var2816 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1078 var3920) ; Statement: $r6 := @caughtexception 
(assert (not (= var1078 null-var3920)))
(define-const var1341 var3034 var3034-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1093 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1093)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1093!1 String)
(assert (= var1093!1 ""))
(assert true)
(define-const var1321 String (append/672562846 var1093!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1093!2 String)
(assert (= var1093!2 (str.++ var1093!1 "set ")))
(define-const var3664 String (fieldName/-488737871 (cast-from-var2438-to-var2091 var3615))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField: java.lang.String fieldName> 
(assert true)
(define-const var3626 String (append/672562846 var1321 var3664)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1321!1 String)
(assert (= var1321!1 (str.++ var1321 var3664)))
(assert true)
(define-const var3374 String (append/672562846 var3626 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var3626!1 String)
(assert (= var3626!1 (str.++ var3626 " error")))
(assert true)
(define-const var376 String (toString/-2075883882 var3374)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1747 String (info/-1659839707 var3537 var376)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var1341 var1747 (cast-from-var3920-to-var2402 var1078))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var1341!1 var3034)
(declare-const var1747!1 String)
(declare-const var1078!1 var3920)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readIfNull/-460644769=([com.alibaba.fastjson2.JSONReader], boolean), var3034-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var2438-to-var2091=([com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3920-to-var2402=([java.lang.Exception], java.lang.Throwable)}
; {var2438=com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField, var3615=r1, var3847=com.alibaba.fastjson2.JSONReader, var3537=r0, var1895=java.lang.Object, var2931=r2, var2816=$z0, var3920=java.lang.Exception, var1078=$r6, var3034=com.alibaba.fastjson2.JSONException, var1341=$r7, var1093=$r8, var1321=$r10, var2091=com.alibaba.fastjson2.reader.FieldReader, var3664=$r9, var3626=$r11, var3374=$r12, var376=$r13, var1747=$r14, var2402=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField=var2438, r1=var3615, com.alibaba.fastjson2.JSONReader=var3847, r0=var3537, java.lang.Object=var1895, r2=var2931, $z0=var2816, java.lang.Exception=var3920, $r6=var1078, com.alibaba.fastjson2.JSONException=var3034, $r7=var1341, $r8=var1093, $r10=var1321, com.alibaba.fastjson2.reader.FieldReader=var2091, $r9=var3664, $r11=var3626, $r12=var3374, $r13=var376, $r14=var1747, java.lang.Throwable=var2402}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readIfNull()>();	if $z0 == 0 goto $r3 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField: java.lang.reflect.Field field>;	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderInt64ValueArrayFinalField: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2