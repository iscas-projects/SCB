(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3709 0)
(declare-sort var1735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getReturnType/-1494237887 (var1735) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1227988463 (var1735) String)
(declare-fun getParameterTypes/827748249 (var1735) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3709 var3709)
(declare-const null-var1735 var1735)
(declare-const var1450 var3709) ; Statement: r11 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var1450 null-var3709)))
(declare-const var1700 var1735) ; Statement: r1 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1700 null-var1735)))
(define-const var1207 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1207)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1207!1 String)
(assert (= var1207!1 ""))
(assert true)
(define-const var8 ClassObject (getReturnType/-1494237887 var1700)) ; Statement: r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>() 
(assert true)
(define-const var2144 String (getName/-1958580599 var8)) ; Statement: $r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var727 String (append/672562846 var1207!1 var2144)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1207!2 String)
(assert (= var1207!2 (str.++ var1207!1 var2144)))
(assert true)
;(assert (append/-1166366385 var727 35)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var727!1 String)
(assert (str.prefixof var727 var727!1))
(assert true)
(define-const var3585 String (getName/1227988463 var1700)) ; Statement: $r5 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
;(assert (append/672562846 var1207!2 var3585)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1207!3 String)
(assert (= var1207!3 (str.++ var1207!2 var3585)))
(assert true)
(define-const var3107 (Array Int ClassObject) (getParameterTypes/827748249 var1700)) ; Statement: r6 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>() 
(define-const var2965 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3905 Int (getLength-Arr-ClassObject-1 var3107)) ; Statement: $i0 = lengthof r6 
 ; Statement: if i1 >= $i0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2965 var3905)) ; Cond: i1 >= $i0 
(assert true)
(define-const var2444 String (toString/-2075883882 var1207!3)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getReturnType/-1494237887=([java.lang.reflect.Method], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), getParameterTypes/827748249=([java.lang.reflect.Method], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3709=org.apache.ibatis.reflection.Reflector, var1450=r11, var1735=java.lang.reflect.Method, var1700=r1, var1207=$r0, var8=r2, var2144=$r3, var727=$r4, var3585=$r5, var3107=r6, var2965=i1, var3905=$i0, var2444=$r7}
; {org.apache.ibatis.reflection.Reflector=var3709, r11=var1450, java.lang.reflect.Method=var1735, r1=var1700, $r0=var1207, r2=var8, $r3=var2144, $r4=var727, $r5=var3585, r6=var3107, i1=var2965, $i0=var3905, $r7=var2444}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.reflect.Method;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class getReturnType()>();	$r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r5 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.String getName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	r6 = virtualinvoke r1.<java.lang.reflect.Method: java.lang.Class[] getParameterTypes()>();	i1 = 0;	$i0 = lengthof r6;	if i1 >= $i0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3