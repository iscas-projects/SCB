(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2149 0)
(declare-sort var3413 0)
(declare-sort var3814 0)
(declare-sort var3129 0)
(declare-sort var2107 0)
(declare-sort var1195 0)
(declare-sort var2659 0)
(declare-sort var2809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var3413) var3413)
(declare-fun value/1029745399 (var3413) var3814)
(declare-fun path/1029745399 (var3413) var3129)
(declare-fun getReaderContext/-285523830 (var3129) var2107)
(declare-fun provider/-445774891 (var2107) var1195)
(declare-fun getClass/1258963082 (var3814) ClassObject)
(declare-fun getObjectReader/855364031 (var1195 ClassObject) var2659)
(define-fun cast-from-ClassObject-to-ClassObject ((arg ClassObject)) ClassObject arg)
(declare-fun var2809-init () var2809)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2149-to-var3814 (var2149) var3814)
(declare-fun append/-1031950772 (String var3814) String)
(declare-fun cast-from-ClassObject-to-var3814 (ClassObject) var3814)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2809 String) void)
(declare-const null-var2149 var2149)
(declare-const null-var3413 var3413)
(declare-const var3638 var2149) ; Statement: r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment 
(assert (not (= var3638 null-var2149)))
(declare-const var1417 var3413) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var1417 null-var3413)))
(define-const var964 var3413 (parent/1029745399 var1417)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var964 null-var3413))) ; Cond: $r1 != null 
(define-const var2702 var3413 (parent/1029745399 var1417)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var683 var3814 (value/1029745399 var2702)) ; Statement: $r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var1207 var3814 var683) ; Statement: r3 = $r16 
(define-const var1416 Int 0) ; Statement: i1 = 0 
(define-const var376 Bool false) ; Statement: $z0 = $r16 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert (= (ite var376 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1803 var3129 (path/1029745399 var1417)) ; Statement: $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path> 
(assert true)
(define-const var551 var2107 (getReaderContext/-285523830 var1803)) ; Statement: $r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>() 
(define-const var3516 var1195 (provider/-445774891 var551)) ; Statement: r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider> 
(assert true)
(define-const var938 ClassObject (getClass/1258963082 var683)) ; Statement: $r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2767 var2659 (getObjectReader/855364031 var3516 (cast-from-ClassObject-to-ClassObject var938))) ; Statement: r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6) 
(define-const var1388 Bool true) ; Statement: $z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean 
 ; Statement: if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1388 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1781 var2809 var2809-init) ; Statement: $r7 = new com.alibaba.fastjson2.JSONException 
(define-const var785 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var785)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var785!1 String)
(assert (= var785!1 ""))
(assert true)
(define-const var3169 String (append/672562846 var785!1 "UnsupportedOperation ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var785!2 String)
(assert (= var785!2 (str.++ var785!1 "UnsupportedOperation ")))
(assert true)
(define-const var2050 ClassObject (getClass/1258963082 (cast-from-var2149-to-var3814 var3638))) ; Statement: $r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1076 String (append/-1031950772 var3169 (cast-from-ClassObject-to-var3814 var2050))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3169!1 String)
(assert (str.prefixof var3169 var3169!1))
(assert true)
(define-const var1077 String (toString/-2075883882 var1076)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1781 var1077)) ; Statement: specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13) 

(declare-const var1781!1 var2809)
(declare-const var1077!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), path/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath), getReaderContext/-285523830=([com.alibaba.fastjson2.JSONPath], com.alibaba.fastjson2.JSONReader$Context), provider/-445774891=([com.alibaba.fastjson2.JSONReader$Context], com.alibaba.fastjson2.reader.ObjectReaderProvider), getClass/1258963082=([java.lang.Object], java.lang.Class), getObjectReader/855364031=([com.alibaba.fastjson2.reader.ObjectReaderProvider, java.lang.reflect.Type], com.alibaba.fastjson2.reader.ObjectReader), cast-from-ClassObject-to-ClassObject=([java.lang.Class], java.lang.reflect.Type), var2809-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2149-to-var3814=([com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3814=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2149=com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment, var3638=r9, var3413=com.alibaba.fastjson2.JSONPath$Context, var1417=r0, var964=$r1, var2702=$r2, var3814=java.lang.Object, var683=$r16, var1207=r3, var1416=i1, var376=$z0, var3129=com.alibaba.fastjson2.JSONPath, var1803=$r4, var2107=com.alibaba.fastjson2.JSONReader$Context, var551=$r5, var1195=com.alibaba.fastjson2.reader.ObjectReaderProvider, var3516=r20, var938=$r6, var2659=com.alibaba.fastjson2.reader.ObjectReader, var2767=r21, var1388=$z1, var2809=com.alibaba.fastjson2.JSONException, var1781=$r7, var785=$r8, var3169=$r11, var2050=$r10, var1076=$r12, var1077=$r13}
; {com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment=var2149, r9=var3638, com.alibaba.fastjson2.JSONPath$Context=var3413, r0=var1417, $r1=var964, $r2=var2702, java.lang.Object=var3814, $r16=var683, r3=var1207, i1=var1416, $z0=var376, com.alibaba.fastjson2.JSONPath=var3129, $r4=var1803, com.alibaba.fastjson2.JSONReader$Context=var2107, $r5=var551, com.alibaba.fastjson2.reader.ObjectReaderProvider=var1195, r20=var3516, $r6=var938, com.alibaba.fastjson2.reader.ObjectReader=var2659, r21=var2767, $z1=var1388, com.alibaba.fastjson2.JSONException=var2809, $r7=var1781, $r8=var785, $r11=var3169, $r10=var2050, $r12=var1076, $r13=var1077}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiNameSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r16;	i1 = 0;	$z0 = $r16 instanceof java.util.Map;	if $z0 == 0 goto $r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r4 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath path>;	$r5 = virtualinvoke $r4.<com.alibaba.fastjson2.JSONPath: com.alibaba.fastjson2.JSONReader$Context getReaderContext()>();	r20 = $r5.<com.alibaba.fastjson2.JSONReader$Context: com.alibaba.fastjson2.reader.ObjectReaderProvider provider>;	$r6 = virtualinvoke $r16.<java.lang.Object: java.lang.Class getClass()>();	r21 = virtualinvoke r20.<com.alibaba.fastjson2.reader.ObjectReaderProvider: com.alibaba.fastjson2.reader.ObjectReader getObjectReader(java.lang.reflect.Type)>($r6);	$z1 = r21 instanceof com.alibaba.fastjson2.reader.ObjectReaderBean;	if $z1 == 0 goto $r7 = new com.alibaba.fastjson2.JSONException;	$r7 = new com.alibaba.fastjson2.JSONException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r10 = virtualinvoke r9.<java.lang.Object: java.lang.Class getClass()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 5