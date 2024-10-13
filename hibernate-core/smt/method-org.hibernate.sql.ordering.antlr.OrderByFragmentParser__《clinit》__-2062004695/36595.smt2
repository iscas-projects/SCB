(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1354 0)
(declare-sort var3884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1354!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3884_getLogger/1277108090 (String) var3884)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2936 ClassObject var1354!class) ; Statement: $r0 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;" 
(assert true)
(define-const var2620 Bool (desiredAssertionStatus/-1561484483 var2936)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var2620 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2441 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled> = $z1] 
(assert true) ; Non Conditional
(define-const var2950 Bool var2441) ; Statement: <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled> = $z1 
(define-const var1420 ClassObject var1354!class) ; Statement: $r1 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;" 
(assert true)
(define-const var2633 String (getName/-1958580599 var1420)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var2145 var3884 (var3884_getLogger/1277108090 var2633)) ; Statement: $r3 = staticinvoke <org.jboss.logging.Logger: org.jboss.logging.Logger getLogger(java.lang.String)>($r2) 
(define-const var34 var3884 var2145) ; Statement: <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG> = $r3 
(define-const var1571 String "$PlaceHolder$") ; Statement: $r4 = "$PlaceHolder$" 
(assert true)
(define-const var3235 Int (length/-134980193 var1571)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var3024 Int var3235) ; Statement: <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), var3884_getLogger/1277108090=([java.lang.String], org.jboss.logging.Logger), length/-134980193=([java.lang.String], int)}
; {var1354=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var2936=$r0, var2620=$z0, var2441=$z1, var2950=<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled>, var1420=$r1, var2633=$r2, var3884=org.jboss.logging.Logger, var2145=$r3, var34=<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG>, var1571=$r4, var3235=$i0, var3024=<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH>}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var1354, $r0=var2936, $z0=var2620, $z1=var2441, <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled>=var2950, $r1=var1420, $r2=var2633, org.jboss.logging.Logger=var3884, $r3=var2145, <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG>=var34, $r4=var1571, $i0=var3235, <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH>=var3024}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled> = $z1];	<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled> = $z1;	$r1 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = staticinvoke <org.jboss.logging.Logger: org.jboss.logging.Logger getLogger(java.lang.String)>($r2);	<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG> = $r3;	$r4 = "$PlaceHolder$";	$i0 = virtualinvoke $r4.<java.lang.String: int length()>();	<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH> = $i0;	return
;block_num 3