(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort var3066 0)
(declare-sort var2334 0)
(declare-sort var2661 0)
(declare-sort var3919 0)
(declare-sort var1807 0)
(declare-sort var627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iteratorBlockContexts/-1475596563 (var1277) var3919)
(declare-fun var3919_size/-959786421 (var3919) Int)
(declare-fun var1807-init () var1807)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun image/-1758362606 (var2661) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-667416467 (var1807 String var627) void)
(declare-fun cast-from-var2334-to-var627 (var2334) var627)
(declare-const null-var1277 var1277)
(declare-const null-String String)
(declare-const null-var2334 var2334)
(declare-const null-var2661 var2661)
(declare-const null-var3919 var3919)
(declare-const var3367 var1277) ; Statement: r0 := @this: freemarker.core.FMParser 
(assert (not (= var3367 null-var1277)))
(declare-const var493 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var493 null-String)))
(declare-const var2907 var2334) ; Statement: r11 := @parameter1: freemarker.core.Expression 
(assert (not (= var2907 null-var2334)))
(declare-const var3229 var2661) ; Statement: r4 := @parameter2: freemarker.core.Token 
(assert (not (= var3229 null-var2661)))
(define-const var2148 var3919 (iteratorBlockContexts/-1475596563 var3367)) ; Statement: $r1 = r0.<freemarker.core.FMParser: java.util.List iteratorBlockContexts> 
 ; Statement: if $r1 == null goto $i1 = 0 
(assert (not (= var2148 null-var3919))) ; Negate: Cond: $r1 == null  
(define-const var2765 var3919 (iteratorBlockContexts/-1475596563 var3367)) ; Statement: $r26 = r0.<freemarker.core.FMParser: java.util.List iteratorBlockContexts> 
(define-const var3206 Int (var3919_size/-959786421 var2765)) ; Statement: $i1 = interfaceinvoke $r26.<java.util.List: int size()>() 
 ; Statement: goto [?= i2 = $i1 - 1] 
(assert true) ; Non Conditional
(define-const var2544 Int (- var3206 1)) ; Statement: i2 = $i1 - 1 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto $r30 = new freemarker.core.ParseException 
(assert (< var2544 0)) ; Cond: i2 < 0 
(define-const var2772 var1807 var1807-init) ; Statement: $r30 = new freemarker.core.ParseException 
(define-const var1129 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1129)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1129!1 String)
(assert (= var1129!1 ""))
(assert true)
(define-const var1913 String (append/672562846 var1129!1 "The left hand operand of ?")) ; Statement: $r6 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The left hand operand of ?") 
(declare-const var1129!2 String)
(assert (= var1129!2 (str.++ var1129!1 "The left hand operand of ?")))
(define-const var3997 String (image/-1758362606 var3229)) ; Statement: $r5 = r4.<freemarker.core.Token: java.lang.String image> 
(assert true)
(define-const var506 String (append/672562846 var1913 var3997)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1913!1 String)
(assert (= var1913!1 (str.++ var1913 var3997)))
(assert true)
(define-const var2572 String (append/672562846 var506 " must be a loop variable, but there\u0027s no loop variable in scope with this name: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be a loop variable, but there\'s no loop variable in scope with this name: ") 
(declare-const var506!1 String)
(assert (= var506!1 (str.++ var506 " must be a loop variable, but there\u0027s no loop variable in scope with this name: ")))
(assert true)
(define-const var1559 String (append/672562846 var2572 var493)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var2572!1 String)
(assert (= var2572!1 (str.++ var2572 var493)))
(assert true)
(define-const var2916 String (toString/-2075883882 var1559)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-667416467 var2772 var2916 (cast-from-var2334-to-var627 var2907))) ; Statement: specialinvoke $r30.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r12, r11) 

(declare-const var2772!1 var1807)
(declare-const var2916!1 String)
(declare-const var2907!1 var2334)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {iteratorBlockContexts/-1475596563=([freemarker.core.FMParser], java.util.List), var3919_size/-959786421=([java.util.List], int), var1807-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), image/-1758362606=([freemarker.core.Token], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-667416467=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject], void), cast-from-var2334-to-var627=([freemarker.core.Expression], freemarker.core.TemplateObject)}
; {var1277=freemarker.core.FMParser, var3367=r0, var493=r8, var3066=null_type, var2334=freemarker.core.Expression, var2907=r11, var2661=freemarker.core.Token, var3229=r4, var3919=java.util.List, var2148=$r1, var2765=$r26, var3206=$i1, var2544=i2, var1807=freemarker.core.ParseException, var2772=$r30, var1129=$r29, var1913=$r6, var3997=$r5, var506=$r7, var2572=$r9, var1559=$r10, var2916=$r12, var627=freemarker.core.TemplateObject}
; {freemarker.core.FMParser=var1277, r0=var3367, r8=var493, null_type=var3066, freemarker.core.Expression=var2334, r11=var2907, freemarker.core.Token=var2661, r4=var3229, java.util.List=var3919, $r1=var2148, $r26=var2765, $i1=var3206, i2=var2544, freemarker.core.ParseException=var1807, $r30=var2772, $r29=var1129, $r6=var1913, $r5=var3997, $r7=var506, $r9=var2572, $r10=var1559, $r12=var2916, freemarker.core.TemplateObject=var627}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.FMParser;	r8 := @parameter0: java.lang.String;	r11 := @parameter1: freemarker.core.Expression;	r4 := @parameter2: freemarker.core.Token;	$r1 = r0.<freemarker.core.FMParser: java.util.List iteratorBlockContexts>;	if $r1 == null goto $i1 = 0;	$r26 = r0.<freemarker.core.FMParser: java.util.List iteratorBlockContexts>;	$i1 = interfaceinvoke $r26.<java.util.List: int size()>();	goto [?= i2 = $i1 - 1];	i2 = $i1 - 1;	if i2 < 0 goto $r30 = new freemarker.core.ParseException;	$r30 = new freemarker.core.ParseException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The left hand operand of ?");	$r5 = r4.<freemarker.core.Token: java.lang.String image>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be a loop variable, but there\'s no loop variable in scope with this name: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject)>($r12, r11);	throw $r30
;block_num 5