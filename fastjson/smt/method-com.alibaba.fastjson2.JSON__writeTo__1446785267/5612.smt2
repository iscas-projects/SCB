(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var690 0)
(declare-sort var374 0)
(declare-sort var1281 0)
(declare-sort var3894 0)
(declare-sort var360 0)
(declare-sort var2562 0)
(declare-sort var2330 0)
(declare-sort var36 0)
(declare-sort var1690 0)
(declare-sort var3437 0)
(declare-sort var3151 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2562-init () var2562)
(declare-fun <init>/1908562209 (var2562 var2330 (Array Int var360)) void)
(declare-fun var3437-init () var3437)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var374) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-743866570 (var3437 String var3151) void)
(declare-fun cast-from-var1690-to-var3151 (var1690) var3151)
(declare-const null-var690 var690)
(declare-const null-var374 var374)
(declare-const null-String String)
(declare-const null-__Array__Int__var3894__ (Array Int var3894))
(declare-const null-__Array__Int__var360__ (Array Int var360))
(declare-const var36-defaultObjectWriterProvider var2330)
(declare-const null-var1690 var1690)
(declare-const var3373 var690) ; Statement: r7 := @parameter0: java.io.OutputStream 
(assert (not (= var3373 null-var690)))
(declare-const var3374 var374) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var3374 null-var374)))
(declare-const var2723 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2723 null-String)))
(declare-const var3097 (Array Int var3894)) ; Statement: r4 := @parameter3: com.alibaba.fastjson2.filter.Filter[] 
(assert (not (= var3097 null-__Array__Int__var3894__)))
(declare-const var3031 (Array Int var360)) ; Statement: r1 := @parameter4: com.alibaba.fastjson2.JSONWriter$Feature[] 
(assert (not (= var3031 null-__Array__Int__var360__)))
(define-const var1689 var2562 var2562-init) ; Statement: $r0 = new com.alibaba.fastjson2.JSONWriter$Context 
(define-const var1780 var2330 var36-defaultObjectWriterProvider) ; Statement: $r2 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.writer.ObjectWriterProvider defaultObjectWriterProvider> 
(assert true)
;(assert (<init>/1908562209 var1689 var1780 var3031)) ; Statement: specialinvoke $r0.<com.alibaba.fastjson2.JSONWriter$Context: void <init>(com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.JSONWriter$Feature[])>($r2, r1) 

(declare-const var1689!1 var2562)
(declare-const var1780!1 var2330)
(declare-const var3031!1 (Array Int var360))
 ; Statement: if r3 == null goto (branch) 
(assert (= var2723 null-String)) ; Cond: r3 == null 
 ; Statement: if r4 == null goto $r17 = staticinvoke <com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter ofUTF8(com.alibaba.fastjson2.JSONWriter$Context)>($r0) 
(assert (not (= var3097 null-__Array__Int__var3894__))) ; Negate: Cond: r4 == null  
(declare-const var1907 var1690) ; Statement: $r8 := @caughtexception 
(assert (not (= var1907 null-var1690)))
(define-const var167 var3437 var3437-init) ; Statement: $r9 = new com.alibaba.fastjson2.JSONException 
(define-const var3741 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3741)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3741!1 String)
(assert (= var3741!1 ""))
(assert true)
(define-const var742 String (append/672562846 var3741!1 "JSON#writeTo cannot serialize \u0027")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#writeTo cannot serialize \'") 
(declare-const var3741!2 String)
(assert (= var3741!2 (str.++ var3741!1 "JSON#writeTo cannot serialize \u0027")))
(assert true)
(define-const var3349 String (append/-1031950772 var742 var3374)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var742!1 String)
(assert (str.prefixof var742 var742!1))
(assert true)
(define-const var130 String (append/672562846 var3349 "\u0027 to \u0027OutputStream\u0027")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'OutputStream\'") 
(declare-const var3349!1 String)
(assert (= var3349!1 (str.++ var3349 "\u0027 to \u0027OutputStream\u0027")))
(assert true)
(define-const var3771 String (toString/-2075883882 var130)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-743866570 var167 var3771 (cast-from-var1690-to-var3151 var1907))) ; Statement: specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8) 

(declare-const var167!1 var3437)
(declare-const var3771!1 String)
(declare-const var1907!1 var1690)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2562-init=([], com.alibaba.fastjson2.JSONWriter$Context), <init>/1908562209=([com.alibaba.fastjson2.JSONWriter$Context, com.alibaba.fastjson2.writer.ObjectWriterProvider, com.alibaba.fastjson2.JSONWriter$Feature[]], void), var3437-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-743866570=([com.alibaba.fastjson2.JSONException, java.lang.String, java.lang.Throwable], void), cast-from-var1690-to-var3151=([java.lang.Exception], java.lang.Throwable)}
; {var690=java.io.OutputStream, var3373=r7, var374=java.lang.Object, var3374=r5, var2723=r3, var1281=null_type, var3894=com.alibaba.fastjson2.filter.Filter, var3097=r4, var360=com.alibaba.fastjson2.JSONWriter$Feature, var3031=r1, var2562=com.alibaba.fastjson2.JSONWriter$Context, var1689=$r0, var2330=com.alibaba.fastjson2.writer.ObjectWriterProvider, var36=com.alibaba.fastjson2.JSONFactory, var1780=$r2, var1690=java.lang.Exception, var1907=$r8, var3437=com.alibaba.fastjson2.JSONException, var167=$r9, var3741=$r10, var742=$r11, var3349=$r12, var130=$r13, var3771=$r14, var3151=java.lang.Throwable}
; {java.io.OutputStream=var690, r7=var3373, java.lang.Object=var374, r5=var3374, r3=var2723, null_type=var1281, com.alibaba.fastjson2.filter.Filter=var3894, r4=var3097, com.alibaba.fastjson2.JSONWriter$Feature=var360, r1=var3031, com.alibaba.fastjson2.JSONWriter$Context=var2562, $r0=var1689, com.alibaba.fastjson2.writer.ObjectWriterProvider=var2330, com.alibaba.fastjson2.JSONFactory=var36, $r2=var1780, java.lang.Exception=var1690, $r8=var1907, com.alibaba.fastjson2.JSONException=var3437, $r9=var167, $r10=var3741, $r11=var742, $r12=var3349, $r13=var130, $r14=var3771, java.lang.Throwable=var3151}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: java.io.OutputStream;	r5 := @parameter1: java.lang.Object;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: com.alibaba.fastjson2.filter.Filter[];	r1 := @parameter4: com.alibaba.fastjson2.JSONWriter$Feature[];	$r0 = new com.alibaba.fastjson2.JSONWriter$Context;	$r2 = <com.alibaba.fastjson2.JSONFactory: com.alibaba.fastjson2.writer.ObjectWriterProvider defaultObjectWriterProvider>;	specialinvoke $r0.<com.alibaba.fastjson2.JSONWriter$Context: void <init>(com.alibaba.fastjson2.writer.ObjectWriterProvider,com.alibaba.fastjson2.JSONWriter$Feature[])>($r2, r1);	if r3 == null goto (branch);	if r4 == null goto $r17 = staticinvoke <com.alibaba.fastjson2.JSONWriter: com.alibaba.fastjson2.JSONWriter ofUTF8(com.alibaba.fastjson2.JSONWriter$Context)>($r0);	$r8 := @caughtexception;	$r9 = new com.alibaba.fastjson2.JSONException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JSON#writeTo cannot serialize \'");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' to \'OutputStream\'");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r8);	throw $r9
;block_num 3