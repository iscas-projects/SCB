(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var189 0)
(declare-sort var3930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/121817315 (var189) var3930)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun returnState/121817315 (var189) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var189 var189)
(declare-const null-var3930 var3930)
(declare-const var2372 var189) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.SingletonPredictionContext 
(assert (not (= var2372 null-var189)))
(define-const var1639 var3930 (parent/121817315 var2372)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.PredictionContext parent> 
 ; Statement: if $r1 == null goto $r10 = "" 
(assert (= var1639 null-var3930)) ; Cond: $r1 == null 
(define-const var1385 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2157 Int (length/-134980193 var1385)) ; Statement: $i0 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var2157 0))) ; Cond: $i0 != 0 
(define-const var280 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var280)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var280!1 String)
(assert (= var280!1 ""))
(define-const var1933 Int (returnState/121817315 var2372)) ; Statement: $i1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: int returnState> 
(define-const var471 String (String_valueOf/1240665136 var1933)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
(define-const var2473 String (append/672562846 var280!1 var471)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var280!2 String)
(assert (= var280!2 (str.++ var280!1 var471)))
(assert true)
(define-const var2263 String (append/672562846 var2473 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2473!1 String)
(assert (= var2473!1 (str.++ var2473 " ")))
(assert true)
(define-const var49 String (append/672562846 var2263 var1385)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2263!1 String)
(assert (= var2263!1 (str.++ var2263 var1385)))
(assert true)
(define-const var165 String (toString/-2075883882 var49)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/121817315=([org.antlr.v4.runtime.atn.SingletonPredictionContext], org.antlr.v4.runtime.atn.PredictionContext), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), returnState/121817315=([org.antlr.v4.runtime.atn.SingletonPredictionContext], int), String_valueOf/1240665136=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var189=org.antlr.v4.runtime.atn.SingletonPredictionContext, var2372=r0, var3930=org.antlr.v4.runtime.atn.PredictionContext, var1639=$r1, var1385=$r10, var2157=$i0, var280=$r2, var1933=$i1, var471=$r3, var2473=$r4, var2263=$r5, var49=$r6, var165=$r7}
; {org.antlr.v4.runtime.atn.SingletonPredictionContext=var189, r0=var2372, org.antlr.v4.runtime.atn.PredictionContext=var3930, $r1=var1639, $r10=var1385, $i0=var2157, $r2=var280, $i1=var1933, $r3=var471, $r4=var2473, $r5=var2263, $r6=var49, $r7=var165}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.SingletonPredictionContext;	$r1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.PredictionContext parent>;	if $r1 == null goto $r10 = "";	$r10 = "";	$i0 = virtualinvoke $r10.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$i1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: int returnState>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4