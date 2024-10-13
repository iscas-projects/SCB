(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2295 0)
(declare-sort var1781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2295_currentThread/-1037784612 () var2295)
(declare-fun getStackTrace/-602745475 (var2295) (Array Int var1781))
(declare-fun getMethodName/1120671905 (var1781) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClassName/1384636042 (var1781) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const var1095 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1095 null-Bool)))
(define-const var3012 var2295 var2295_currentThread/-1037784612) ; Statement: $r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>() 
(assert true)
(define-const var3999 (Array Int var1781) (getStackTrace/-602745475 var3012)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>() 
(define-const var438 var1781 (select var3999 2)) ; Statement: r2 = $r1[2] 
(assert true)
(define-const var974 String (getMethodName/1120671905 var438)) ; Statement: r3 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getMethodName()>() 
 ; Statement: if 0 != z0 goto $r4 = new java.lang.StringBuilder 
(assert (not (= 0 (ite var1095 1 0)))) ; Cond: 0 != z0 
(define-const var3336 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3336)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3336!1 String)
(assert (= var3336!1 ""))
(assert true)
(define-const var3024 String (getClassName/1384636042 var438)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getClassName()>() 
(assert true)
(define-const var3750 String (append/672562846 var3336!1 var3024)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3336!2 String)
(assert (= var3336!2 (str.++ var3336!1 var3024)))
(assert true)
(define-const var3637 String (append/672562846 var3750 ".")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var3750!1 String)
(assert (= var3750!1 (str.++ var3750 ".")))
(assert true)
(define-const var2010 String (append/672562846 var3637 var974)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3637!1 String)
(assert (= var3637!1 (str.++ var3637 var974)))
(assert true)
(define-const var2642 String (toString/-2075883882 var2010)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2295_currentThread/-1037784612=([], java.lang.Thread), getStackTrace/-602745475=([java.lang.Thread], java.lang.StackTraceElement[]), getMethodName/1120671905=([java.lang.StackTraceElement], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClassName/1384636042=([java.lang.StackTraceElement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1095=z0, var2295=java.lang.Thread, var3012=$r0, var1781=java.lang.StackTraceElement, var3999=$r1, var438=r2, var974=r3, var3336=$r4, var3024=$r5, var3750=$r6, var3637=$r7, var2010=$r8, var2642=$r9}
; {z0=var1095, java.lang.Thread=var2295, $r0=var3012, java.lang.StackTraceElement=var1781, $r1=var3999, r2=var438, r3=var974, $r4=var3336, $r5=var3024, $r6=var3750, $r7=var3637, $r8=var2010, $r9=var2642}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts z0 := @parameter0: boolean;	$r0 = staticinvoke <java.lang.Thread: java.lang.Thread currentThread()>();	$r1 = virtualinvoke $r0.<java.lang.Thread: java.lang.StackTraceElement[] getStackTrace()>();	r2 = $r1[2];	r3 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getMethodName()>();	if 0 != z0 goto $r4 = new java.lang.StringBuilder;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getClassName()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2