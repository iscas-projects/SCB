(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var2671 0)
(declare-sort var2960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun append/-1031950772 (String var2671) String)
(declare-fun var2960_fail/-395154864 (String) void)
(declare-const null-String String)
(declare-const null-var2671 var2671)
(declare-const var3068 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3068 null-String)))
(declare-const var724 var2671) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var724 null-var2671)))
(declare-const var1878 var2671) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var1878 null-var2671)))
 ; Statement: if r0 == null goto $r14 = "" 
(assert (not (= var3068 null-String))) ; Negate: Cond: r0 == null  
(define-const var2276 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2276)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2276!1 String)
(assert (= var2276!1 ""))
(assert true)
(define-const var857 String (append/672562846 var2276!1 var3068)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2276!2 String)
(assert (= var2276!2 (str.++ var2276!1 var3068)))
(assert true)
(define-const var3417 String (append/672562846 var857 " ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var857!1 String)
(assert (= var857!1 (str.++ var857 " ")))
(assert true)
(define-const var3636 String (toString/-2075883882 var3417)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1163 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1163)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1163!1 String)
(assert (= var1163!1 ""))
(assert true)
(define-const var2997 String (append/672562846 var1163!1 var3636)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1163!2 String)
(assert (= var1163!2 (str.++ var1163!1 var3636)))
(assert true)
(define-const var2155 String (append/672562846 var2997 "expected same:<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected same:<") 
(declare-const var2997!1 String)
(assert (= var2997!1 (str.++ var2997 "expected same:<")))
(assert true)
(define-const var1556 String (append/-1031950772 var2155 var724)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var2155!1 String)
(assert (str.prefixof var2155 var2155!1))
(assert true)
(define-const var2428 String (append/672562846 var1556 "> was not:<")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> was not:<") 
(declare-const var1556!1 String)
(assert (= var1556!1 (str.++ var1556 "> was not:<")))
(assert true)
(define-const var2337 String (append/-1031950772 var2428 var1878)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var2428!1 String)
(assert (str.prefixof var2428 var2428!1))
(assert true)
(define-const var930 String (append/672562846 var2337 ">")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2337!1 String)
(assert (= var2337!1 (str.++ var2337 ">")))
(assert true)
(define-const var1515 String (toString/-2075883882 var930)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2960_fail/-395154864 var1515)) ; Statement: staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r10) 

(declare-const var1515!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), var2960_fail/-395154864=([java.lang.String], void)}
; {var3068=r0, var3830=null_type, var2671=java.lang.Object, var724=r3, var1878=r6, var2276=$r11, var857=$r12, var3417=$r13, var3636=$r14, var1163=$r1, var2997=$r2, var2155=$r4, var1556=$r5, var2428=$r7, var2337=$r8, var930=$r9, var1515=$r10, var2960=junit.framework.Assert}
; {r0=var3068, null_type=var3830, java.lang.Object=var2671, r3=var724, r6=var1878, $r11=var2276, $r12=var857, $r13=var3417, $r14=var3636, $r1=var1163, $r2=var2997, $r4=var2155, $r5=var1556, $r7=var2428, $r8=var2337, $r9=var930, $r10=var1515, junit.framework.Assert=var2960}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	r6 := @parameter2: java.lang.Object;	if r0 == null goto $r14 = "";	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected same:<");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> was not:<");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r10);	return
;block_num 3