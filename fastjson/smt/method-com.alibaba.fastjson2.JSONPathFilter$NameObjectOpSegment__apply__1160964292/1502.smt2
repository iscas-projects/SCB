(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1986 0)
(declare-sort var3616 0)
(declare-sort var3695 0)
(declare-sort var3831 0)
(declare-sort var735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operator/1001893736 (var1986) var3695)
(declare-fun var3831_requireNonNull/-961817614 (var3616) var3616)
(declare-fun cast-from-var3695-to-var3616 (var3695) var3616)
(declare-fun var735-init () var735)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3616) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var735 String) void)
(declare-const null-var1986 var1986)
(declare-const null-var3616 var3616)
(declare-const var3695-EQ var3695)
(declare-const var1649 var1986) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment 
(assert (not (= var1649 null-var1986)))
(declare-const var1058 var3616) ; Statement: r10 := @parameter0: java.lang.Object 
(assert (not (= var1058 null-var3616)))
(define-const var1506 var3695 (operator/1001893736 var1649)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator> 
(define-const var2630 var3616 (var3831_requireNonNull/-961817614 (cast-from-var3695-to-var3616 var1506))) ; Statement: $r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1) 
(define-const var1317 var3695 var3695-EQ) ; Statement: $r2 = <com.alibaba.fastjson2.JSONPathFilter$Operator: com.alibaba.fastjson2.JSONPathFilter$Operator EQ> 
 ; Statement: if $r3 != $r2 goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var2630 (cast-from-var3695-to-var3616 var1317)))) ; Cond: $r3 != $r2 
(define-const var1023 var735 var735-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3932 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3932)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3932!1 String)
(assert (= var3932!1 ""))
(assert true)
(define-const var2298 String (append/672562846 var3932!1 "not support operator : ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support operator : ") 
(declare-const var3932!2 String)
(assert (= var3932!2 (str.++ var3932!1 "not support operator : ")))
(define-const var2284 var3695 (operator/1001893736 var1649)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator> 
(assert true)
(define-const var3130 String (append/-1031950772 var2298 (cast-from-var3695-to-var3616 var2284))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var2298!1 String)
(assert (str.prefixof var2298 var2298!1))
(assert true)
(define-const var1478 String (toString/-2075883882 var3130)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var1023 var1478)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var1023!1 var735)
(declare-const var1478!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {operator/1001893736=([com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment], com.alibaba.fastjson2.JSONPathFilter$Operator), var3831_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var3695-to-var3616=([com.alibaba.fastjson2.JSONPathFilter$Operator], java.lang.Object), var735-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var1986=com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment, var1649=r0, var3616=java.lang.Object, var1058=r10, var3695=com.alibaba.fastjson2.JSONPathFilter$Operator, var1506=$r1, var3831=java.util.Objects, var2630=$r3, var1317=$r2, var735=com.alibaba.fastjson2.JSONException, var1023=$r4, var3932=$r5, var2298=$r7, var2284=$r6, var3130=$r8, var1478=$r9}
; {com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment=var1986, r0=var1649, java.lang.Object=var3616, r10=var1058, com.alibaba.fastjson2.JSONPathFilter$Operator=var3695, $r1=var1506, java.util.Objects=var3831, $r3=var2630, $r2=var1317, com.alibaba.fastjson2.JSONException=var735, $r4=var1023, $r5=var3932, $r7=var2298, $r6=var2284, $r8=var3130, $r9=var1478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment;	r10 := @parameter0: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator>;	$r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1);	$r2 = <com.alibaba.fastjson2.JSONPathFilter$Operator: com.alibaba.fastjson2.JSONPathFilter$Operator EQ>;	if $r3 != $r2 goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support operator : ");	$r6 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameObjectOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2