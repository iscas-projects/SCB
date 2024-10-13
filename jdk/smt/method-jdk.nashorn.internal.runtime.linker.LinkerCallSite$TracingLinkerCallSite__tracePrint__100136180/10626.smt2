(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1013 0)
(declare-sort var3206 0)
(declare-sort var2027 0)
(declare-sort var2029 0)
(declare-sort var3884 0)
(declare-sort var1491 0)
(declare-sort var845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3884_id/-2071121520 (var2029) String)
(declare-fun cast-from-var1013-to-var2029 (var1013) var2029)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-2007916749 (var3206 String) void)
(declare-fun getDescriptor/-2067960571 (var845) var1491)
(declare-fun cast-from-var1013-to-var845 (var1013) var845)
(declare-fun var1491_getName/1879150825 (var1491) String)
(declare-fun getLength-Arr-var2029-1 ((Array Int var2029)) Int)
(declare-fun println/348898060 (var3206) void)
(declare-const null-var1013 var1013)
(declare-const null-var3206 var3206)
(declare-const null-String String)
(declare-const null-__Array__Int__var2029__ (Array Int var2029))
(declare-const null-var2029 var2029)
(declare-const var1436 var1013) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite 
(assert (not (= var1436 null-var1013)))
(declare-const var1402 var3206) ; Statement: r0 := @parameter0: java.io.PrintWriter 
(assert (not (= var1402 null-var3206)))
(declare-const var103 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var103 null-String)))
(declare-const var2415 (Array Int var2029)) ; Statement: r15 := @parameter2: java.lang.Object[] 
(assert (not (= var2415 null-__Array__Int__var2029__)))
(declare-const var758 var2029) ; Statement: r16 := @parameter3: java.lang.Object 
(assert (not (= var758 null-var2029)))
(define-const var3222 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3222)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3222!1 String)
(assert (= var3222!1 ""))
(define-const var2850 String (var3884_id/-2071121520 (cast-from-var1013-to-var2029 var1436))) ; Statement: $r3 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r2) 
(assert true)
(define-const var2575 String (append/672562846 var3222!1 var2850)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3222!2 String)
(assert (= var3222!2 (str.++ var3222!1 var2850)))
(assert true)
(define-const var2046 String (append/672562846 var2575 " TAG ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TAG ") 
(declare-const var2575!1 String)
(assert (= var2575!1 (str.++ var2575 " TAG ")))
(assert true)
(define-const var1773 String (append/672562846 var2046 var103)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2046!1 String)
(assert (= var2046!1 (str.++ var2046 var103)))
(assert true)
(define-const var2417 String (toString/-2075883882 var1773)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var1402 var2417)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r8) 

(declare-const var1402!1 var3206)
(declare-const var2417!1 String)
(define-const var932 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var932)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var932!1 String)
(assert (= var932!1 ""))
(assert true)
(define-const var2328 var1491 (getDescriptor/-2067960571 (cast-from-var1013-to-var845 var1436))) ; Statement: $r10 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite: jdk.internal.dynalink.CallSiteDescriptor getDescriptor()>() 
(define-const var2883 String (var1491_getName/1879150825 var2328)) ; Statement: $r11 = interfaceinvoke $r10.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var2334 String (append/672562846 var932!1 var2883)) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var932!2 String)
(assert (= var932!2 (str.++ var932!1 var2883)))
(assert true)
(define-const var472 String (append/672562846 var2334 "(")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var2334!1 String)
(assert (= var2334!1 (str.++ var2334 "(")))
(assert true)
(define-const var3872 String (toString/-2075883882 var472)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-2007916749 var1402!1 var3872)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r14) 

(declare-const var1402!2 var3206)
(declare-const var3872!1 String)
(define-const var3828 Int (getLength-Arr-var2029-1 var2415)) ; Statement: $i0 = lengthof r15 
 ; Statement: if $i0 <= 0 goto virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>(")") 
(assert (<= var3828 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (print/-2007916749 var1402!2 ")")) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>(")") 

(declare-const var1402!3 var3206)
(declare-const var2718 String)
(assert true)
(define-const var3392 Bool (= var103 "EXIT  ")) ; Statement: $z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("EXIT  ") 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println()>() 
(assert (= (ite var3392 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (println/348898060 var1402!3)) ; Statement: virtualinvoke r0.<java.io.PrintWriter: void println()>() 

(declare-const var1402!4 var3206)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3884_id/-2071121520=([java.lang.Object], java.lang.String), cast-from-var1013-to-var2029=([jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), getDescriptor/-2067960571=([jdk.internal.dynalink.support.AbstractRelinkableCallSite], jdk.internal.dynalink.CallSiteDescriptor), cast-from-var1013-to-var845=([jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite], jdk.internal.dynalink.support.AbstractRelinkableCallSite), var1491_getName/1879150825=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.String), getLength-Arr-var2029-1=([java.lang.Object[]], int), println/348898060=([java.io.PrintWriter], void)}
; {var1013=jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite, var1436=r2, var3206=java.io.PrintWriter, var1402=r0, var103=r5, var2027=null_type, var2029=java.lang.Object, var2415=r15, var758=r16, var3222=$r1, var3884=jdk.nashorn.internal.runtime.Debug, var2850=$r3, var2575=$r4, var2046=$r6, var1773=$r7, var2417=$r8, var932=$r9, var1491=jdk.internal.dynalink.CallSiteDescriptor, var845=jdk.internal.dynalink.support.AbstractRelinkableCallSite, var2328=$r10, var2883=$r11, var2334=$r12, var472=$r13, var3872=$r14, var3828=$i0, var2718=")", var3392=$z0}
; {jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite=var1013, r2=var1436, java.io.PrintWriter=var3206, r0=var1402, r5=var103, null_type=var2027, java.lang.Object=var2029, r15=var2415, r16=var758, $r1=var3222, jdk.nashorn.internal.runtime.Debug=var3884, $r3=var2850, $r4=var2575, $r6=var2046, $r7=var1773, $r8=var2417, $r9=var932, jdk.internal.dynalink.CallSiteDescriptor=var1491, jdk.internal.dynalink.support.AbstractRelinkableCallSite=var845, $r10=var2328, $r11=var2883, $r12=var2334, $r13=var472, $r14=var3872, $i0=var3828, ")"=var2718, $z0=var3392}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite;	r0 := @parameter0: java.io.PrintWriter;	r5 := @parameter1: java.lang.String;	r15 := @parameter2: java.lang.Object[];	r16 := @parameter3: java.lang.Object;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r2);	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" TAG ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r8);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke r2.<jdk.nashorn.internal.runtime.linker.LinkerCallSite$TracingLinkerCallSite: jdk.internal.dynalink.CallSiteDescriptor getDescriptor()>();	$r11 = interfaceinvoke $r10.<jdk.internal.dynalink.CallSiteDescriptor: java.lang.String getName()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>($r14);	$i0 = lengthof r15;	if $i0 <= 0 goto virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>(")");	virtualinvoke r0.<java.io.PrintWriter: void print(java.lang.String)>(")");	$z0 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>("EXIT  ");	if $z0 == 0 goto virtualinvoke r0.<java.io.PrintWriter: void println()>();	virtualinvoke r0.<java.io.PrintWriter: void println()>();	return
;block_num 3