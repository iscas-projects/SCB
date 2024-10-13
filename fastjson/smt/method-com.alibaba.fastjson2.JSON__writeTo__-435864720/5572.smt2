(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3274 0)
(declare-sort var2555 0)
(declare-sort var1464 0)
(declare-sort var3394 0)
(declare-sort var530 0)
(declare-sort var1147 0)
(declare-sort var3051 0)
(declare-sort var2491 0)
(declare-sort var3619 0)
(declare-sort var1565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var530-init () var530)
(declare-fun <init>/1908562209 (var530 var1147 (Array Int var3394)) void)
(declare-fun var3619-init () var3619)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2555) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3619 String var1565) void)
(declare-fun cast-from-var2491-to-var1565 (var2491) var1565)
(declare-const null-var3274 var3274)
(declare-const null-var2555 var2555)
(declare-const null-__Array__Int__var1464__ (Array Int var1464))
(declare-const null-__Array__Int__var3394__ (Array Int var3394))
(declare-const var3051-defaultObjectWriterProvider var1147)
(declare-const null-var2491 var2491)
(declare-const var1943 var3274) ; Statement: r6 := @parameter0: java.io.OutputStream 
(assert (not (= var1943 null-var3274)))
(declare-const var1342 var2555) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1342 null-var2555)))
(declare-const var3743 (Array Int var1464)) ; Statement: r3 := @parameter2: com.alibaba.fastjson2.filter.Filter[] 
(assert (not (= var3743 null-__Array__Int__var1464__)))
(declare-const var2221 (Array Int var3394)) ; Statement: r1 := @parameter3: com.alibaba.fastjson2.JSONWriter$Feature[] 
(assert (not (= var2221 null-__Array__Int__var3394__)))
(define-const var3761 var530 var530-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONWriter$Context 
(define-const var1775 var1147 var3051-defaultObjectWriterProvider) ; Statement: $r2 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.writer.ObjectWriterProvider defaultObjectWriterProvider> 
(assert true)
;(assert (<init>/1908562209 var3761 var1775 var2221)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONWriter$Context: void <init>(com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.JSONWriter$Feature[])>($r2, r1) 

(declare-const var3761!1 var530)
(declare-const var1775!1 var1147)
(declare-const var2221!1 (Array Int var3394))
 ; Statement: if r3 == null goto $r16 = staticinvoke <com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter ofUTF8(com.alibaba.fastjson2.JSONWriter$Context)>($r0) 
(assert (not (= var3743 null-__Array__Int__var1464__))) ; Negate: Cond: r3 == null  
(declare-const var757 var2491) ; Statement: $r7 := @caughtexception 
(assert (not (= var757 null-var2491)))
(define-const var3520 var3619 var3619-init) ; Statement: $r8 = new com.alibaba.fastjson2.JSONException 
(define-const var2552 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2552)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2552!1 String)
(assert (= var2552!1 ""))
(assert true)
(define-const var162 String (append/672562846 var2552!1 "JSON#writeTo cannot serialize \u0027")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#writeTo cannot serialize \'") 
(declare-const var2552!2 String)
(assert (= var2552!2 (str.++ var2552!1 "JSON#writeTo cannot serialize \u0027")))
(assert true)
(define-const var3868 String (append/-1031950772 var162 var1342)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var162!1 String)
(assert (str.prefixof var162 var162!1))
(assert true)
(define-const var862 String (append/672562846 var3868 "\u0027 to \u0027OutputStream\u0027")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'OutputStream\'") 
(declare-const var3868!1 String)
(assert (= var3868!1 (str.++ var3868 "\u0027 to \u0027OutputStream\u0027")))
(assert true)
(define-const var2875 String (toString/-2075883882 var862)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var3520 var2875 (cast-from-var2491-to-var1565 var757))) ; Statement: specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r7) 

(declare-const var3520!1 var3619)
(declare-const var2875!1 String)
(declare-const var757!1 var2491)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var530-init=([], com.alibaba.fastjson2.JSONWriter$Context), <init>/1908562209=([com.alibaba.fastjson2.JSONWriter$Context, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.JSONWriter$Feature[]], void), var3619-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var2491-to-var1565=([java.lang.Exception], java.lang.Throwable)}
; {var3274=java.io.OutputStream, var1943=r6, var2555=java.lang.Object, var1342=r4, var1464=com.alibaba.fastjson2.filter.Filter, var3743=r3, var3394=com.alibaba.fastjson2.JSONWriter$Feature, var2221=r1, var530=com.alibaba.fastjson2.JSONWriter$Context, var3761=$r0, var1147=com.alibaba.fastjson2.writer.ObjectWriterProvider, var3051=com.alibaba.fastjson2.JSONFactory, var1775=$r2, var2491=java.lang.Exception, var757=$r7, var3619=com.alibaba.fastjson2.JSONException, var3520=$r8, var2552=$r9, var162=$r10, var3868=$r11, var862=$r12, var2875=$r13, var1565=java.lang.Throwable}
; {java.io.OutputStream=var3274, r6=var1943, java.lang.Object=var2555, r4=var1342, com.alibaba.fastjson2.filter.Filter=var1464, r3=var3743, com.alibaba.fastjson2.JSONWriter$Feature=var3394, r1=var2221, com.alibaba.fastjson2.JSONWriter$Context=var530, $r0=var3761, com.alibaba.fastjson2.writer.ObjectWriterProvider=var1147, com.alibaba.fastjson2.JSONFactory=var3051, $r2=var1775, java.lang.Exception=var2491, $r7=var757, com.alibaba.fastjson2.JSONException=var3619, $r8=var3520, $r9=var2552, $r10=var162, $r11=var3868, $r12=var862, $r13=var2875, java.lang.Throwable=var1565}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @parameter0: java.io.OutputStream;	r4 := @parameter1: java.lang.Object;	r3 := @parameter2: com.alibaba.fastjson2.filter.Filter[];	r1 := @parameter3: com.alibaba.fastjson2.JSONWriter$Feature[];	$r0 = new com.alibaba.fastjson2.JSONWriter$Context;	$r2 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.writer.ObjectWriterProvider defaultObjectWriterProvider>;	specialinvoke $r0.<com.alibaba.fastjson2.JSONWriter$Context: void <init>(com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.JSONWriter$Feature[])>($r2, r1);	if r3 == null goto $r16 = staticinvoke <com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter ofUTF8(com.alibaba.fastjson2.JSONWriter$Context)>($r0);	$r7 := @caughtexception;	$r8 = new com.alibaba.fastjson2.JSONException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#writeTo cannot serialize \'");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'OutputStream\'");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r7);	throw $r8
;block_num 2