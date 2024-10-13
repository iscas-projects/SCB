(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3439 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getDeclaringClass/729915409 (var3439) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getParameterTypes/938597008 (var3439) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3439 var3439)
(declare-const var551 var3439) ; Statement: r1 := @parameter0: java.lang.reflect.Constructor 
(assert (not (= var551 null-var3439)))
(define-const var2116 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1863 ClassObject (getDeclaringClass/729915409 var551)) ; Statement: $r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2890 String (getName/-1958580599 var1863)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var2116 var2890)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var2116!1 String)
(assert (= var2116!1 var2890))
(assert true)
(define-const var2039 String (append/-1166366385 var2116!1 35)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var2116!2 String)
(assert (str.prefixof var2116!1 var2116!2))
(assert true)
(define-const var203 ClassObject (getDeclaringClass/729915409 var551)) ; Statement: $r4 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var3760 String (getSimpleName/-390194377 var203)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1895 String (append/672562846 var2039 var3760)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2039!1 String)
(assert (= var2039!1 (str.++ var2039 var3760)))
(assert true)
(define-const var313 String (append/-1166366385 var1895 40)) ; Statement: r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var1895!1 String)
(assert (str.prefixof var1895 var1895!1))
(assert true)
(define-const var2527 (Array Int ClassObject) (getParameterTypes/938597008 var551)) ; Statement: r9 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>() 
(define-const var3502 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var1231 Int (getLength-Arr-ClassObject-1 var2527)) ; Statement: $i0 = lengthof r9 
 ; Statement: if i1 >= $i0 goto $r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var3502 var1231)) ; Cond: i1 >= $i0 
(assert true)
(define-const var1348 String (append/-1166366385 var313 41)) ; Statement: $r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var313!1 String)
(assert (str.prefixof var313 var313!1))
(assert true)
(define-const var3056 String (toString/-2075883882 var1348)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getDeclaringClass/729915409=([java.lang.reflect.Constructor], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getParameterTypes/938597008=([java.lang.reflect.Constructor], java.lang.Class[]), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3439=java.lang.reflect.Constructor, var551=r1, var2116=$r0, var1863=$r2, var2890=$r3, var2039=$r6, var203=$r4, var3760=$r5, var1895=$r7, var313=r8, var2527=r9, var3502=i1, var1231=$i0, var1348=$r10, var3056=$r11}
; {java.lang.reflect.Constructor=var3439, r1=var551, $r0=var2116, $r2=var1863, $r3=var2890, $r6=var2039, $r4=var203, $r5=var3760, $r7=var1895, r8=var313, r9=var2527, i1=var3502, $i0=var1231, $r10=var1348, $r11=var3056}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.Constructor;	$r0 = new java.lang.StringBuilder;	$r2 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>();	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r4 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class getDeclaringClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getSimpleName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	r9 = virtualinvoke r1.<java.lang.reflect.Constructor: java.lang.Class[] getParameterTypes()>();	i1 = 0;	$i0 = lengthof r9;	if i1 >= $i0 goto $r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 3