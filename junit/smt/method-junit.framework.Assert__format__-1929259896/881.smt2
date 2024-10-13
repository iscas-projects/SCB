(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1557 0)
(declare-sort var317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var317) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var317 var317)
(declare-const var109 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var109 null-String)))
(declare-const var2895 var317) ; Statement: r1 := @parameter1: java.lang.Object 
(assert (not (= var2895 null-var317)))
(declare-const var1833 var317) ; Statement: r2 := @parameter2: java.lang.Object 
(assert (not (= var1833 null-var317)))
(define-const var118 String "") ; Statement: r6 = "" 
 ; Statement: if r0 == null goto $r7 = new java.lang.StringBuilder 
(assert (= var109 null-String)) ; Cond: r0 == null 
(define-const var39 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var39)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var39!1 String)
(assert (= var39!1 ""))
(assert true)
(define-const var1086 String (append/672562846 var39!1 var118)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var39!2 String)
(assert (= var39!2 (str.++ var39!1 var118)))
(assert true)
(define-const var3975 String (append/672562846 var1086 "expected:<")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected:<") 
(declare-const var1086!1 String)
(assert (= var1086!1 (str.++ var1086 "expected:<")))
(assert true)
(define-const var3063 String (append/-1031950772 var3975 var2895)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3975!1 String)
(assert (str.prefixof var3975 var3975!1))
(assert true)
(define-const var1989 String (append/672562846 var3063 "> but was:<")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> but was:<") 
(declare-const var3063!1 String)
(assert (= var3063!1 (str.++ var3063 "> but was:<")))
(assert true)
(define-const var709 String (append/-1031950772 var1989 var1833)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1989!1 String)
(assert (str.prefixof var1989 var1989!1))
(assert true)
(define-const var2673 String (append/672562846 var709 ">")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var709!1 String)
(assert (= var709!1 (str.++ var709 ">")))
(assert true)
(define-const var907 String (toString/-2075883882 var2673)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var109=r0, var1557=null_type, var317=java.lang.Object, var2895=r1, var1833=r2, var118=r6, var39=$r7, var1086=$r8, var3975=$r9, var3063=$r10, var1989=$r11, var709=$r12, var2673=$r13, var907=$r14}
; {r0=var109, null_type=var1557, java.lang.Object=var317, r1=var2895, r2=var1833, r6=var118, $r7=var39, $r8=var1086, $r9=var3975, $r10=var3063, $r11=var1989, $r12=var709, $r13=var2673, $r14=var907}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.Object;	r2 := @parameter2: java.lang.Object;	r6 = "";	if r0 == null goto $r7 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("expected:<");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("> but was:<");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 2