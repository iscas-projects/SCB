(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2770 0)
(declare-sort var326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-503412698 (var2770) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun address/-503412698 (var2770) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2770 var2770)
(declare-const null-String String)
(declare-const var2130 var2770) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress 
(assert (not (= var2130 null-var2770)))
(define-const var81 String (name/-503412698 var2130)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String name> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var81 null-String))) ; Cond: $r1 != null 
(define-const var1752 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1752)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1752!1 String)
(assert (= var1752!1 ""))
(define-const var2317 String (name/-503412698 var2130)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String name> 
(assert true)
(define-const var1390 String (append/672562846 var1752!1 var2317)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1752!2 String)
(assert (= var1752!2 (str.++ var1752!1 var2317)))
(assert true)
(define-const var2759 String (append/672562846 var1390 " <")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <") 
(declare-const var1390!1 String)
(assert (= var1390!1 (str.++ var1390 " <")))
(define-const var3204 String (address/-503412698 var2130)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String address> 
(assert true)
(define-const var1720 String (append/672562846 var2759 var3204)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2759!1 String)
(assert (= var2759!1 (str.++ var2759 var3204)))
(assert true)
(define-const var3518 String (append/672562846 var1720 ">")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1720!1 String)
(assert (= var1720!1 (str.++ var1720 ">")))
(assert true)
(define-const var1428 String (toString/-2075883882 var3518)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-503412698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), address/-503412698=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2770=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress, var2130=r0, var81=$r1, var326=null_type, var1752=$r2, var2317=$r3, var1390=$r4, var2759=$r6, var3204=$r5, var1720=$r7, var3518=$r8, var1428=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress=var2770, r0=var2130, $r1=var81, null_type=var326, $r2=var1752, $r3=var2317, $r4=var1390, $r6=var2759, $r5=var3204, $r7=var1720, $r8=var3518, $r9=var1428}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String name>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String name>;	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" <");	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.email.EmailAddress: java.lang.String address>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 2