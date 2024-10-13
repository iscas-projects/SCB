(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1075 0)
(declare-sort var1981 0)
(declare-sort var2077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/121817315 (var1075) var1981)
(declare-fun toString/-522406933 (var2077) String)
(declare-fun cast-from-var1981-to-var2077 (var1981) var2077)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun returnState/121817315 (var1075) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1075 var1075)
(declare-const null-var1981 var1981)
(declare-const var2115 var1075) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.SingletonPredictionContext 
(assert (not (= var2115 null-var1075)))
(define-const var1117 var1981 (parent/121817315 var2115)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.PredictionContext parent> 
 ; Statement: if $r1 == null goto $r10 = "" 
(assert (not (= var1117 null-var1981))) ; Negate: Cond: $r1 == null  
(define-const var1486 var1981 (parent/121817315 var2115)) ; Statement: $r9 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.PredictionContext parent> 
(assert true)
(define-const var449 String (toString/-522406933 (cast-from-var1981-to-var2077 var1486))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
 ; Statement: goto [?= $i0 = virtualinvoke $r10.<java.lang.String: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var592 Int (length/-134980193 var449)) ; Statement: $i0 = virtualinvoke $r10.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var592 0))) ; Cond: $i0 != 0 
(define-const var370 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var370)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var370!1 String)
(assert (= var370!1 ""))
(define-const var263 Int (returnState/121817315 var2115)) ; Statement: $i1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: int returnState> 
(define-const var1297 String (String_valueOf/1240665136 var263)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1) 
(assert true)
(define-const var3174 String (append/672562846 var370!1 var1297)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var370!2 String)
(assert (= var370!2 (str.++ var370!1 var1297)))
(assert true)
(define-const var1999 String (append/672562846 var3174 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3174!1 String)
(assert (= var3174!1 (str.++ var3174 " ")))
(assert true)
(define-const var953 String (append/672562846 var1999 var449)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1999!1 String)
(assert (= var1999!1 (str.++ var1999 var449)))
(assert true)
(define-const var1975 String (toString/-2075883882 var953)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/121817315=([org.antlr.v4.runtime.atn.SingletonPredictionContext], org.antlr.v4.runtime.atn.PredictionContext), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var1981-to-var2077=([org.antlr.v4.runtime.atn.PredictionContext], java.lang.Object), length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), returnState/121817315=([org.antlr.v4.runtime.atn.SingletonPredictionContext], int), String_valueOf/1240665136=([int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1075=org.antlr.v4.runtime.atn.SingletonPredictionContext, var2115=r0, var1981=org.antlr.v4.runtime.atn.PredictionContext, var1117=$r1, var1486=$r9, var2077=java.lang.Object, var449=$r10, var592=$i0, var370=$r2, var263=$i1, var1297=$r3, var3174=$r4, var1999=$r5, var953=$r6, var1975=$r7}
; {org.antlr.v4.runtime.atn.SingletonPredictionContext=var1075, r0=var2115, org.antlr.v4.runtime.atn.PredictionContext=var1981, $r1=var1117, $r9=var1486, java.lang.Object=var2077, $r10=var449, $i0=var592, $r2=var370, $i1=var263, $r3=var1297, $r4=var3174, $r5=var1999, $r6=var953, $r7=var1975}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.SingletonPredictionContext;	$r1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.PredictionContext parent>;	if $r1 == null goto $r10 = "";	$r9 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: org.antlr.v4.runtime.atn.PredictionContext parent>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	goto [?= $i0 = virtualinvoke $r10.<java.lang.String: int length()>()];	$i0 = virtualinvoke $r10.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$i1 = r0.<org.antlr.v4.runtime.atn.SingletonPredictionContext: int returnState>;	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i1);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 4