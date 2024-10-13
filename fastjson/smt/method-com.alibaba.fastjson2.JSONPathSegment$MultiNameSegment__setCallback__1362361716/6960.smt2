(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2414 0)
(declare-sort var543 0)
(declare-sort var127 0)
(declare-sort var2342 0)
(declare-sort var1035 0)
(declare-sort var3873 0)
(declare-sort var613 0)
(declare-sort var3801 0)
(declare-sort var3347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var543) var543)
(declare-fun root/1029745399 (var543) var2342)
(declare-fun path/1029745399 (var543) var1035)
(declare-fun getWriterContext/62493674 (var1035) var3873)
(declare-fun provider/-146628731 (var3873) var613)
(declare-fun getClass/1258963082 (var2342) ClassObject)
(declare-fun getObjectWriter/1409400254 (var613 ClassObject) var3801)
(declare-fun var3347-init () var3347)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2414-to-var2342 (var2414) var2342)
(declare-fun append/-1031950772 (String var2342) String)
(declare-fun cast-from-ClassObject-to-var2342 (ClassObject) var2342)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3347 String) void)
(declare-const null-var2414 var2414)
(declare-const null-var543 var543)
(declare-const null-var127 var127)
(declare-const var856 var2414) ; Statement: r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment 
(assert (not (= var856 null-var2414)))
(declare-const var2836 var543) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2836 null-var543)))
(declare-const var1376 var127) ; Statement: r20 := @parameter1: java.util.function.BiFunction 
(assert (not (= var1376 null-var127)))
(define-const var2092 var543 (parent/1029745399 var2836)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var2092 null-var543)))) ; Negate: Cond: $r1 != null  
(define-const var1975 var2342 (root/1029745399 var2836)) ; Statement: $r22 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r22] 
(assert true) ; Non Conditional
(define-const var2225 var2342 var1975) ; Statement: r3 = $r22 
(define-const var1325 Bool false) ; Statement: $z0 = $r22 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert (= (ite var1325 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1959 var1035 (path/1029745399 var2836)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert true)
(define-const var814 var3873 (getWriterContext/62493674 var1959)) ; Statement: $r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONWriter$Context getWriterContext()>() 
(define-const var2430 var613 (provider/-146628731 var814)) ; Statement: r28 = $r5.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider> 
(assert true)
(define-const var29 ClassObject (getClass/1258963082 var1975)) ; Statement: $r6 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3637 var3801 (getObjectWriter/1409400254 var2430 var29)) ; Statement: r29 = virtualinvoke r28.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.Class)>($r6) 
(define-const var2335 Bool true) ; Statement: $z1 = r29 instanceof com.alibaba.fastjson2.writer.ObjectWriterAdapter 
 ; Statement: if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var2335 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2001 var3347 var3347-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var96 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var96)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var96!1 String)
(assert (= var96!1 ""))
(assert true)
(define-const var2439 String (append/672562846 var96!1 "UnsupportedOperation ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var96!2 String)
(assert (= var96!2 (str.++ var96!1 "UnsupportedOperation ")))
(assert true)
(define-const var2018 ClassObject (getClass/1258963082 (cast-from-var2414-to-var2342 var856))) ; Statement: $r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var73 String (append/-1031950772 var2439 (cast-from-ClassObject-to-var2342 var2018))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2439!1 String)
(assert (str.prefixof var2439 var2439!1))
(assert true)
(define-const var2804 String (toString/-2075883882 var73)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2001 var2804)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var2001!1 var3347)
(declare-const var2804!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), path/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath), getWriterContext/62493674=([com.alibaba.fastjson2.JSONPath], com.alibaba.fastjson2.JSONWriter$Context), provider/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], com.alibaba.fastjson2.writer.ObjectWriterProvider), getClass/1258963082=([java.lang.Object], java.lang.Class), getObjectWriter/1409400254=([com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class], com.alibaba.fastjson2.writer.ObjectWriter), var3347-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2414-to-var2342=([com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2342=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2414=com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment, var856=r9, var543=com.alibaba.fastjson2.JSONPath$Context, var2836=r0, var127=java.util.function.BiFunction, var1376=r20, var2092=$r1, var2342=java.lang.Object, var1975=$r22, var2225=r3, var1325=$z0, var1035=com.alibaba.fastjson2.JSONPath, var1959=$r4, var3873=com.alibaba.fastjson2.JSONWriter$Context, var814=$r5, var613=com.alibaba.fastjson2.writer.ObjectWriterProvider, var2430=r28, var29=$r6, var3801=com.alibaba.fastjson2.writer.ObjectWriter, var3637=r29, var2335=$z1, var3347=com.alibaba.fastjson2.JSONException, var2001=$r7, var96=$r8, var2439=$r11, var2018=$r10, var73=$r12, var2804=$r13}
; {com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment=var2414, r9=var856, com.alibaba.fastjson2.JSONPath$Context=var543, r0=var2836, java.util.function.BiFunction=var127, r20=var1376, $r1=var2092, java.lang.Object=var2342, $r22=var1975, r3=var2225, $z0=var1325, com.alibaba.fastjson2.JSONPath=var1035, $r4=var1959, com.alibaba.fastjson2.JSONWriter$Context=var3873, $r5=var814, com.alibaba.fastjson2.writer.ObjectWriterProvider=var613, r28=var2430, $r6=var29, com.alibaba.fastjson2.writer.ObjectWriter=var3801, r29=var3637, $z1=var2335, com.alibaba.fastjson2.JSONException=var3347, $r7=var2001, $r8=var96, $r11=var2439, $r10=var2018, $r12=var73, $r13=var2804}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r20 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r22 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r22];	r3 = $r22;	$z0 = $r22 instanceof java.util.Map;	if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONWriter$Context getWriterContext()>();	r28 = $r5.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>;	$r6 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>();	r29 = virtualinvoke r28.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.Class)>($r6);	$z1 = r29 instanceof com.alibaba.fastjson2.writer.ObjectWriterAdapter;	if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 5