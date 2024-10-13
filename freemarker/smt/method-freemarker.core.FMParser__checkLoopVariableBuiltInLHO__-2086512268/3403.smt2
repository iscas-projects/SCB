(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1606 0)
(declare-sort var1611 0)
(declare-sort var653 0)
(declare-sort var1725 0)
(declare-sort var2411 0)
(declare-sort var1358 0)
(declare-sort var3629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iteratorBlockContexts/-1475596563 (var1606) var2411)
(declare-fun var1358-init () var1358)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun image/-1758362606 (var1725) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var1358 String var3629) void)
(declare-fun cast-from-var653-to-var3629 (var653) var3629)
(declare-const null-var1606 var1606)
(declare-const null-String String)
(declare-const null-var653 var653)
(declare-const null-var1725 var1725)
(declare-const null-var2411 var2411)
(declare-const var589 var1606) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var589 null-var1606)))
(declare-const var2902 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2902 null-String)))
(declare-const var3699 var653) ; Statement: r11 := @parameter1: freemarker.core.Expression 
(assert (not (= var3699 null-var653)))
(declare-const var2395 var1725) ; Statement: r4 := @parameter2: freemarker.core.Token 
(assert (not (= var2395 null-var1725)))
(define-const var1422 var2411 (iteratorBlockContexts/-1475596563 var589)) ; Statement: $r1 = r0.<freemarker.core.FMParser: java.util.List iteratorBlockContexts> 
 ; Statement: if $r1 == null goto $i1 = 0 
(assert (= var1422 null-var2411)) ; Cond: $r1 == null 
(define-const var764 Int 0) ; Statement: $i1 = 0 
(assert true) ; Non Conditional
(define-const var1237 Int (- var764 1)) ; Statement: i2 = $i1 - 1 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto $r30 = new freemarker.core.ParseException 
(assert (< var1237 0)) ; Cond: i2 < 0 
(define-const var2490 var1358 var1358-init) ; Statement: $r30 = new freemarker.core.ParseException 
(define-const var1508 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1508)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1508!1 String)
(assert (= var1508!1 ""))
(assert true)
(define-const var3320 String (append/672562846 var1508!1 "The left hand operand of ?")) ; Statement: $r6 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The left hand operand of ?") 
(declare-const var1508!2 String)
(assert (= var1508!2 (str.++ var1508!1 "The left hand operand of ?")))
(define-const var779 String (image/-1758362606 var2395)) ; Statement: $r5 = r4.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var3299 String (append/672562846 var3320 var779)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3320!1 String)
(assert (= var3320!1 (str.++ var3320 var779)))
(assert true)
(define-const var3856 String (append/672562846 var3299 " must be a loop variable, but there\u0027s no loop variable in scope with this name: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be a loop variable, but there\'s no loop variable in scope with this name: ") 
(declare-const var3299!1 String)
(assert (= var3299!1 (str.++ var3299 " must be a loop variable, but there\u0027s no loop variable in scope with this name: ")))
(assert true)
(define-const var780 String (append/672562846 var3856 var2902)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var3856!1 String)
(assert (= var3856!1 (str.++ var3856 var2902)))
(assert true)
(define-const var3798 String (toString/-2075883882 var780)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var2490 var3798 (cast-from-var653-to-var3629 var3699))) ; Statement: specialinvoke $r30.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r12, r11) 

(declare-const var2490!1 var1358)
(declare-const var3798!1 String)
(declare-const var3699!1 var653)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {iteratorBlockContexts/-1475596563=([freemarker.core.FMParser], java.util.List), var1358-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), image/-1758362606=([freemarker.core.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void), cast-from-var653-to-var3629=([freemarker.core.Expression], freemarker.core.TemplateObject)}
; {var1606=freemarker.core.FMParser, var589=r0, var2902=r8, var1611=null_type, var653=freemarker.core.Expression, var3699=r11, var1725=freemarker.core.Token, var2395=r4, var2411=java.util.List, var1422=$r1, var764=$i1, var1237=i2, var1358=freemarker.core.ParseException, var2490=$r30, var1508=$r29, var3320=$r6, var779=$r5, var3299=$r7, var3856=$r9, var780=$r10, var3798=$r12, var3629=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var1606, r0=var589, r8=var2902, null_type=var1611, freemarker.core.Expression=var653, r11=var3699, freemarker.core.Token=var1725, r4=var2395, java.util.List=var2411, $r1=var1422, $i1=var764, i2=var1237, freemarker.core.ParseException=var1358, $r30=var2490, $r29=var1508, $r6=var3320, $r5=var779, $r7=var3299, $r9=var3856, $r10=var780, $r12=var3798, freemarker.core.TemplateObject=var3629}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r8 := @parameter0: java.lang.String;	r11 := @parameter1: freemarker.core.Expression;	r4 := @parameter2: freemarker.core.Token;	$r1 = r0.<freemarker.core.FMParser: java.util.List iteratorBlockContexts>;	if $r1 == null goto $i1 = 0;	$i1 = 0;	i2 = $i1 - 1;	if i2 < 0 goto $r30 = new freemarker.core.ParseException;	$r30 = new freemarker.core.ParseException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The left hand operand of ?");	$r5 = r4.<freemarker.core.Token: java.lang.String image>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be a loop variable, but there\'s no loop variable in scope with this name: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r12, r11);	throw $r30
;block_num 5