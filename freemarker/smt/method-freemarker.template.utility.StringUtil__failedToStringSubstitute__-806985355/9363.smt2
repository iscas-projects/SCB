(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2247 0)
(declare-sort var2668 0)
(declare-sort var513 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-1112415476 (var2668) String)
(declare-fun var513_getShortClassNameOfObject/-1665341662 (var2247) String)
(declare-fun cast-from-var2668-to-var2247 (var2668) var2247)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2247 var2247)
(declare-const null-var2668 var2668)
(declare-const var1237 var2247) ; Statement: r2 := @parameter0: java.lang.Object 
(assert (not (= var1237 null-var2247)))
(declare-const var612 var2668) ; Statement: r0 := @parameter1: java.lang.Throwable 
(assert (not (= var612 null-var2668)))
(assert true) ; Non Conditional
(assert true)
(define-const var1063 String (toString/-1112415476 var612)) ; Statement: r11 = virtualinvoke r0.<java.lang.Throwable: java.lang.String toString()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2693 var2668) ; Statement: $r10 := @caughtexception 
(assert (not (= var2693 null-var2668)))
(define-const var1063!1 String (var513_getShortClassNameOfObject/-1665341662 (cast-from-var2668-to-var2247 var612))) ; Statement: r11 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0) 
(assert true) ; Non Conditional
(define-const var3668 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3668)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3668!1 String)
(assert (= var3668!1 ""))
(assert true)
(define-const var3819 String (append/672562846 var3668!1 "[")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3668!2 String)
(assert (= var3668!2 (str.++ var3668!1 "[")))
(define-const var1994 String (var513_getShortClassNameOfObject/-1665341662 var1237)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r2) 
(assert true)
(define-const var496 String (append/672562846 var3819 var1994)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3819!1 String)
(assert (= var3819!1 (str.++ var3819 var1994)))
(assert true)
(define-const var953 String (append/672562846 var496 ".toString() failed: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".toString() failed: ") 
(declare-const var496!1 String)
(assert (= var496!1 (str.++ var496 ".toString() failed: ")))
(assert true)
(define-const var775 String (append/672562846 var953 var1063!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var953!1 String)
(assert (= var953!1 (str.++ var953 var1063!1)))
(assert true)
(define-const var2420 String (append/672562846 var775 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var775!1 String)
(assert (= var775!1 (str.++ var775 "]")))
(assert true)
(define-const var509 String (toString/-2075883882 var2420)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-1112415476=([java.lang.Throwable], java.lang.String), var513_getShortClassNameOfObject/-1665341662=([java.lang.Object], java.lang.String), cast-from-var2668-to-var2247=([java.lang.Throwable], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2247=java.lang.Object, var1237=r2, var2668=java.lang.Throwable, var612=r0, var1063=r11, var2693=$r10, var513=freemarker.template.utility.ClassUtil, var3668=$r1, var3819=$r4, var1994=$r3, var496=$r5, var953=$r6, var775=$r7, var2420=$r8, var509=$r9}
; {java.lang.Object=var2247, r2=var1237, java.lang.Throwable=var2668, r0=var612, r11=var1063, $r10=var2693, freemarker.template.utility.ClassUtil=var513, $r1=var3668, $r4=var3819, $r3=var1994, $r5=var496, $r6=var953, $r7=var775, $r8=var2420, $r9=var509}
;seq <java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Throwable;	r11 = virtualinvoke r0.<java.lang.Throwable: java.lang.String toString()>();	$r10 := @caughtexception;	r11 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = staticinvoke <freemarker.template.utility.ClassUtil: java.lang.String getShortClassNameOfObject(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".toString() failed: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 4