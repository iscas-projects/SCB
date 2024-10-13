(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getReturnType/-1494237887 (var123) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1227988463 (var123) String)
(declare-fun getParameterTypes/827748249 (var123) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var123 var123)
(declare-const var3487 var123) ; Statement: r1 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3487 null-var123)))
(define-const var174 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var174)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var174!1 String)
(assert (= var174!1 ""))
(assert true)
(define-const var3277 ClassObject (getReturnType/-1494237887 var3487)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert true)
(define-const var2207 String (getName/-1958580599 var3277)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var86 String (append/672562846 var174!1 var2207)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var174!2 String)
(assert (= var174!2 (str.++ var174!1 var2207)))
(assert true)
;(assert (append/-1166366385 var86 35)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var86!1 String)
(assert (str.prefixof var86 var86!1))
(assert true)
(define-const var3462 String (getName/1227988463 var3487)) ; Statement: $r5 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var174!2 var3462)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var174!3 String)
(assert (= var174!3 (str.++ var174!2 var3462)))
(assert true)
(define-const var2247 (Array Int ClassObject) (getParameterTypes/827748249 var3487)) ; Statement: r6 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var3492 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1001 Int (getLength-Arr-ClassObject-1 var2247)) ; Statement: $i0 = lengthof r6 
 ; Statement: if i1 >= $i0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3492 var1001)) ; Cond: i1 >= $i0 
(assert true)
(define-const var3348 String (toString/-2075883882 var174!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var123=java.lang.reflect.Method, var3487=r1, var174=$r0, var3277=$r2, var2207=$r3, var86=$r4, var3462=$r5, var2247=r6, var3492=i1, var1001=$i0, var3348=$r7}
; {java.lang.reflect.Method=var123, r1=var3487, $r0=var174, $r2=var3277, $r3=var2207, $r4=var86, $r5=var3462, r6=var2247, i1=var3492, $i0=var1001, $r7=var3348}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.Method;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r5 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	r6 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	i1 = 0;	$i0 = lengthof r6;	if i1 >= $i0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3