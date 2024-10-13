(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1874 0)
(declare-sort var2203 0)
(declare-sort var3413 0)
(declare-sort var3272 0)
(declare-sort var3625 0)
(declare-sort var200 0)
(declare-sort var2056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readBoolValue/1806579152 (var2203) Bool)
(declare-fun var3625-init () var3625)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var200) String)
(declare-fun cast-from-var1874-to-var200 (var1874) var200)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun info/-1659839707 (var2203 String) String)
(declare-fun <init>/-743866570 (var3625 String var2056) void)
(declare-fun cast-from-var3272-to-var2056 (var3272) var2056)
(declare-const null-var1874 var1874)
(declare-const null-var2203 var2203)
(declare-const null-var3413 var3413)
(declare-const null-var3272 var3272)
(declare-const var124 var1874) ; Statement: r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod 
(assert (not (= var124 null-var1874)))
(declare-const var3353 var2203) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3353 null-var2203)))
(declare-const var2761 var3413) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var2761 null-var3413)))
(assert true)
(define-const var3126 Bool (readBoolValue/1806579152 var3353)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2663 var3272) ; Statement: $r6 := @caughtexception 
(assert (not (= var2663 null-var3272)))
(define-const var3168 var3625 var3625-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1412 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1412)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1412!1 String)
(assert (= var1412!1 ""))
(assert true)
(define-const var3833 String (append/672562846 var1412!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var1412!2 String)
(assert (= var1412!2 (str.++ var1412!1 "set ")))
(define-const var2365 String (fieldName/-488737871 (cast-from-var1874-to-var200 var124))) ; Statement: $r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod: java.lang.String fieldName> 
(assert true)
(define-const var229 String (append/672562846 var3833 var2365)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3833!1 String)
(assert (= var3833!1 (str.++ var3833 var2365)))
(assert true)
(define-const var1413 String (append/672562846 var229 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var229!1 String)
(assert (= var229!1 (str.++ var229 " error")))
(assert true)
(define-const var1639 String (toString/-2075883882 var1413)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3665 String (info/-1659839707 var3353 var1639)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13) 
(assert true)
;(assert (<init>/-743866570 var3168 var3665 (cast-from-var3272-to-var2056 var2663))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6) 

(declare-const var3168!1 var3625)
(declare-const var3665!1 String)
(declare-const var2663!1 var3272)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {readBoolValue/1806579152=([com.alibaba.fastjson2.JSONReader], boolean), var3625-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var1874-to-var200=([com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), info/-1659839707=([com.alibaba.fastjson2.JSONReader, java.lang.String], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3272-to-var2056=([java.lang.Exception], java.lang.Throwable)}
; {var1874=com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod, var124=r1, var2203=com.alibaba.fastjson2.JSONReader, var3353=r0, var3413=java.lang.Object, var2761=r2, var3126=z0, var3272=java.lang.Exception, var2663=$r6, var3625=com.alibaba.fastjson2.JSONException, var3168=$r7, var1412=$r8, var3833=$r10, var200=com.alibaba.fastjson2.reader.FieldReader, var2365=$r9, var229=$r11, var1413=$r12, var1639=$r13, var3665=$r14, var2056=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod=var1874, r1=var124, com.alibaba.fastjson2.JSONReader=var2203, r0=var3353, java.lang.Object=var3413, r2=var2761, z0=var3126, java.lang.Exception=var3272, $r6=var2663, com.alibaba.fastjson2.JSONException=var3625, $r7=var3168, $r8=var1412, $r10=var3833, com.alibaba.fastjson2.reader.FieldReader=var200, $r9=var2365, $r11=var229, $r12=var1413, $r13=var1639, $r14=var3665, java.lang.Throwable=var2056}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r2 := @parameter1: java.lang.Object;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean readBoolValue()>();	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r1.<com.alibaba.fastjson2.reader.FieldReaderBoolValueMethod: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info(java.lang.String)>($r13);	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r6);	throw $r7
;block_num 2