(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3830 0)
(declare-sort var1307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1307_compile/915022044 (String Int) var1307)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1416 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1416 null-String)))
(declare-const var3056 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3056 null-Bool)))
(define-const var3410 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3410)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3410!1 String)
(assert (= var3410!1 ""))
(assert true)
(define-const var636 String (append/672562846 var3410!1 "(")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3410!2 String)
(assert (= var3410!2 (str.++ var3410!1 "(")))
 ; Statement: if z0 == 0 goto $r9 = "" 
(assert (not (= (ite var3056 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var489 String "\u005cb") ; Statement: $r9 = "\\b" 
 ; Statement: goto [?= $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
(define-const var436 String (append/672562846 var636 var489)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var636!1 String)
(assert (= var636!1 (str.++ var636 var489)))
(assert true)
(define-const var1962 String (append/672562846 var436 var1416)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var436!1 String)
(assert (= var436!1 (str.++ var436 var1416)))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (= (ite var3056 1 0) 0)) ; Cond: z0 == 0 
(define-const var2351 String "") ; Statement: $r10 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2324 String (append/672562846 var1962 var2351)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1962!1 String)
(assert (= var1962!1 (str.++ var1962 var2351)))
(assert true)
(define-const var2267 String (append/672562846 var2324 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))") 
(declare-const var2324!1 String)
(assert (= var2324!1 (str.++ var2324 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")))
(assert true)
(define-const var3522 String (toString/-2075883882 var2267)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1882 var1307 (var1307_compile/915022044 var3522 2)) ; Statement: $r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1307_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var1416=r2, var3830=null_type, var3056=z0, var3410=$r0, var636=$r1, var489=$r9, var436=$r3, var1962=$r4, var2351=$r10, var2324=$r5, var2267=$r6, var3522=$r7, var1307=java.util.regex.Pattern, var1882=$r8}
; {r2=var1416, null_type=var3830, z0=var3056, $r0=var3410, $r1=var636, $r9=var489, $r3=var436, $r4=var1962, $r10=var2351, $r5=var2324, $r6=var2267, $r7=var3522, java.util.regex.Pattern=var1307, $r8=var1882}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	if z0 == 0 goto $r9 = "";	$r9 = "\\b";	goto [?= $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r10 = "";	$r10 = "";	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2);	return $r8
;block_num 5