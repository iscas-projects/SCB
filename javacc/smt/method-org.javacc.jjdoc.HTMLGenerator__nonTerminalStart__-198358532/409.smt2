(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3850 0)
(declare-sort var3361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/411565905 (var3361) String)
(declare-fun get_id/-836140651 (var3850 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-855496625 (var3850 String) void)
(declare-const null-var3850 var3850)
(declare-const null-var3361 var3361)
(declare-const var3119 var3850) ; Statement: r0 := @this: org.javacc.jjdoc.HTMLGenerator 
(assert (not (= var3119 null-var3850)))
(declare-const var538 var3361) ; Statement: r2 := @parameter0: org.javacc.parser.NonTerminal 
(assert (not (= var538 null-var3361)))
(define-const var758 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var758)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var758!1 String)
(assert (= var758!1 ""))
(assert true)
(define-const var164 String (append/672562846 var758!1 "<A HREF=\u0022#")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<A HREF=\"#") 
(declare-const var758!2 String)
(assert (= var758!2 (str.++ var758!1 "<A HREF=\u0022#")))
(assert true)
(define-const var232 String (getName/411565905 var538)) ; Statement: $r3 = virtualinvoke r2.<org.javacc.parser.NonTerminal: java.lang.String getName()>() 
(assert true)
(define-const var518 String (get_id/-836140651 var3119 var232)) ; Statement: $r4 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.lang.String get_id(java.lang.String)>($r3) 
(assert true)
(define-const var2319 String (append/672562846 var164 var518)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var164!1 String)
(assert (= var164!1 (str.++ var164 var518)))
(assert true)
(define-const var2263 String (append/672562846 var2319 "\u0022>")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var2319!1 String)
(assert (= var2319!1 (str.++ var2319 "\u0022>")))
(assert true)
(define-const var1712 String (toString/-2075883882 var2263)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-855496625 var3119 var1712)) ; Statement: virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>($r8) 

(declare-const var3119!1 var3850)
(declare-const var1712!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/411565905=([org.javacc.parser.NonTerminal], java.lang.String), get_id/-836140651=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-855496625=([org.javacc.jjdoc.HTMLGenerator, java.lang.String], void)}
; {var3850=org.javacc.jjdoc.HTMLGenerator, var3119=r0, var3361=org.javacc.parser.NonTerminal, var538=r2, var758=$r1, var164=$r5, var232=$r3, var518=$r4, var2319=$r6, var2263=$r7, var1712=$r8}
; {org.javacc.jjdoc.HTMLGenerator=var3850, r0=var3119, org.javacc.parser.NonTerminal=var3361, r2=var538, $r1=var758, $r5=var164, $r3=var232, $r4=var518, $r6=var2319, $r7=var2263, $r8=var1712}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.jjdoc.HTMLGenerator;	r2 := @parameter0: org.javacc.parser.NonTerminal;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<A HREF=\"#");	$r3 = virtualinvoke r2.<org.javacc.parser.NonTerminal: java.lang.String getName()>();	$r4 = virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: java.lang.String get_id(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.javacc.jjdoc.HTMLGenerator: void print(java.lang.String)>($r8);	return
;block_num 1