(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1383 0)
(declare-sort var176 0)
(declare-sort var3929 0)
(declare-sort var1339 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun nextIfArrayStart/1644613984 (var176) Bool)
(declare-fun var1339-init () var1339)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun info/1950851072 (var176) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1339 String) void)
(declare-const null-var1383 var1383)
(declare-const null-var176 var176)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3929 var3929)
(declare-const null-Int Int)
(declare-const var545 var1383) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField 
(assert (not (= var545 null-var1383)))
(declare-const var242 var176) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var242 null-var176)))
(declare-const var1292 ClassObject) ; Statement: r18 := @parameter1: java.lang.reflect.Type 
(assert (not (= var1292 null-ClassObject)))
(declare-const var1868 var3929) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var1868 null-var3929)))
(declare-const var3069 Int) ; Statement: l0 := @parameter3: long 
(assert (not (= var3069 null-Int)))
(assert true)
(define-const var957 Bool (nextIfArrayStart/1644613984 var242)) ; Statement: z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>() 
 ; Statement: if z0 != 0 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert (not (not (= (ite var957 1 0) 0)))) ; Negate: Cond: z0 != 0  
(define-const var3852 var1339 var1339-init) ; Statement: $r12 = new com.alibaba.fastjson2.JSONException 
(define-const var3771 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3771)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3771!1 String)
(assert (= var3771!1 ""))
(assert true)
(define-const var504 String (append/672562846 var3771!1 "not support input ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ") 
(declare-const var3771!2 String)
(assert (= var3771!2 (str.++ var3771!1 "not support input ")))
(assert true)
(define-const var1374 String (info/1950851072 var242)) ; Statement: $r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>() 
(assert true)
(define-const var3900 String (append/672562846 var504 var1374)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var504!1 String)
(assert (= var504!1 (str.++ var504 var1374)))
(assert true)
(define-const var2241 String (toString/-2075883882 var3900)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3852 var2241)) ; Statement: specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r17) 

(declare-const var3852!1 var1339)
(declare-const var2241!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {nextIfArrayStart/1644613984=([com.alibaba.fastjson2.JSONReader], boolean), var1339-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), info/1950851072=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1383=com.alibaba.fastjson2.reader.ObjectReaderImplField, var545=r3, var176=com.alibaba.fastjson2.JSONReader, var242=r0, var1292=r18, var3929=java.lang.Object, var1868=r19, var3069=l0, var957=z0, var1339=com.alibaba.fastjson2.JSONException, var3852=$r12, var3771=$r13, var504=$r15, var1374=$r14, var3900=$r16, var2241=$r17}
; {com.alibaba.fastjson2.reader.ObjectReaderImplField=var1383, r3=var545, com.alibaba.fastjson2.JSONReader=var176, r0=var242, r18=var1292, java.lang.Object=var3929, r19=var1868, l0=var3069, z0=var957, com.alibaba.fastjson2.JSONException=var1339, $r12=var3852, $r13=var3771, $r15=var504, $r14=var1374, $r16=var3900, $r17=var2241}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplField;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r18 := @parameter1: java.lang.reflect.Type;	r19 := @parameter2: java.lang.Object;	l0 := @parameter3: long;	z0 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: boolean nextIfArrayStart()>();	if z0 != 0 goto r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r12 = new com.alibaba.fastjson2.JSONException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support input ");	$r14 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String info()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r17);	throw $r12
;block_num 2