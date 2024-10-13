(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var276 0)
(declare-sort var1269 0)
(declare-sort var1001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConstructors/-1160885883 (ClassObject) (Array Int var1269))
(declare-fun getLength-Arr-var1269-1 ((Array Int var1269)) Int)
(declare-fun var1001-init () var1001)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1001 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var276 var276)
(declare-const var2653 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2653 null-ClassObject)))
(declare-const var2825 var276) ; Statement: r10 := @parameter1: java.util.List 
(assert (not (= var2825 null-var276)))
(assert true)
(define-const var2442 (Array Int var1269) (getConstructors/-1160885883 var2653)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>() 
(define-const var2530 Int (getLength-Arr-var1269-1 var2442)) ; Statement: i0 = lengthof r1 
(define-const var2754 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = new java.lang.IllegalArgumentException 
(assert (>= var2754 var2530)) ; Cond: i4 >= i0 
(define-const var3664 var1001 var1001-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1819 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1819)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1819!1 String)
(assert (= var1819!1 ""))
(assert true)
(define-const var940 String (append/672562846 var1819!1 "Could not locate appropriate constructor on class : ")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate appropriate constructor on class : ") 
(declare-const var1819!2 String)
(assert (= var1819!2 (str.++ var1819!1 "Could not locate appropriate constructor on class : ")))
(assert true)
(define-const var715 String (getName/-1958580599 var2653)) ; Statement: $r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2977 String (append/672562846 var940 var715)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var940!1 String)
(assert (= var940!1 (str.++ var940 var715)))
(assert true)
(define-const var846 String (toString/-2075883882 var2977)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3664 var846)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7) 

(declare-const var3664!1 var1001)
(declare-const var846!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getConstructors/-1160885883=([java.lang.Class], java.lang.reflect.Constructor[]), getLength-Arr-var1269-1=([java.lang.reflect.Constructor[]], int), var1001-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2653=r0, var276=java.util.List, var2825=r10, var1269=java.lang.reflect.Constructor, var2442=r1, var2530=i0, var2754=i4, var1001=java.lang.IllegalArgumentException, var3664=$r2, var1819=$r3, var940=$r5, var715=$r4, var2977=$r6, var846=$r7}
; {r0=var2653, java.util.List=var276, r10=var2825, java.lang.reflect.Constructor=var1269, r1=var2442, i0=var2530, i4=var2754, java.lang.IllegalArgumentException=var1001, $r2=var3664, $r3=var1819, $r5=var940, $r4=var715, $r6=var2977, $r7=var846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r10 := @parameter1: java.util.List;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>();	i0 = lengthof r1;	i4 = 0;	if i4 >= i0 goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not locate appropriate constructor on class : ");	$r4 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r7);	throw $r2
;block_num 3