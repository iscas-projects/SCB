(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3778 0)
(declare-sort var2582 0)
(declare-sort var2703 0)
(declare-sort var3599 0)
(declare-sort var3203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConstructors/-1160885883 (ClassObject) (Array Int var2703))
(declare-fun getLength-Arr-var2703-1 ((Array Int var2703)) Int)
(declare-fun var3599-init () var3599)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1101485922 (var3599 String) void)
(declare-fun var2582_add/328494887 (var2582 var3203) Bool)
(declare-fun cast-from-var3599-to-var3203 (var3599) var3203)
(declare-const null-var3778 var3778)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2582 var2582)
(declare-const var1590 var3778) ; Statement: r20 := @this: org.junit.experimental.theories.Theories 
(assert (not (= var1590 null-var3778)))
(declare-const var2065 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2065 null-ClassObject)))
(declare-const var3172 var2582) ; Statement: r5 := @parameter1: java.util.List 
(assert (not (= var3172 null-var2582)))
(assert true)
(define-const var3879 (Array Int var2703) (getConstructors/-1160885883 var2065)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>() 
(define-const var22 Int (getLength-Arr-var2703-1 var3879)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 == 1 goto $r2 = r1[0] 
(assert (not (= var22 1))) ; Negate: Cond: $i0 == 1  
(define-const var3227 var3599 var3599-init) ; Statement: $r13 = new java.lang.Error 
(define-const var602 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var602)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var602!1 String)
(assert (= var602!1 ""))
(assert true)
(define-const var2701 String (append/672562846 var602!1 "ParameterSupplier ")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ParameterSupplier ") 
(declare-const var602!2 String)
(assert (= var602!2 (str.++ var602!1 "ParameterSupplier ")))
(assert true)
(define-const var1899 String (getName/-1958580599 var2065)) ; Statement: $r15 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2050 String (append/672562846 var2701 var1899)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15) 
(declare-const var2701!1 String)
(assert (= var2701!1 (str.++ var2701 var1899)))
(assert true)
(define-const var3956 String (append/672562846 var2050 " must have only one constructor (either empty or taking only a TestClass)")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must have only one constructor (either empty or taking only a TestClass)") 
(declare-const var2050!1 String)
(assert (= var2050!1 (str.++ var2050 " must have only one constructor (either empty or taking only a TestClass)")))
(assert true)
(define-const var2013 String (toString/-2075883882 var3956)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1101485922 var3227 var2013)) ; Statement: specialinvoke $r13.<java.lang.Error: void <init>(java.lang.String)>($r19) 

(declare-const var3227!1 var3599)
(declare-const var2013!1 String)
;(assert (var2582_add/328494887 var3172 (cast-from-var3599-to-var3203 var3227!1))) ; Statement: interfaceinvoke r5.<java.util.List: boolean add(java.lang.Object)>($r13) 

(declare-const var3172!1 var2582)
(declare-const var3227!2 var3599)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getConstructors/-1160885883=([java.lang.Class], java.lang.reflect.Constructor[]), getLength-Arr-var2703-1=([java.lang.reflect.Constructor[]], int), var3599-init=([], java.lang.Error), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1101485922=([java.lang.Error, java.lang.String], void), var2582_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var3599-to-var3203=([java.lang.Error], java.lang.Object)}
; {var3778=org.junit.experimental.theories.Theories, var1590=r20, var2065=r0, var2582=java.util.List, var3172=r5, var2703=java.lang.reflect.Constructor, var3879=r1, var22=$i0, var3599=java.lang.Error, var3227=$r13, var602=$r14, var2701=$r16, var1899=$r15, var2050=$r17, var3956=$r18, var2013=$r19, var3203=java.lang.Object}
; {org.junit.experimental.theories.Theories=var3778, r20=var1590, r0=var2065, java.util.List=var2582, r5=var3172, java.lang.reflect.Constructor=var2703, r1=var3879, $i0=var22, java.lang.Error=var3599, $r13=var3227, $r14=var602, $r16=var2701, $r15=var1899, $r17=var2050, $r18=var3956, $r19=var2013, java.lang.Object=var3203}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r20 := @this: org.junit.experimental.theories.Theories;	r0 := @parameter0: java.lang.Class;	r5 := @parameter1: java.util.List;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.reflect.Constructor[] getConstructors()>();	$i0 = lengthof r1;	if $i0 == 1 goto $r2 = r1[0];	$r13 = new java.lang.Error;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ParameterSupplier ");	$r15 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must have only one constructor (either empty or taking only a TestClass)");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.lang.Error: void <init>(java.lang.String)>($r19);	interfaceinvoke r5.<java.util.List: boolean add(java.lang.Object)>($r13);	goto [?= return];	return
;block_num 3