(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var178 0)
(declare-sort var57 0)
(declare-sort var2240 0)
(declare-sort var383 0)
(declare-sort var2513 0)
(declare-sort var2341 0)
(declare-sort var741 0)
(declare-sort var2809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var57) var57)
(declare-fun value/1029745399 (var57) var2240)
(declare-fun path/1029745399 (var57) var383)
(declare-fun getReaderContext/-285523830 (var383) var2513)
(declare-fun provider/-445774891 (var2513) var2341)
(declare-fun getClass/1258963082 (var2240) ClassObject)
(declare-fun getObjectReader/855364031 (var2341 ClassObject) var741)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var2809-init () var2809)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var178-to-var2240 (var178) var2240)
(declare-fun append/-1031950772 (String var2240) String)
(declare-fun cast-from-ClassObject-to-var2240 (ClassObject) var2240)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2809 String) void)
(declare-const null-var178 var178)
(declare-const null-var57 var57)
(declare-const null-var2240 var2240)
(declare-const var1575 var178) ; Statement: r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment 
(assert (not (= var1575 null-var178)))
(declare-const var1247 var57) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var1247 null-var57)))
(declare-const var714 var2240) ; Statement: r15 := @parameter1: java.lang.Object 
(assert (not (= var714 null-var2240)))
(define-const var2589 var57 (parent/1029745399 var1247)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var2589 null-var57))) ; Cond: $r1 != null 
(define-const var790 var57 (parent/1029745399 var1247)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var820 var2240 (value/1029745399 var790)) ; Statement: $r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var2864 var2240 var820) ; Statement: r3 = $r16 
(define-const var3122 Bool false) ; Statement: $z0 = $r16 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert (= (ite var3122 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3757 var383 (path/1029745399 var1247)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert true)
(define-const var891 var2513 (getReaderContext/-285523830 var3757)) ; Statement: $r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>() 
(define-const var2302 var2341 (provider/-445774891 var891)) ; Statement: r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider> 
(assert true)
(define-const var505 ClassObject (getClass/1258963082 var820)) ; Statement: $r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1057 var741 (getObjectReader/855364031 var2302 (cast-from-ClassObject-to-ClassObject var505))) ; Statement: r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6) 
(define-const var809 Bool true) ; Statement: $z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean 
 ; Statement: if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var809 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2812 var2809 var2809-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var991 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var991)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var991!1 String)
(assert (= var991!1 ""))
(assert true)
(define-const var657 String (append/672562846 var991!1 "UnsupportedOperation ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var991!2 String)
(assert (= var991!2 (str.++ var991!1 "UnsupportedOperation ")))
(assert true)
(define-const var863 ClassObject (getClass/1258963082 (cast-from-var178-to-var2240 var1575))) ; Statement: $r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var150 String (append/-1031950772 var657 (cast-from-ClassObject-to-var2240 var863))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var657!1 String)
(assert (str.prefixof var657 var657!1))
(assert true)
(define-const var2957 String (toString/-2075883882 var150)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2812 var2957)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var2812!1 var2809)
(declare-const var2957!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), path/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath), getReaderContext/-285523830=([com.alibaba.fastjson2.JSONPath], com.alibaba.fastjson2.JSONReader$Context), provider/-445774891=([com.alibaba.fastjson2.JSONReader$Context], com.alibaba.fastjson2.reader.ObjectReaderProvider), getClass/1258963082=([java.lang.Object], java.lang.Class), getObjectReader/855364031=([com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type], com.alibaba.fastjson2.reader.ObjectReader), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var2809-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var178-to-var2240=([com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2240=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var178=com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment, var1575=r9, var57=com.alibaba.fastjson2.JSONPath$Context, var1247=r0, var2240=java.lang.Object, var714=r15, var2589=$r1, var790=$r2, var820=$r16, var2864=r3, var3122=$z0, var383=com.alibaba.fastjson2.JSONPath, var3757=$r4, var2513=com.alibaba.fastjson2.JSONReader$Context, var891=$r5, var2341=com.alibaba.fastjson2.reader.ObjectReaderProvider, var2302=r20, var505=$r6, var741=com.alibaba.fastjson2.reader.ObjectReader, var1057=r21, var809=$z1, var2809=com.alibaba.fastjson2.JSONException, var2812=$r7, var991=$r8, var657=$r11, var863=$r10, var150=$r12, var2957=$r13}
; {com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment=var178, r9=var1575, com.alibaba.fastjson2.JSONPath$Context=var57, r0=var1247, java.lang.Object=var2240, r15=var714, $r1=var2589, $r2=var790, $r16=var820, r3=var2864, $z0=var3122, com.alibaba.fastjson2.JSONPath=var383, $r4=var3757, com.alibaba.fastjson2.JSONReader$Context=var2513, $r5=var891, com.alibaba.fastjson2.reader.ObjectReaderProvider=var2341, r20=var2302, $r6=var505, com.alibaba.fastjson2.reader.ObjectReader=var741, r21=var1057, $z1=var809, com.alibaba.fastjson2.JSONException=var2809, $r7=var2812, $r8=var991, $r11=var657, $r10=var863, $r12=var150, $r13=var2957}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r15 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r16;	$z0 = $r16 instanceof java.util.Map;	if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>();	r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider>;	$r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>();	r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6);	$z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean;	if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 5