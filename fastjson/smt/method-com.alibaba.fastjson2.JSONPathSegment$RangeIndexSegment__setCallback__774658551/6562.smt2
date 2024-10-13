(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2820 0)
(declare-sort var19 0)
(declare-sort var1090 0)
(declare-sort var2147 0)
(declare-sort var444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var19) var19)
(declare-fun value/1029745399 (var19) var2147)
(declare-fun var444-init () var444)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2147) ClassObject)
(declare-fun cast-from-var2820-to-var2147 (var2820) var2147)
(declare-fun append/-1031950772 (String var2147) String)
(declare-fun cast-from-ClassObject-to-var2147 (ClassObject) var2147)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var444 String) void)
(declare-const null-var2820 var2820)
(declare-const null-var19 var19)
(declare-const null-var1090 var1090)
(declare-const null-var2147 var2147)
(declare-const var3559 var2820) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment 
(assert (not (= var3559 null-var2820)))
(declare-const var2375 var19) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var2375 null-var19)))
(declare-const var750 var1090) ; Statement: r11 := @parameter1: java.util.function.BiFunction 
(assert (not (= var750 null-var1090)))
(define-const var2098 var19 (parent/1029745399 var2375)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var2098 null-var19))) ; Cond: $r1 != null 
(define-const var1538 var19 (parent/1029745399 var2375)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var1823 var2147 (value/1029745399 var1538)) ; Statement: $r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var2318 var2147 var1823) ; Statement: r3 = $r12 
(define-const var3890 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3890 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var1823 null-var2147)) ; Cond: $r12 == null 
(define-const var2962 var444 var444-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var2029 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2029)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2029!1 String)
(assert (= var2029!1 ""))
(assert true)
(define-const var1472 String (append/672562846 var2029!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var2029!2 String)
(assert (= var2029!2 (str.++ var2029!1 "UnsupportedOperation ")))
(assert true)
(define-const var1713 ClassObject (getClass/1258963082 (cast-from-var2820-to-var2147 var3559))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1733 String (append/-1031950772 var1472 (cast-from-ClassObject-to-var2147 var1713))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1472!1 String)
(assert (str.prefixof var1472 var1472!1))
(assert true)
(define-const var873 String (toString/-2075883882 var1733)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2962 var873)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var2962!1 var444)
(declare-const var873!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var444-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2820-to-var2147=([com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2147=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2820=com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment, var3559=r6, var19=com.alibaba.fastjson2.JSONPath$Context, var2375=r0, var1090=java.util.function.BiFunction, var750=r11, var2098=$r1, var1538=$r2, var2147=java.lang.Object, var1823=$r12, var2318=r3, var3890=$z0, var444=com.alibaba.fastjson2.JSONException, var2962=$r4, var2029=$r5, var1472=$r8, var1713=$r7, var1733=$r9, var873=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment=var2820, r6=var3559, com.alibaba.fastjson2.JSONPath$Context=var19, r0=var2375, java.util.function.BiFunction=var1090, r11=var750, $r1=var2098, $r2=var1538, java.lang.Object=var2147, $r12=var1823, r3=var2318, $z0=var3890, com.alibaba.fastjson2.JSONException=var444, $r4=var2962, $r5=var2029, $r8=var1472, $r7=var1713, $r9=var1733, $r10=var873}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5