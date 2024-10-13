(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var198 0)
(declare-sort var3543 0)
(declare-sort var3975 0)
(declare-sort var84 0)
(declare-sort var3809 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var3543) var3543)
(declare-fun root/1029745399 (var3543) var84)
(declare-fun var3809-init () var3809)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var84) ClassObject)
(declare-fun cast-from-var198-to-var84 (var198) var84)
(declare-fun append/-1031950772 (String var84) String)
(declare-fun cast-from-ClassObject-to-var84 (ClassObject) var84)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3809 String) void)
(declare-const null-var198 var198)
(declare-const null-var3543 var3543)
(declare-const null-var3975 var3975)
(declare-const null-var84 var84)
(declare-const var2108 var198) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment 
(assert (not (= var2108 null-var198)))
(declare-const var1605 var3543) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var1605 null-var3543)))
(declare-const var3791 var3975) ; Statement: r11 := @parameter1: java.util.function.BiFunction 
(assert (not (= var3791 null-var3975)))
(define-const var1429 var3543 (parent/1029745399 var1605)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var1429 null-var3543)))) ; Negate: Cond: $r1 != null  
(define-const var2068 var84 (root/1029745399 var1605)) ; Statement: $r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r12] 
(assert true) ; Non Conditional
(define-const var2559 var84 var2068) ; Statement: r3 = $r12 
(define-const var1492 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1492 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var2068 null-var84)) ; Cond: $r12 == null 
(define-const var1161 var3809 var3809-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var2528 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2528)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2528!1 String)
(assert (= var2528!1 ""))
(assert true)
(define-const var1351 String (append/672562846 var2528!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var2528!2 String)
(assert (= var2528!2 (str.++ var2528!1 "UnsupportedOperation ")))
(assert true)
(define-const var3300 ClassObject (getClass/1258963082 (cast-from-var198-to-var84 var2108))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var435 String (append/-1031950772 var1351 (cast-from-ClassObject-to-var84 var3300))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1351!1 String)
(assert (str.prefixof var1351 var1351!1))
(assert true)
(define-const var2822 String (toString/-2075883882 var435)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1161 var2822)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var1161!1 var3809)
(declare-const var2822!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var3809-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var198-to-var84=([com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var84=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var198=com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment, var2108=r6, var3543=com.alibaba.fastjson2.JSONPath$Context, var1605=r0, var3975=java.util.function.BiFunction, var3791=r11, var1429=$r1, var84=java.lang.Object, var2068=$r12, var2559=r3, var1492=$z0, var3809=com.alibaba.fastjson2.JSONException, var1161=$r4, var2528=$r5, var1351=$r8, var3300=$r7, var435=$r9, var2822=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment=var198, r6=var2108, com.alibaba.fastjson2.JSONPath$Context=var3543, r0=var1605, java.util.function.BiFunction=var3975, r11=var3791, $r1=var1429, java.lang.Object=var84, $r12=var2068, r3=var2559, $z0=var1492, com.alibaba.fastjson2.JSONException=var3809, $r4=var1161, $r5=var2528, $r8=var1351, $r7=var3300, $r9=var435, $r10=var2822}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r12];	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5