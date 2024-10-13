(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2813 0)
(declare-sort var3076 0)
(declare-sort var3293 0)
(declare-sort var3864 0)
(declare-sort var3966 0)
(declare-sort var1704 0)
(declare-sort var2380 0)
(declare-sort var592 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3864_toBoolean/-1785064133 (var3076) var3293)
(declare-fun var1704-init () var1704)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-488737871 (var2380) String)
(declare-fun cast-from-var2813-to-var2380 (var2813) var2380)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var1704 String var592) void)
(declare-fun cast-from-var3966-to-var592 (var3966) var592)
(declare-const null-var2813 var2813)
(declare-const null-var3076 var3076)
(declare-const null-var3966 var3966)
(declare-const var2789 var2813) ; Statement: r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolMethod 
(assert (not (= var2789 null-var2813)))
(declare-const var1819 var3076) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1819 null-var3076)))
(declare-const var2208 var3076) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2208 null-var3076)))
(define-const var2974 var3293 (var3864_toBoolean/-1785064133 var2208)) ; Statement: r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Boolean toBoolean(java.lang.Object)>(r0) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var830 var3966) ; Statement: $r6 := @caughtexception 
(assert (not (= var830 null-var3966)))
(define-const var1045 var1704 var1704-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var3471 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3471)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3471!1 String)
(assert (= var3471!1 ""))
(assert true)
(define-const var2655 String (append/672562846 var3471!1 "set ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ") 
(declare-const var3471!2 String)
(assert (= var3471!2 (str.++ var3471!1 "set ")))
(define-const var2499 String (fieldName/-488737871 (cast-from-var2813-to-var2380 var2789))) ; Statement: $r9 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: java.lang.String fieldName> 
(assert true)
(define-const var326 String (append/672562846 var2655 var2499)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2655!1 String)
(assert (= var2655!1 (str.++ var2655 var2499)))
(assert true)
(define-const var1774 String (append/672562846 var326 " error")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error") 
(declare-const var326!1 String)
(assert (= var326!1 (str.++ var326 " error")))
(assert true)
(define-const var1377 String (toString/-2075883882 var1774)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var1045 var1377 (cast-from-var3966-to-var592 var830))) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6) 

(declare-const var1045!1 var1704)
(declare-const var1377!1 String)
(declare-const var830!1 var3966)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3864_toBoolean/-1785064133=([java.lang.Object], java.lang.Boolean), var1704-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-488737871=([com.alibaba.fastjson2.reader.FieldReader], java.lang.String), cast-from-var2813-to-var2380=([com.alibaba.fastjson2.reader.FieldReaderBoolMethod], com.alibaba.fastjson2.reader.FieldReader), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3966-to-var592=([java.lang.Exception], java.lang.Throwable)}
; {var2813=com.alibaba.fastjson2.reader.FieldReaderBoolMethod, var2789=r2, var3076=java.lang.Object, var1819=r3, var2208=r0, var3293=java.lang.Boolean, var3864=com.alibaba.fastjson2.util.TypeUtils, var2974=r1, var3966=java.lang.Exception, var830=$r6, var1704=com.alibaba.fastjson2.JSONException, var1045=$r7, var3471=$r8, var2655=$r10, var2380=com.alibaba.fastjson2.reader.FieldReader, var2499=$r9, var326=$r11, var1774=$r12, var1377=$r13, var592=java.lang.Throwable}
; {com.alibaba.fastjson2.reader.FieldReaderBoolMethod=var2813, r2=var2789, java.lang.Object=var3076, r3=var1819, r0=var2208, java.lang.Boolean=var3293, com.alibaba.fastjson2.util.TypeUtils=var3864, r1=var2974, java.lang.Exception=var3966, $r6=var830, com.alibaba.fastjson2.JSONException=var1704, $r7=var1045, $r8=var3471, $r10=var2655, com.alibaba.fastjson2.reader.FieldReader=var2380, $r9=var2499, $r11=var326, $r12=var1774, $r13=var1377, java.lang.Throwable=var592}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.reader.FieldReaderBoolMethod;	r3 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <com.alibaba.fastjson2.util.TypeUtils: java.lang.Boolean toBoolean(java.lang.Object)>(r0);	$r6 := @caughtexception;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("set ");	$r9 = r2.<com.alibaba.fastjson2.reader.FieldReaderBoolMethod: java.lang.String fieldName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" error");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r6);	throw $r7
;block_num 2