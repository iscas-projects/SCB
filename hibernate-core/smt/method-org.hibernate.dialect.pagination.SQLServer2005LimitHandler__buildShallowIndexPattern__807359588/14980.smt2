(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var184 0)
(declare-sort var3802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3802_compile/915022044 (String Int) var3802)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var380 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var380 null-String)))
(declare-const var3817 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3817 null-Bool)))
(define-const var1618 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1618)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1618!1 String)
(assert (= var1618!1 ""))
(assert true)
(define-const var2750 String (append/672562846 var1618!1 "(")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1618!2 String)
(assert (= var1618!2 (str.++ var1618!1 "(")))
 ; Statement: if z0 == 0 goto $r9 = "" 
(assert (= (ite var3817 1 0) 0)) ; Cond: z0 == 0 
(define-const var529 String "") ; Statement: $r9 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var81 String (append/672562846 var2750 var529)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2750!1 String)
(assert (= var2750!1 (str.++ var2750 var529)))
(assert true)
(define-const var2511 String (append/672562846 var81 var380)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var81!1 String)
(assert (= var81!1 (str.++ var81 var380)))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (not (= (ite var3817 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3715 String "\u005cb") ; Statement: $r10 = "\\b" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1410 String (append/672562846 var2511 var3715)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2511!1 String)
(assert (= var2511!1 (str.++ var2511 var3715)))
(assert true)
(define-const var1230 String (append/672562846 var1410 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))") 
(declare-const var1410!1 String)
(assert (= var1410!1 (str.++ var1410 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")))
(assert true)
(define-const var3481 String (toString/-2075883882 var1230)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3400 var3802 (var3802_compile/915022044 var3481 2)) ; Statement: $r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3802_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var380=r2, var184=null_type, var3817=z0, var1618=$r0, var2750=$r1, var529=$r9, var81=$r3, var2511=$r4, var3715=$r10, var1410=$r5, var1230=$r6, var3481=$r7, var3802=java.util.regex.Pattern, var3400=$r8}
; {r2=var380, null_type=var184, z0=var3817, $r0=var1618, $r1=var2750, $r9=var529, $r3=var81, $r4=var2511, $r10=var3715, $r5=var1410, $r6=var1230, $r7=var3481, java.util.regex.Pattern=var3802, $r8=var3400}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	if z0 == 0 goto $r9 = "";	$r9 = "";	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r10 = "";	$r10 = "\\b";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2);	return $r8
;block_num 5