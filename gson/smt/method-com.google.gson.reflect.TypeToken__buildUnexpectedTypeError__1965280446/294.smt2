(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2542 0)
(declare-sort var2690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var2542) ClassObject)
(declare-fun cast-from-ClassObject-to-var2542 (ClassObject) var2542)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun toString/-522406933 (var2542) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var2690-init () var2690)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var2690 var2542) void)
(declare-fun cast-from-String-to-var2542 (String) var2542)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var2555 ClassObject) ; Statement: r2 := @parameter0: java.lang.reflect.Type 
(assert (not (= var2555 null-ClassObject)))
(declare-const var3057 (Array Int ClassObject)) ; Statement: r1 := @parameter1: java.lang.Class[] 
(assert (not (= var3057 null-__Array__Int__ClassObject__)))
(define-const var3 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3 "Unexpected type. Expected one of: ")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unexpected type. Expected one of: ") 
(declare-const var3!1 String)
(assert (= var3!1 "Unexpected type. Expected one of: "))
(define-const var2024 Int (getLength-Arr-ClassObject-1 var3057)) ; Statement: i0 = lengthof r1 
(define-const var2004 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ") 
(assert (>= var2004 var2024)) ; Cond: i1 >= i0 
(assert true)
(define-const var3325 String (append/672562846 var3!1 "but got: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ") 
(declare-const var3!2 String)
(assert (= var3!2 (str.++ var3!1 "but got: ")))
(assert true)
(define-const var2867 ClassObject (getClass/1258963082 (cast-from-ClassObject-to-var2542 var2555))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1316 String (getName/-1958580599 var2867)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var311 String (append/672562846 var3325 var1316)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3325!1 String)
(assert (= var3325!1 (str.++ var3325 var1316)))
(assert true)
(define-const var328 String (append/672562846 var311 ", for type token: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", for type token: ") 
(declare-const var311!1 String)
(assert (= var311!1 (str.++ var311 ", for type token: ")))
(assert true)
(define-const var680 String (toString/-522406933 (cast-from-ClassObject-to-var2542 var2555))) ; Statement: $r7 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1220 String (append/672562846 var328 var680)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var328!1 String)
(assert (= var328!1 (str.++ var328 var680)))
(assert true)
;(assert (append/-1166366385 var1220 46)) ; Statement: virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1220!1 String)
(assert (str.prefixof var1220 var1220!1))
(define-const var861 var2690 var2690-init) ; Statement: $r10 = new java.lang.AssertionError 
(assert true)
(define-const var2984 String (toString/-2075883882 var3!2)) ; Statement: $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var861 (cast-from-String-to-var2542 var2984))) ; Statement: specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r11) 

(declare-const var861!1 var2690)
(declare-const var2984!1 String)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-ClassObject-to-var2542=([java.lang.reflect.Type], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-522406933=([java.lang.Object], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var2690-init=([], java.lang.AssertionError), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2542=([java.lang.String], java.lang.Object)}
; {var2555=r2, var3057=r1, var3=$r0, var2024=i0, var2004=i1, var3325=$r5, var2542=java.lang.Object, var2867=$r3, var1316=$r4, var311=$r6, var328=$r8, var680=$r7, var1220=$r9, var2690=java.lang.AssertionError, var861=$r10, var2984=$r11}
; {r2=var2555, r1=var3057, $r0=var3, i0=var2024, i1=var2004, $r5=var3325, java.lang.Object=var2542, $r3=var2867, $r4=var1316, $r6=var311, $r8=var328, $r7=var680, $r9=var1220, java.lang.AssertionError=var2690, $r10=var861, $r11=var2984}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.reflect.Type;	r1 := @parameter1: java.lang.Class[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("Unexpected type. Expected one of: ");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ");	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("but got: ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", for type token: ");	$r7 = virtualinvoke r2.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r10 = new java.lang.AssertionError;	$r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.AssertionError: void <init>(java.lang.Object)>($r11);	return $r10
;block_num 3