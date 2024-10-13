(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3680 0)
(declare-sort var2489 0)
(declare-sort var2001 0)
(declare-sort var1276 0)
(declare-sort var1305 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var2489) var2489)
(declare-fun value/1029745399 (var2489) var1276)
(declare-fun var1305-init () var1305)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1276) ClassObject)
(declare-fun cast-from-var3680-to-var1276 (var3680) var1276)
(declare-fun append/-1031950772 (String var1276) String)
(declare-fun cast-from-ClassObject-to-var1276 (ClassObject) var1276)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1305 String) void)
(declare-const null-var3680 var3680)
(declare-const null-var2489 var2489)
(declare-const null-var2001 var2001)
(declare-const null-var1276 var1276)
(declare-const var2674 var3680) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$AllSegment 
(assert (not (= var2674 null-var3680)))
(declare-const var3541 var2489) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var3541 null-var2489)))
(declare-const var3597 var2001) ; Statement: r12 := @parameter1: java.util.function.BiFunction 
(assert (not (= var3597 null-var2001)))
(define-const var1368 var2489 (parent/1029745399 var3541)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var1368 null-var2489))) ; Cond: $r1 != null 
(define-const var926 var2489 (parent/1029745399 var3541)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var3765 var1276 (value/1029745399 var926)) ; Statement: $r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var3403 var1276 var3765) ; Statement: r3 = $r16 
(define-const var794 Bool false) ; Statement: $z0 = $r16 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $z1 = $r16 instanceof java.util.List 
(assert (= (ite var794 1 0) 0)) ; Cond: $z0 == 0 
(define-const var145 Bool false) ; Statement: $z1 = $r16 instanceof java.util.List 
 ; Statement: if $z1 == 0 goto (branch) 
(assert (= (ite var145 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: if $r16 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var3765 null-var1276)) ; Cond: $r16 == null 
(define-const var559 var1305 var1305-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var1876 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1876)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1876!1 String)
(assert (= var1876!1 ""))
(assert true)
(define-const var2724 String (append/672562846 var1876!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var1876!2 String)
(assert (= var1876!2 (str.++ var1876!1 "UnsupportedOperation ")))
(assert true)
(define-const var885 ClassObject (getClass/1258963082 (cast-from-var3680-to-var1276 var2674))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var770 String (append/-1031950772 var2724 (cast-from-ClassObject-to-var1276 var885))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2724!1 String)
(assert (str.prefixof var2724 var2724!1))
(assert true)
(define-const var2032 String (toString/-2075883882 var770)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var559 var2032)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var559!1 var1305)
(declare-const var2032!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var1305-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3680-to-var1276=([com.alibaba.fastjson2.JSONPathSegment$AllSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var1276=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3680=com.alibaba.fastjson2.JSONPathSegment$AllSegment, var2674=r6, var2489=com.alibaba.fastjson2.JSONPath$Context, var3541=r0, var2001=java.util.function.BiFunction, var3597=r12, var1368=$r1, var926=$r2, var1276=java.lang.Object, var3765=$r16, var3403=r3, var794=$z0, var145=$z1, var1305=com.alibaba.fastjson2.JSONException, var559=$r4, var1876=$r5, var2724=$r8, var885=$r7, var770=$r9, var2032=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$AllSegment=var3680, r6=var2674, com.alibaba.fastjson2.JSONPath$Context=var2489, r0=var3541, java.util.function.BiFunction=var2001, r12=var3597, $r1=var1368, $r2=var926, java.lang.Object=var1276, $r16=var3765, r3=var3403, $z0=var794, $z1=var145, com.alibaba.fastjson2.JSONException=var1305, $r4=var559, $r5=var1876, $r8=var2724, $r7=var885, $r9=var770, $r10=var2032}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$AllSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r12 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r16;	$z0 = $r16 instanceof java.util.Map;	if $z0 == 0 goto $z1 = $r16 instanceof java.util.List;	$z1 = $r16 instanceof java.util.List;	if $z1 == 0 goto (branch);	if $r16 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 6