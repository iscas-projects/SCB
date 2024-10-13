(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1953 0)
(declare-sort var1495 0)
(declare-sort var648 0)
(declare-sort var3674 0)
(declare-sort var1950 0)
(declare-sort var3787 0)
(declare-sort var3754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3674) var648)
(declare-fun cast-from-var1953-to-var3674 (var1953) var3674)
(declare-fun arr-var1495-init () (Array Int var1495))
(declare-fun var3787-init () var3787)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3674) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3787 String var3754) void)
(declare-fun cast-from-var1950-to-var3754 (var1950) var3754)
(declare-const null-var1953 var1953)
(declare-const null-var1495 var1495)
(declare-const null-var1950 var1950)
(declare-const var3044 var1953) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt8Method 
(assert (not (= var3044 null-var1953)))
(declare-const var697 var1495) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var697 null-var1495)))
(define-const var341 var648 (method/-2048851183 (cast-from-var1953-to-var3674 var3044))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt8Method: java.lang.reflect.Method method> 
(define-const var3614 (Array Int var1495) arr-var1495-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3344 var1950) ; Statement: $r5 := @caughtexception 
(assert (not (= var3344 null-var1950)))
(define-const var3333 var3787 var3787-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var611 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var611)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var611!1 String)
(assert (= var611!1 ""))
(assert true)
(define-const var2661 String (append/672562846 var611!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var611!2 String)
(assert (= var611!2 (str.++ var611!1 "invoke getter method error, ")))
(define-const var3980 String (fieldName/-2048851183 (cast-from-var1953-to-var3674 var3044))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt8Method: java.lang.String fieldName> 
(assert true)
(define-const var1677 String (append/672562846 var2661 var3980)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2661!1 String)
(assert (= var2661!1 (str.++ var2661 var3980)))
(assert true)
(define-const var361 String (toString/-2075883882 var1677)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3333 var361 (cast-from-var1950-to-var3754 var3344))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var3333!1 var3787)
(declare-const var361!1 String)
(declare-const var3344!1 var1950)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var1953-to-var3674=([com.alibaba.fastjson2.writer.FieldWriterInt8Method], com.alibaba.fastjson2.writer.FieldWriter), arr-var1495-init=([], java.lang.Object[]), var3787-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1950-to-var3754=([java.lang.Exception], java.lang.Throwable)}
; {var1953=com.alibaba.fastjson2.writer.FieldWriterInt8Method, var3044=r0, var1495=java.lang.Object, var697=r1, var648=java.lang.reflect.Method, var3674=com.alibaba.fastjson2.writer.FieldWriter, var341=$r3, var3614=$r2, var1950=java.lang.Exception, var3344=$r5, var3787=com.alibaba.fastjson2.JSONException, var3333=$r6, var611=$r7, var2661=$r9, var3980=$r8, var1677=$r10, var361=$r11, var3754=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterInt8Method=var1953, r0=var3044, java.lang.Object=var1495, r1=var697, java.lang.reflect.Method=var648, com.alibaba.fastjson2.writer.FieldWriter=var3674, $r3=var341, $r2=var3614, java.lang.Exception=var1950, $r5=var3344, com.alibaba.fastjson2.JSONException=var3787, $r6=var3333, $r7=var611, $r9=var2661, $r8=var3980, $r10=var1677, $r11=var361, java.lang.Throwable=var3754}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterInt8Method;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt8Method: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterInt8Method: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2