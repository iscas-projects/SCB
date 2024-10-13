(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3895 0)
(declare-sort var1739 0)
(declare-sort var1794 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1739) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1794_fail/-395154864 (String) void)
(declare-const null-String String)
(declare-const null-var1739 var1739)
(declare-const var3747 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3747 null-String)))
(declare-const var2008 var1739) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var2008 null-var1739)))
(declare-const var1478 var1739) ; Statement: r6 := @parameter2: java.lang.Object 
(assert (not (= var1478 null-var1739)))
 ; Statement: if r0 == null goto $r14 = "" 
(assert (= var3747 null-String)) ; Cond: r0 == null 
(define-const var3162 String "") ; Statement: $r14 = "" 
(assert true) ; Non Conditional
(define-const var2081 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2081)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2081!1 String)
(assert (= var2081!1 ""))
(assert true)
(define-const var3423 String (append/672562846 var2081!1 var3162)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2081!2 String)
(assert (= var2081!2 (str.++ var2081!1 var3162)))
(assert true)
(define-const var1630 String (append/672562846 var3423 "expected same:<")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected same:<") 
(declare-const var3423!1 String)
(assert (= var3423!1 (str.++ var3423 "expected same:<")))
(assert true)
(define-const var2636 String (append/-1031950772 var1630 var2008)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var1630!1 String)
(assert (str.prefixof var1630 var1630!1))
(assert true)
(define-const var3093 String (append/672562846 var2636 "> was not:<")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> was not:<") 
(declare-const var2636!1 String)
(assert (= var2636!1 (str.++ var2636 "> was not:<")))
(assert true)
(define-const var3644 String (append/-1031950772 var3093 var1478)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6) 
(declare-const var3093!1 String)
(assert (str.prefixof var3093 var3093!1))
(assert true)
(define-const var2616 String (append/672562846 var3644 ">")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3644!1 String)
(assert (= var3644!1 (str.++ var3644 ">")))
(assert true)
(define-const var1573 String (toString/-2075883882 var2616)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1794_fail/-395154864 var1573)) ; Statement: staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r10) 

(declare-const var1573!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1794_fail/-395154864=([java.lang.String], void)}
; {var3747=r0, var3895=null_type, var1739=java.lang.Object, var2008=r3, var1478=r6, var3162=$r14, var2081=$r1, var3423=$r2, var1630=$r4, var2636=$r5, var3093=$r7, var3644=$r8, var2616=$r9, var1573=$r10, var1794=junit.framework.Assert}
; {r0=var3747, null_type=var3895, java.lang.Object=var1739, r3=var2008, r6=var1478, $r14=var3162, $r1=var2081, $r2=var3423, $r4=var1630, $r5=var2636, $r7=var3093, $r8=var3644, $r9=var2616, $r10=var1573, junit.framework.Assert=var1794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object;	r6 := @parameter2: java.lang.Object;	if r0 == null goto $r14 = "";	$r14 = "";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected same:<");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> was not:<");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r10);	return
;block_num 3