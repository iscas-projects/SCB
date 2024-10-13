(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2305 0)
(declare-sort var1642 0)
(declare-sort var2135 0)
(declare-sort var2469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var1642) var1642)
(declare-fun root/1029745399 (var1642) var2135)
(declare-fun var2469-init () var2469)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2135) ClassObject)
(declare-fun cast-from-var2305-to-var2135 (var2305) var2135)
(declare-fun append/-1031950772 (String var2135) String)
(declare-fun cast-from-ClassObject-to-var2135 (ClassObject) var2135)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var2469 String) void)
(declare-const null-var2305 var2305)
(declare-const null-var1642 var1642)
(declare-const null-var2135 var2135)
(declare-const var1995 var2305) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment 
(assert (not (= var1995 null-var2305)))
(declare-const var3975 var1642) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var3975 null-var1642)))
(declare-const var2871 var2135) ; Statement: r11 := @parameter1: java.lang.Object 
(assert (not (= var2871 null-var2135)))
(define-const var637 var1642 (parent/1029745399 var3975)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (not (= var637 null-var1642)))) ; Negate: Cond: $r1 != null  
(define-const var3613 var2135 (root/1029745399 var3975)) ; Statement: $r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root> 
 ; Statement: goto [?= r3 = $r12] 
(assert true) ; Non Conditional
(define-const var983 var2135 var3613) ; Statement: r3 = $r12 
(define-const var3521 Bool false) ; Statement: $z0 = $r12 instanceof java.util.List 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3521 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (= var3613 null-var2135)) ; Cond: $r12 == null 
(define-const var3977 var2469 var2469-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var276 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var276)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var276!1 String)
(assert (= var276!1 ""))
(assert true)
(define-const var2785 String (append/672562846 var276!1 "UnsupportedOperation ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ") 
(declare-const var276!2 String)
(assert (= var276!2 (str.++ var276!1 "UnsupportedOperation ")))
(assert true)
(define-const var2091 ClassObject (getClass/1258963082 (cast-from-var2305-to-var2135 var1995))) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2778 String (append/-1031950772 var2785 (cast-from-ClassObject-to-var2135 var2091))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var2785!1 String)
(assert (str.prefixof var2785 var2785!1))
(assert true)
(define-const var3701 String (toString/-2075883882 var2778)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var3977 var3701)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10) 

(declare-const var3977!1 var2469)
(declare-const var3701!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), root/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), var2469-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2305-to-var2135=([com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2135=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2305=com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment, var1995=r6, var1642=com.alibaba.fastjson2.JSONPath$Context, var3975=r0, var2135=java.lang.Object, var2871=r11, var637=$r1, var3613=$r12, var983=r3, var3521=$z0, var2469=com.alibaba.fastjson2.JSONException, var3977=$r4, var276=$r5, var2785=$r8, var2091=$r7, var2778=$r9, var3701=$r10}
; {com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment=var2305, r6=var1995, com.alibaba.fastjson2.JSONPath$Context=var1642, r0=var3975, java.lang.Object=var2135, r11=var2871, $r1=var637, $r12=var3613, r3=var983, $z0=var3521, com.alibaba.fastjson2.JSONException=var2469, $r4=var3977, $r5=var276, $r8=var2785, $r7=var2091, $r9=var2778, $r10=var3701}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$RangeIndexSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r11 := @parameter1: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r12 = r0.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object root>;	goto [?= r3 = $r12];	r3 = $r12;	$z0 = $r12 instanceof java.util.List;	if $z0 == 0 goto (branch);	if $r12 == null goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsupportedOperation ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 5