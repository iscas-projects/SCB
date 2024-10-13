(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2010 0)
(declare-sort var2367 0)
(declare-sort var1774 0)
(declare-sort var2860 0)
(declare-sort var2088 0)
(declare-sort var3386 0)
(declare-sort var3624 0)
(declare-sort var1717 0)
(declare-sort var635 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var2367) var2367)
(declare-fun value/1029745399 (var2367) var2860)
(declare-fun path/1029745399 (var2367) var2088)
(declare-fun getWriterContext/62493674 (var2088) var3386)
(declare-fun provider/-146628731 (var3386) var3624)
(declare-fun getClass/1258963082 (var2860) ClassObject)
(declare-fun getObjectWriter/1409400254 (var3624 ClassObject) var1717)
(declare-fun var635-init () var635)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2010-to-var2860 (var2010) var2860)
(declare-fun append/-1031950772 (String var2860) String)
(declare-fun cast-from-ClassObject-to-var2860 (ClassObject) var2860)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var635 String) void)
(declare-const null-var2010 var2010)
(declare-const null-var2367 var2367)
(declare-const null-var1774 var1774)
(declare-const var1457 var2010) ; Statement: r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment 
(assert (not (= var1457 null-var2010)))
(declare-const var2335 var2367) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2335 null-var2367)))
(declare-const var3157 var1774) ; Statement: r20 := @parameter1: java.util.function.BiFunction 
(assert (not (= var3157 null-var1774)))
(define-const var1892 var2367 (parent/1029745399 var2335)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var1892 null-var2367))) ; Cond: $r1 != null 
(define-const var3753 var2367 (parent/1029745399 var2335)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var2237 var2860 (value/1029745399 var3753)) ; Statement: $r22 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var2386 var2860 var2237) ; Statement: r3 = $r22 
(define-const var3180 Bool false) ; Statement: $z0 = $r22 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert (= (ite var3180 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1229 var2088 (path/1029745399 var2335)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert true)
(define-const var2823 var3386 (getWriterContext/62493674 var1229)) ; Statement: $r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONWriter$Context getWriterContext()>() 
(define-const var1259 var3624 (provider/-146628731 var2823)) ; Statement: r28 = $r5.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider> 
(assert true)
(define-const var3943 ClassObject (getClass/1258963082 var2237)) ; Statement: $r6 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2376 var1717 (getObjectWriter/1409400254 var1259 var3943)) ; Statement: r29 = virtualinvoke r28.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.Class)>($r6) 
(define-const var1217 Bool true) ; Statement: $z1 = r29 instanceof com.alibaba.fastjson2.writer.ObjectWriterAdapter 
 ; Statement: if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1217 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3975 var635 var635-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var1949 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1949)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1949!1 String)
(assert (= var1949!1 ""))
(assert true)
(define-const var714 String (append/672562846 var1949!1 "UnsupportedOperation ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var1949!2 String)
(assert (= var1949!2 (str.++ var1949!1 "UnsupportedOperation ")))
(assert true)
(define-const var3569 ClassObject (getClass/1258963082 (cast-from-var2010-to-var2860 var1457))) ; Statement: $r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1743 String (append/-1031950772 var714 (cast-from-ClassObject-to-var2860 var3569))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var714!1 String)
(assert (str.prefixof var714 var714!1))
(assert true)
(define-const var990 String (toString/-2075883882 var1743)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3975 var990)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var3975!1 var635)
(declare-const var990!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), path/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath), getWriterContext/62493674=([com.alibaba.fastjson2.JSONPath], com.alibaba.fastjson2.JSONWriter$Context), provider/-146628731=([com.alibaba.fastjson2.JSONWriter$Context], com.alibaba.fastjson2.writer.ObjectWriterProvider), getClass/1258963082=([java.lang.Object], java.lang.Class), getObjectWriter/1409400254=([com.alibaba.fastjson2.writer.ObjectWriterProvider, java.lang.Class], com.alibaba.fastjson2.writer.ObjectWriter), var635-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2010-to-var2860=([com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2860=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2010=com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment, var1457=r9, var2367=com.alibaba.fastjson2.JSONPath$Context, var2335=r0, var1774=java.util.function.BiFunction, var3157=r20, var1892=$r1, var3753=$r2, var2860=java.lang.Object, var2237=$r22, var2386=r3, var3180=$z0, var2088=com.alibaba.fastjson2.JSONPath, var1229=$r4, var3386=com.alibaba.fastjson2.JSONWriter$Context, var2823=$r5, var3624=com.alibaba.fastjson2.writer.ObjectWriterProvider, var1259=r28, var3943=$r6, var1717=com.alibaba.fastjson2.writer.ObjectWriter, var2376=r29, var1217=$z1, var635=com.alibaba.fastjson2.JSONException, var3975=$r7, var1949=$r8, var714=$r11, var3569=$r10, var1743=$r12, var990=$r13}
; {com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment=var2010, r9=var1457, com.alibaba.fastjson2.JSONPath$Context=var2367, r0=var2335, java.util.function.BiFunction=var1774, r20=var3157, $r1=var1892, $r2=var3753, java.lang.Object=var2860, $r22=var2237, r3=var2386, $z0=var3180, com.alibaba.fastjson2.JSONPath=var2088, $r4=var1229, com.alibaba.fastjson2.JSONWriter$Context=var3386, $r5=var2823, com.alibaba.fastjson2.writer.ObjectWriterProvider=var3624, r28=var1259, $r6=var3943, com.alibaba.fastjson2.writer.ObjectWriter=var1717, r29=var2376, $z1=var1217, com.alibaba.fastjson2.JSONException=var635, $r7=var3975, $r8=var1949, $r11=var714, $r10=var3569, $r12=var1743, $r13=var990}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r20 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r22 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r22;	$z0 = $r22 instanceof java.util.Map;	if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONWriter$Context getWriterContext()>();	r28 = $r5.<com.alibaba.fastjson2.JSONWriter$Context: com.alibaba.fastjson2.writer.ObjectWriterProvider provider>;	$r6 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>();	r29 = virtualinvoke r28.<com.alibaba.fastjson2.writer.ObjectWriterProvider: com.alibaba.fastjson2.writer.ObjectWriter getObjectWriter(java.lang.Class)>($r6);	$z1 = r29 instanceof com.alibaba.fastjson2.writer.ObjectWriterAdapter;	if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 5