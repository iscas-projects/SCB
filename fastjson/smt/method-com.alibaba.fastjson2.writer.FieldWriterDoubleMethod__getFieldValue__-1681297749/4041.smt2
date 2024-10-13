(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2913 0)
(declare-sort var144 0)
(declare-sort var1897 0)
(declare-sort var1746 0)
(declare-sort var3444 0)
(declare-sort var3047 0)
(declare-sort var3748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var1746) var1897)
(declare-fun cast-from-var2913-to-var1746 (var2913) var1746)
(declare-fun arr-var144-init () (Array Int var144))
(declare-fun var3047-init () var3047)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldName/-2048851183 (var1746) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3047 String var3748) void)
(declare-fun cast-from-var3444-to-var3748 (var3444) var3748)
(declare-const null-var2913 var2913)
(declare-const null-var144 var144)
(declare-const null-var3444 var3444)
(declare-const var3785 var2913) ; Statement: r0 := @this: com.alibaba.fastjson2.writer.FieldWriterDoubleMethod 
(assert (not (= var3785 null-var2913)))
(declare-const var3408 var144) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var3408 null-var144)))
(define-const var2824 var1897 (method/-2048851183 (cast-from-var2913-to-var1746 var3785))) ; Statement: $r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterDoubleMethod: java.lang.reflect.Method method> 
(define-const var3492 (Array Int var144) arr-var144-init) ; Statement: $r2 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3911 var3444) ; Statement: $r5 := @caughtexception 
(assert (not (= var3911 null-var3444)))
(define-const var840 var3047 var3047-init) ; Statement: $r6 = new com.alibaba.fastjson2.JSONException 
(define-const var886 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var886)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var886!1 String)
(assert (= var886!1 ""))
(assert true)
(define-const var750 String (append/672562846 var886!1 "invoke getter method error, ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ") 
(declare-const var886!2 String)
(assert (= var886!2 (str.++ var886!1 "invoke getter method error, ")))
(define-const var3261 String (fieldName/-2048851183 (cast-from-var2913-to-var1746 var3785))) ; Statement: $r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterDoubleMethod: java.lang.String fieldName> 
(assert true)
(define-const var3214 String (append/672562846 var750 var3261)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var750!1 String)
(assert (= var750!1 (str.++ var750 var3261)))
(assert true)
(define-const var3654 String (toString/-2075883882 var3214)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var840 var3654 (cast-from-var3444-to-var3748 var3911))) ; Statement: specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5) 

(declare-const var840!1 var3047)
(declare-const var3654!1 String)
(declare-const var3911!1 var3444)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2913-to-var1746=([com.alibaba.fastjson2.writer.FieldWriterDoubleMethod], com.alibaba.fastjson2.writer.FieldWriter), arr-var144-init=([], java.lang.Object[]), var3047-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldName/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var3444-to-var3748=([java.lang.Exception], java.lang.Throwable)}
; {var2913=com.alibaba.fastjson2.writer.FieldWriterDoubleMethod, var3785=r0, var144=java.lang.Object, var3408=r1, var1897=java.lang.reflect.Method, var1746=com.alibaba.fastjson2.writer.FieldWriter, var2824=$r3, var3492=$r2, var3444=java.lang.Exception, var3911=$r5, var3047=com.alibaba.fastjson2.JSONException, var840=$r6, var886=$r7, var750=$r9, var3261=$r8, var3214=$r10, var3654=$r11, var3748=java.lang.Throwable}
; {com.alibaba.fastjson2.writer.FieldWriterDoubleMethod=var2913, r0=var3785, java.lang.Object=var144, r1=var3408, java.lang.reflect.Method=var1897, com.alibaba.fastjson2.writer.FieldWriter=var1746, $r3=var2824, $r2=var3492, java.lang.Exception=var3444, $r5=var3911, com.alibaba.fastjson2.JSONException=var3047, $r6=var840, $r7=var886, $r9=var750, $r8=var3261, $r10=var3214, $r11=var3654, java.lang.Throwable=var3748}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.writer.FieldWriterDoubleMethod;	r1 := @parameter0: java.lang.Object;	$r3 = r0.<com.alibaba.fastjson2.writer.FieldWriterDoubleMethod: java.lang.reflect.Method method>;	$r2 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new com.alibaba.fastjson2.JSONException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("invoke getter method error, ");	$r8 = r0.<com.alibaba.fastjson2.writer.FieldWriterDoubleMethod: java.lang.String fieldName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r5);	throw $r6
;block_num 2