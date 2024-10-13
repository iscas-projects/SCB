(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var272 0)
(declare-sort var707 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var272) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var272 var272)
(declare-const null-String String)
(declare-const var1917 var272) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1917 null-var272)))
(declare-const var808 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var808 null-String)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var1917 null-var272))) ; Cond: r0 != null 
(assert true)
(define-const var1377 ClassObject (getClass/1258963082 var1917)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3873 String (getName/-1958580599 var1377)) ; Statement: $r9 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true) ; Non Conditional
(define-const var3939 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3939)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3939!1 String)
(assert (= var3939!1 ""))
(assert true)
(define-const var632 String (append/672562846 var3939!1 var3873)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3939!2 String)
(assert (= var3939!2 (str.++ var3939!1 var3873)))
(assert true)
(define-const var3442 String (append/672562846 var632 "<")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var632!1 String)
(assert (= var632!1 (str.++ var632 "<")))
(assert true)
(define-const var191 String (append/672562846 var3442 var808)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3442!1 String)
(assert (= var3442!1 (str.++ var3442 var808)))
(assert true)
(define-const var827 String (append/672562846 var191 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var191!1 String)
(assert (= var191!1 (str.++ var191 ">")))
(assert true)
(define-const var280 String (toString/-2075883882 var827)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var272=java.lang.Object, var1917=r0, var808=r4, var707=null_type, var1377=$r1, var3873=$r9, var3939=$r2, var632=$r3, var3442=$r5, var191=$r6, var827=$r7, var280=$r8}
; {java.lang.Object=var272, r0=var1917, r4=var808, null_type=var707, $r1=var1377, $r9=var3873, $r2=var3939, $r3=var632, $r5=var3442, $r6=var191, $r7=var827, $r8=var280}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r4 := @parameter1: java.lang.String;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r9 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3