(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var690 0)
(declare-sort var1166 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-fun var1166-init () var1166)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1166 String) void)
(declare-const null-String String)
(declare-const var1952 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1952 null-String)))
(declare-const var764 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var764 null-String)))
(assert true)
(define-const var602 Int (lastIndexOf/-618837785 var764 "/")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("/") 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (not (>= var602 0))) ; Negate: Cond: i0 >= 0  
(define-const var2903 var1166 var1166-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1405 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1405)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1405!1 String)
(assert (= var1405!1 ""))
(assert true)
(define-const var3655 String (append/672562846 var1405!1 "Invalid cidr: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid cidr: ") 
(declare-const var1405!2 String)
(assert (= var1405!2 (str.++ var1405!1 "Invalid cidr: ")))
(assert true)
(define-const var3893 String (append/672562846 var3655 var764)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3655!1 String)
(assert (= var3655!1 (str.++ var3655 var764)))
(assert true)
(define-const var423 String (toString/-2075883882 var3893)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2903 var423)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2903!1 var1166)
(declare-const var423!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), var1166-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1952=r3, var690=null_type, var764=r0, var602=i0, var1166=java.lang.IllegalArgumentException, var2903=$r4, var1405=$r5, var3655=$r6, var3893=$r7, var423=$r8}
; {r3=var1952, null_type=var690, r0=var764, i0=var602, java.lang.IllegalArgumentException=var1166, $r4=var2903, $r5=var1405, $r6=var3655, $r7=var3893, $r8=var423}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("/");	if i0 >= 0 goto $i1 = i0 + 1;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid cidr: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2