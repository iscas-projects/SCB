(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3829 0)
(declare-sort var3768 0)
(declare-sort var981 0)
(declare-sort var653 0)
(declare-sort var813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun operator/1293560644 (var3829) var981)
(declare-fun var653_requireNonNull/-961817614 (var3768) var3768)
(declare-fun cast-from-var981-to-var3768 (var981) var3768)
(declare-fun var813-init () var813)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3768) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var813 String) void)
(declare-const null-var3829 var3829)
(declare-const null-var3768 var3768)
(declare-const var981-EQ var981)
(declare-const var3375 var3829) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment 
(assert (not (= var3375 null-var3829)))
(declare-const var930 var3768) ; Statement: r10 := @parameter0: java.lang.Object 
(assert (not (= var930 null-var3768)))
(define-const var426 var981 (operator/1293560644 var3375)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator> 
(define-const var3586 var3768 (var653_requireNonNull/-961817614 (cast-from-var981-to-var3768 var426))) ; Statement: $r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1) 
(define-const var597 var981 var981-EQ) ; Statement: $r2 = <com.alibaba.fastjson2.JSONPathFilter$Operator: com.alibaba.fastjson2.JSONPathFilter$Operator EQ> 
 ; Statement: if $r3 != $r2 goto $r4 = new com.alibaba.fastjson2.JSONException 
(assert (not (= var3586 (cast-from-var981-to-var3768 var597)))) ; Cond: $r3 != $r2 
(define-const var301 var813 var813-init) ; Statement: $r4 = new com.alibaba.fastjson2.JSONException 
(define-const var3896 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3896)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3896!1 String)
(assert (= var3896!1 ""))
(assert true)
(define-const var52 String (append/672562846 var3896!1 "not support operator : ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support operator : ") 
(declare-const var3896!2 String)
(assert (= var3896!2 (str.++ var3896!1 "not support operator : ")))
(define-const var2288 var981 (operator/1293560644 var3375)) ; Statement: $r6 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator> 
(assert true)
(define-const var3175 String (append/-1031950772 var52 (cast-from-var981-to-var3768 var2288))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var52!1 String)
(assert (str.prefixof var52 var52!1))
(assert true)
(define-const var2146 String (toString/-2075883882 var3175)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var301 var2146)) ; Statement: specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9) 

(declare-const var301!1 var813)
(declare-const var2146!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {operator/1293560644=([com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment], com.alibaba.fastjson2.JSONPathFilter$Operator), var653_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-var981-to-var3768=([com.alibaba.fastjson2.JSONPathFilter$Operator], java.lang.Object), var813-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var3829=com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment, var3375=r0, var3768=java.lang.Object, var930=r10, var981=com.alibaba.fastjson2.JSONPathFilter$Operator, var426=$r1, var653=java.util.Objects, var3586=$r3, var597=$r2, var813=com.alibaba.fastjson2.JSONException, var301=$r4, var3896=$r5, var52=$r7, var2288=$r6, var3175=$r8, var2146=$r9}
; {com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment=var3829, r0=var3375, java.lang.Object=var3768, r10=var930, com.alibaba.fastjson2.JSONPathFilter$Operator=var981, $r1=var426, java.util.Objects=var653, $r3=var3586, $r2=var597, com.alibaba.fastjson2.JSONException=var813, $r4=var301, $r5=var3896, $r7=var52, $r6=var2288, $r8=var3175, $r9=var2146}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment;	r10 := @parameter0: java.lang.Object;	$r1 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator>;	$r3 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1);	$r2 = <com.alibaba.fastjson2.JSONPathFilter$Operator: com.alibaba.fastjson2.JSONPathFilter$Operator EQ>;	if $r3 != $r2 goto $r4 = new com.alibaba.fastjson2.JSONException;	$r4 = new com.alibaba.fastjson2.JSONException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("not support operator : ");	$r6 = r0.<com.alibaba.fastjson2.JSONPathFilter$NameArrayOpSegment: com.alibaba.fastjson2.JSONPathFilter$Operator operator>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2