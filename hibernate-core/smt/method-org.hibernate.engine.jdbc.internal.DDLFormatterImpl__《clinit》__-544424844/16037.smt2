(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3948 0)
(declare-sort var409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3948_lineSeparator/-342590142 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var409-init () var409)
(declare-fun <init>/450027531 (var409) void)
(define-const var2874 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2874)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2874!1 String)
(assert (= var2874!1 ""))
(define-const var2780 String var3948_lineSeparator/-342590142) ; Statement: $r1 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var1196 String (append/672562846 var2874!1 var2780)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1) 
(declare-const var2874!2 String)
(assert (= var2874!2 (str.++ var2874!1 var2780)))
(assert true)
(define-const var3465 String (append/672562846 var1196 "    ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var1196!1 String)
(assert (= var1196!1 (str.++ var1196 "    ")))
(assert true)
(define-const var1007 String (toString/-2075883882 var3465)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2160 String var1007) ; Statement: <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE> = $r4 
(define-const var3651 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3651)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3651!1 String)
(assert (= var3651!1 ""))
(define-const var1306 String var3948_lineSeparator/-342590142) ; Statement: $r6 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>() 
(assert true)
(define-const var3658 String (append/672562846 var3651!1 var1306)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3651!2 String)
(assert (= var3651!2 (str.++ var3651!1 var1306)))
(assert true)
(define-const var725 String (append/672562846 var3658 "       ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("       ") 
(declare-const var3658!1 String)
(assert (= var3658!1 (str.++ var3658 "       ")))
(assert true)
(define-const var3245 String (toString/-2075883882 var725)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2119 String var3245) ; Statement: <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String OTHER_LINES> = $r9 
(define-const var2552 var409 var409-init) ; Statement: $r10 = new org.hibernate.engine.jdbc.internal.DDLFormatterImpl 
(assert true)
;(assert (<init>/450027531 var2552)) ; Statement: specialinvoke $r10.<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: void <init>()>() 

(declare-const var2552!1 var409)
(define-const var2808 var409 var2552!1) ; Statement: <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: org.hibernate.engine.jdbc.internal.DDLFormatterImpl INSTANCE> = $r10 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3948_lineSeparator/-342590142=([], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var409-init=([], org.hibernate.engine.jdbc.internal.DDLFormatterImpl), <init>/450027531=([org.hibernate.engine.jdbc.internal.DDLFormatterImpl], void)}
; {var2874=$r0, var3948=java.lang.System, var2780=$r1, var1196=$r2, var3465=$r3, var1007=$r4, var2160=<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE>, var3651=$r5, var1306=$r6, var3658=$r7, var725=$r8, var3245=$r9, var2119=<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String OTHER_LINES>, var409=org.hibernate.engine.jdbc.internal.DDLFormatterImpl, var2552=$r10, var2808=<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: org.hibernate.engine.jdbc.internal.DDLFormatterImpl INSTANCE>}
; {$r0=var2874, java.lang.System=var3948, $r1=var2780, $r2=var1196, $r3=var3465, $r4=var1007, <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE>=var2160, $r5=var3651, $r6=var1306, $r7=var3658, $r8=var725, $r9=var3245, <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String OTHER_LINES>=var2119, org.hibernate.engine.jdbc.internal.DDLFormatterImpl=var409, $r10=var2552, <org.hibernate.engine.jdbc.internal.DDLFormatterImpl: org.hibernate.engine.jdbc.internal.DDLFormatterImpl INSTANCE>=var2808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String INITIAL_LINE> = $r4;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = staticinvoke <java.lang.System: java.lang.String lineSeparator()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("       ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: java.lang.String OTHER_LINES> = $r9;	$r10 = new org.hibernate.engine.jdbc.internal.DDLFormatterImpl;	specialinvoke $r10.<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: void <init>()>();	<org.hibernate.engine.jdbc.internal.DDLFormatterImpl: org.hibernate.engine.jdbc.internal.DDLFormatterImpl INSTANCE> = $r10;	return
;block_num 1