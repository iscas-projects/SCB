(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var727 0)
(declare-sort var3620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3620_compile/915022044 (String Int) var3620)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1466 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1466 null-String)))
(declare-const var921 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var921 null-Bool)))
(define-const var1079 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1079)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1079!1 String)
(assert (= var1079!1 ""))
(assert true)
(define-const var3833 String (append/672562846 var1079!1 "(")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1079!2 String)
(assert (= var1079!2 (str.++ var1079!1 "(")))
 ; Statement: if z0 == 0 goto $r9 = "" 
(assert (not (= (ite var921 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3021 String "\u005cb") ; Statement: $r9 = "\\b" 
 ; Statement: goto [?= $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1797 String (append/672562846 var3833 var3021)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3833!1 String)
(assert (= var3833!1 (str.++ var3833 var3021)))
(assert true)
(define-const var1984 String (append/672562846 var1797 var1466)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1797!1 String)
(assert (= var1797!1 (str.++ var1797 var1466)))
 ; Statement: if z0 == 0 goto $r10 = "" 
(assert (not (= (ite var921 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var1589 String "\u005cb") ; Statement: $r10 = "\\b" 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1977 String (append/672562846 var1984 var1589)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1984!1 String)
(assert (= var1984!1 (str.++ var1984 var1589)))
(assert true)
(define-const var2493 String (append/672562846 var1977 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))") 
(declare-const var1977!1 String)
(assert (= var1977!1 (str.++ var1977 ")(?![^\u005c(|\u005c[]*(\u005c)|\u005c]))")))
(assert true)
(define-const var3019 String (toString/-2075883882 var2493)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var847 var3620 (var3620_compile/915022044 var3019 2)) ; Statement: $r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3620_compile/915022044=([java.lang.String, int], java.util.regex.Pattern)}
; {var1466=r2, var727=null_type, var921=z0, var1079=$r0, var3833=$r1, var3021=$r9, var1797=$r3, var1984=$r4, var1589=$r10, var1977=$r5, var2493=$r6, var3019=$r7, var3620=java.util.regex.Pattern, var847=$r8}
; {r2=var1466, null_type=var727, z0=var921, $r0=var1079, $r1=var3833, $r9=var3021, $r3=var1797, $r4=var1984, $r10=var1589, $r5=var1977, $r6=var2493, $r7=var3019, java.util.regex.Pattern=var3620, $r8=var847}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	if z0 == 0 goto $r9 = "";	$r9 = "\\b";	goto [?= $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9)];	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	if z0 == 0 goto $r10 = "";	$r10 = "\\b";	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")(?![^\\(|\\[]*(\\)|\\]))");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <java.util.regex.Pattern: java.util.regex.Pattern compile(java.lang.String,int)>($r7, 2);	return $r8
;block_num 5