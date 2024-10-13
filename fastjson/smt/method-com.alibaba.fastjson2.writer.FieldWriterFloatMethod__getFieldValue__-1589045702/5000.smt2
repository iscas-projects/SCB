(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2418 0)
(declare-sort var483 0)
(declare-sort var1643 0)
(declare-sort var3326 0)
(declare-sort var2572 0)
(declare-sort var3128 0)
(declare-sort var973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3326) var1643)
(declare-fun cast-from-var2418-to-var3326 (var2418) var3326)
(declare-fun arr-var483-init () (Array Int var483))
(declare-fun var3128-init () var3128)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var3326) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3128 String var973) void)
(declare-fun cast-from-var2572-to-var973 (var2572) var973)
(declare-const null-var2418 var2418)
(declare-const null-var483 var483)
(declare-const null-var2572 var2572)
(declare-const var2774 var2418) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterFloatMethod 
(assert (not (= var2774 null-var2418)))
(declare-const var2905 var483) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2905 null-var483)))
(define-const var916 var1643 (method/-2048851183 (cast-from-var2418-to-var3326 var2774))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterFloatMethod: java.lang.reflect.Method method> 
(define-const var3078 (Array Int var483) arr-var483-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2865 var2572) ; Statement: $r5 := @caughtexception 
(assert (not (= var2865 null-var2572)))
(define-const var485 var3128 var3128-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var1508 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1508)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1508!1 String)
(assert (= var1508!1 ""))
(assert true)
(define-const var1720 String (append/672562846 var1508!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var1508!2 String)
(assert (= var1508!2 (str.++ var1508!1 "invoke getter method error, ")))
(define-const var1763 String (fieldName/-2048851183 (cast-from-var2418-to-var3326 var2774))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterFloatMethod: java.lang.String fieldName> 
(assert true)
(define-const var2001 String (append/672562846 var1720 var1763)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 var1763)))
(assert true)
(define-const var3952 String (toString/-2075883882 var2001)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var485 var3952 (cast-from-var2572-to-var973 var2865))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var485!1 var3128)
(declare-const var3952!1 String)
(declare-const var2865!1 var2572)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2418-to-var3326=([com.alibaba.fastjson2.writer.FieldWriterFloatMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var483-init=([], java.lang.Object[]), var3128-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2572-to-var973=([java.lang.Exception], java.lang.Throwable)}
; {var2418=com.alibaba.fastjson2.writer.FieldWriterFloatMethod, var2774=r0, var483=java.lang.Object, var2905=r1, var1643=java.lang.reflect.Method, var3326=com.alibaba.fastjson2.writer.FieldWriter, var916=$r3, var3078=$r2, var2572=java.lang.Exception, var2865=$r5, var3128=com.alibaba.fastjson2.JSONException, var485=$r6, var1508=$r7, var1720=$r9, var1763=$r8, var2001=$r10, var3952=$r11, var973=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterFloatMethod=var2418, r0=var2774, java.lang.Object=var483, r1=var2905, java.lang.reflect.Method=var1643, com.alibaba.fastjson2.writer.FieldWriter=var3326, $r3=var916, $r2=var3078, java.lang.Exception=var2572, $r5=var2865, com.alibaba.fastjson2.JSONException=var3128, $r6=var485, $r7=var1508, $r9=var1720, $r8=var1763, $r10=var2001, $r11=var3952, java.lang.Throwable=var973}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterFloatMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterFloatMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterFloatMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2