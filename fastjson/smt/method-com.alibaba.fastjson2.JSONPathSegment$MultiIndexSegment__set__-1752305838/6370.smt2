(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1895 0)
(declare-sort var3170 0)
(declare-sort var983 0)
(declare-sort var3822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var3170) var3170)
(declare-fun value/1029745399 (var3170) var983)
(declare-fun var3822-init () var3822)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var983) ClassObject)
(declare-fun cast-from-var1895-to-var983 (var1895) var983)
(declare-fun append/-1031950772 (String var983) String)
(declare-fun cast-from-ClassObject-to-var983 (ClassObject) var983)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var3822 String) void)
(declare-const null-var1895 var1895)
(declare-const null-var3170 var3170)
(declare-const null-var983 var983)
(declare-const var2871 var1895) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment 
(assert (not (= var2871 null-var1895)))
(declare-const var3867 var3170) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var3867 null-var3170)))
(declare-const var3466 var983) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var3466 null-var983)))
(define-const var2796 var3170 (parent/1029745399 var3867)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var2796 null-var3170))) ; Cond: $r1 != null 
(define-const var3609 var3170 (parent/1029745399 var3867)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var2369 var983 (value/1029745399 var3609)) ; Statement: $r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var2169 var983 var2369) ; Statement: r3 = $r12 
(define-const var1217 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1217 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var2369 null-var983)) ; Cond: $r12 == null 
(define-const var797 var3822 var3822-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var1261 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1261)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1261!1 String)
(assert (= var1261!1 ""))
(assert true)
(define-const var1884 String (append/672562846 var1261!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var1261!2 String)
(assert (= var1261!2 (str.++ var1261!1 "UnsupportedOperation ")))
(assert true)
(define-const var190 ClassObject (getClass/1258963082 (cast-from-var1895-to-var983 var2871))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3270 String (append/-1031950772 var1884 (cast-from-ClassObject-to-var983 var190))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var1884!1 String)
(assert (str.prefixof var1884 var1884!1))
(assert true)
(define-const var3385 String (toString/-2075883882 var3270)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var797 var3385)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var797!1 var3822)
(declare-const var3385!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var3822-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1895-to-var983=([com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var983=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1895=com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment, var2871=r6, var3170=com.alibaba.fastjson2.JSONPath$Context, var3867=r0, var983=java.lang.Object, var3466=r11, var2796=$r1, var3609=$r2, var2369=$r12, var2169=r3, var1217=$z0, var3822=com.alibaba.fastjson2.JSONException, var797=$r4, var1261=$r5, var1884=$r8, var190=$r7, var3270=$r9, var3385=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment=var1895, r6=var2871, com.alibaba.fastjson2.JSONPath$Context=var3170, r0=var3867, java.lang.Object=var983, r11=var3466, $r1=var2796, $r2=var3609, $r12=var2369, r3=var2169, $z0=var1217, com.alibaba.fastjson2.JSONException=var3822, $r4=var797, $r5=var1261, $r8=var1884, $r7=var190, $r9=var3270, $r10=var3385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$MultiIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5