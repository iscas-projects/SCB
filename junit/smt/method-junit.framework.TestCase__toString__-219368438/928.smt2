(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var326 0)
(declare-sort var1945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/145457923 (var326) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1945) ClassObject)
(declare-fun cast-from-var326-to-var1945 (var326) var1945)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var326 var326)
(declare-const var319 var326) ; Statement: r1 := @this: junit.framework.TestCase 
(assert (not (= var319 null-var326)))
(define-const var1796 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1796)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1796!1 String)
(assert (= var1796!1 ""))
(assert true)
(define-const var3311 String (getName/145457923 var319)) ; Statement: $r2 = virtualinvoke r1.<junit.framework.TestCase: java.lang.String getName()>() 
(assert true)
(define-const var3130 String (append/672562846 var1796!1 var3311)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1796!2 String)
(assert (= var1796!2 (str.++ var1796!1 var3311)))
(assert true)
(define-const var28 String (append/672562846 var3130 "(")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3130!1 String)
(assert (= var3130!1 (str.++ var3130 "(")))
(assert true)
(define-const var128 ClassObject (getClass/1258963082 (cast-from-var326-to-var1945 var319))) ; Statement: $r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var968 String (getName/-1958580599 var128)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1015 String (append/672562846 var28 var968)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var28!1 String)
(assert (= var28!1 (str.++ var28 var968)))
(assert true)
(define-const var2955 String (append/672562846 var1015 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1015!1 String)
(assert (= var1015!1 (str.++ var1015 ")")))
(assert true)
(define-const var1868 String (toString/-2075883882 var2955)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/145457923=([junit.framework.TestCase], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var326-to-var1945=([junit.framework.TestCase], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var326=junit.framework.TestCase, var319=r1, var1796=$r0, var3311=$r2, var3130=$r3, var28=$r6, var1945=java.lang.Object, var128=$r4, var968=$r5, var1015=$r7, var2955=$r8, var1868=$r9}
; {junit.framework.TestCase=var326, r1=var319, $r0=var1796, $r2=var3311, $r3=var3130, $r6=var28, java.lang.Object=var1945, $r4=var128, $r5=var968, $r7=var1015, $r8=var2955, $r9=var1868}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: junit.framework.TestCase;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<junit.framework.TestCase: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1