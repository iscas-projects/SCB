(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2763 0)
(declare-sort var2708 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2708_fail/-395154864 (String) void)
(declare-const null-String String)
(declare-const var3180 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3180 null-String)))
 ; Statement: if r0 == null goto $r8 = "" 
(assert (not (= var3180 null-String))) ; Negate: Cond: r0 == null  
(define-const var891 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var891)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var891!1 String)
(assert (= var891!1 ""))
(assert true)
(define-const var2555 String (append/672562846 var891!1 var3180)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var891!2 String)
(assert (= var891!2 (str.++ var891!1 var3180)))
(assert true)
(define-const var3366 String (append/672562846 var2555 " ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var2555!1 String)
(assert (= var2555!1 (str.++ var2555 " ")))
(assert true)
(define-const var3389 String (toString/-2075883882 var3366)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r1 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1995 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1995)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1995!1 String)
(assert (= var1995!1 ""))
(assert true)
(define-const var1532 String (append/672562846 var1995!1 var3389)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1995!2 String)
(assert (= var1995!2 (str.++ var1995!1 var3389)))
(assert true)
(define-const var661 String (append/672562846 var1532 "expected not same")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected not same") 
(declare-const var1532!1 String)
(assert (= var1532!1 (str.++ var1532 "expected not same")))
(assert true)
(define-const var3532 String (toString/-2075883882 var661)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var2708_fail/-395154864 var3532)) ; Statement: staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r4) 

(declare-const var3532!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2708_fail/-395154864=([java.lang.String], void)}
; {var3180=r0, var2763=null_type, var891=$r5, var2555=$r6, var3366=$r7, var3389=$r8, var1995=$r1, var1532=$r2, var661=$r3, var3532=$r4, var2708=junit.framework.Assert}
; {r0=var3180, null_type=var2763, $r5=var891, $r6=var2555, $r7=var3366, $r8=var3389, $r1=var1995, $r2=var1532, $r3=var661, $r4=var3532, junit.framework.Assert=var2708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @parameter0: java.lang.String;	if r0 == null goto $r8 = "";	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r1 = new java.lang.StringBuilder];	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected not same");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	staticinvoke <junit.framework.Assert: void fail(java.lang.String)>($r4);	return
;block_num 3