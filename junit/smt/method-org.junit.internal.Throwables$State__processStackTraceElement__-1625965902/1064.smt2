(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1211 0)
(declare-sort var3800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClassName/1384636042 (var3800) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMethodName/1120671905 (var3800) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun processLine/666996297 (var1211 String) var1211)
(declare-const null-var1211 var1211)
(declare-const null-var3800 var3800)
(declare-const var2560 var1211) ; Statement: r0 := @this: org.junit.internal.Throwables$State 
(assert (not (= var2560 null-var1211)))
(declare-const var3919 var3800) ; Statement: r2 := @parameter0: java.lang.StackTraceElement 
(assert (not (= var3919 null-var3800)))
(define-const var3820 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3820)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3820!1 String)
(assert (= var3820!1 ""))
(assert true)
(define-const var1448 String (getClassName/1384636042 var3919)) ; Statement: $r3 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getClassName()>() 
(assert true)
(define-const var1486 String (append/672562846 var3820!1 var1448)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3820!2 String)
(assert (= var3820!2 (str.++ var3820!1 var1448)))
(assert true)
(define-const var1130 String (append/672562846 var1486 ".")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1486!1 String)
(assert (= var1486!1 (str.++ var1486 ".")))
(assert true)
(define-const var3703 String (getMethodName/1120671905 var3919)) ; Statement: $r5 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getMethodName()>() 
(assert true)
(define-const var794 String (append/672562846 var1130 var3703)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1130!1 String)
(assert (= var1130!1 (str.++ var1130 var3703)))
(assert true)
(define-const var1220 String (append/672562846 var794 "()")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var794!1 String)
(assert (= var794!1 (str.++ var794 "()")))
(assert true)
(define-const var5 String (toString/-2075883882 var1220)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2899 var1211 (processLine/666996297 var2560 var5)) ; Statement: $r10 = virtualinvoke r0.<org.junit.internal.Throwables$State: org.junit.internal.Throwables$State processLine(java.lang.String)>($r9) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClassName/1384636042=([java.lang.StackTraceElement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMethodName/1120671905=([java.lang.StackTraceElement], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), processLine/666996297=([org.junit.internal.Throwables$State, java.lang.String], org.junit.internal.Throwables$State)}
; {var1211=org.junit.internal.Throwables$State, var2560=r0, var3800=java.lang.StackTraceElement, var3919=r2, var3820=$r1, var1448=$r3, var1486=$r4, var1130=$r6, var3703=$r5, var794=$r7, var1220=$r8, var5=$r9, var2899=$r10}
; {org.junit.internal.Throwables$State=var1211, r0=var2560, java.lang.StackTraceElement=var3800, r2=var3919, $r1=var3820, $r3=var1448, $r4=var1486, $r6=var1130, $r5=var3703, $r7=var794, $r8=var1220, $r9=var5, $r10=var2899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.junit.internal.Throwables$State;	r2 := @parameter0: java.lang.StackTraceElement;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getClassName()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke r2.<java.lang.StackTraceElement: java.lang.String getMethodName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = virtualinvoke r0.<org.junit.internal.Throwables$State: org.junit.internal.Throwables$State processLine(java.lang.String)>($r9);	return $r10
;block_num 1