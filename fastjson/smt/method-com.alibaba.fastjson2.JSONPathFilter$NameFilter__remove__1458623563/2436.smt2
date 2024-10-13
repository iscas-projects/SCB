(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2846 0)
(declare-sort var777 0)
(declare-sort var2946 0)
(declare-sort var270 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var777) var777)
(declare-fun value/1029745399 (var777) var2946)
(declare-fun var270-init () var270)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2946) ClassObject)
(declare-fun cast-from-var2846-to-var2946 (var2846) var2946)
(declare-fun append/-1031950772 (String var2946) String)
(declare-fun cast-from-ClassObject-to-var2946 (ClassObject) var2946)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var270 String) void)
(declare-const null-var2846 var2846)
(declare-const null-var777 var777)
(declare-const var253 var2846) ; Statement: r5 := @this: com.alibaba.fastjson2.JSONPathFilter$NameFilter 
(assert (not (= var253 null-var2846)))
(declare-const var218 var777) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var218 null-var777)))
(define-const var2623 var777 (parent/1029745399 var218)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var2623 null-var777))) ; Cond: $r1 != null 
(define-const var1962 var777 (parent/1029745399 var218)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var1208 var2946 (value/1029745399 var1962)) ; Statement: $r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var1986 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto $r14 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1986 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2292 var270 var270-init) ; Statement: $r14 = new com.alibaba.fastjson2.JSONException 
(define-const var600 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var600)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var600!1 String)
(assert (= var600!1 ""))
(assert true)
(define-const var1746 String (append/672562846 var600!1 "UnsupportedOperation ")) ; Statement: $r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var600!2 String)
(assert (= var600!2 (str.++ var600!1 "UnsupportedOperation ")))
(assert true)
(define-const var3705 ClassObject (getClass/1258963082 (cast-from-var2846-to-var2946 var253))) ; Statement: $r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1722 String (append/-1031950772 var1746 (cast-from-ClassObject-to-var2946 var3705))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1746!1 String)
(assert (str.prefixof var1746 var1746!1))
(assert true)
(define-const var2116 String (toString/-2075883882 var1722)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2292 var2116)) ; Statement: specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var2292!1 var270)
(declare-const var2116!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var270-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2846-to-var2946=([com.alibaba.fastjson2.JSONPathFilter$NameFilter], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2946=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2846=com.alibaba.fastjson2.JSONPathFilter$NameFilter, var253=r5, var777=com.alibaba.fastjson2.JSONPath$Context, var218=r0, var2623=$r1, var1962=$r2, var2946=java.lang.Object, var1208=$r12, var1986=$z0, var270=com.alibaba.fastjson2.JSONException, var2292=$r14, var600=$r13, var1746=$r7, var3705=$r6, var1722=$r8, var2116=$r9}
; {com.alibaba.fastjson2.JSONPathFilter$NameFilter=var2846, r5=var253, com.alibaba.fastjson2.JSONPath$Context=var777, r0=var218, $r1=var2623, $r2=var1962, java.lang.Object=var2946, $r12=var1208, $z0=var1986, com.alibaba.fastjson2.JSONException=var270, $r14=var2292, $r13=var600, $r7=var1746, $r6=var3705, $r8=var1722, $r9=var2116}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.alibaba.fastjson2.JSONPathFilter$NameFilter;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto $r14 = new com.alibaba.fastjson2.JSONException;	$r14 = new com.alibaba.fastjson2.JSONException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r6 = virtualinvoke r5.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r14
;block_num 4