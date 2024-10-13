(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var966 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var966!class ClassObject)
(declare-fun desiredAssertionStatus/-1561484483 (ClassObject) Bool)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3654_getLogger/1277108090 (String) var3654)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-const var2531 ClassObject var966!class) ; Statement: $r0 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;" 
(assert true)
(define-const var1127 Bool (desiredAssertionStatus/-1561484483 var2531)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>() 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var1127 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2260 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
(define-const var2907 Bool var2260) ; Statement: <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled> = $z1 
(define-const var778 ClassObject var966!class) ; Statement: $r1 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;" 
(assert true)
(define-const var2662 String (getName/-1958580599 var778)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var2207 var3654 (var3654_getLogger/1277108090 var2662)) ; Statement: $r3 = staticinvoke <org.jboss.logging.Logger: org.jboss.logging.Logger getLogger(java.lang.String)>($r2) 
(define-const var1810 var3654 var2207) ; Statement: <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG> = $r3 
(define-const var3308 String "$PlaceHolder$") ; Statement: $r4 = "$PlaceHolder$" 
(assert true)
(define-const var63 Int (length/-134980193 var3308)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var2300 Int var63) ; Statement: <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {desiredAssertionStatus/-1561484483=([java.lang.Class], boolean), getName/-1958580599=([java.lang.Class], java.lang.String), var3654_getLogger/1277108090=([java.lang.String], org.jboss.logging.Logger), length/-134980193=([java.lang.String], int)}
; {var966=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var2531=$r0, var1127=$z0, var2260=$z1, var2907=<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled>, var778=$r1, var2662=$r2, var3654=org.jboss.logging.Logger, var2207=$r3, var1810=<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG>, var3308=$r4, var63=$i0, var2300=<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH>}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var966, $r0=var2531, $z0=var1127, $z1=var2260, <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled>=var2907, $r1=var778, $r2=var2662, org.jboss.logging.Logger=var3654, $r3=var2207, <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG>=var1810, $r4=var3308, $i0=var63, <org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH>=var2300}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts $r0 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;";	$z0 = virtualinvoke $r0.<java.lang.Class: boolean desiredAssertionStatus()>();	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: boolean $assertionsDisabled> = $z1;	$r1 = class "Lorg/hibernate/sql/ordering/antlr/OrderByFragmentParser;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = staticinvoke <org.jboss.logging.Logger: org.jboss.logging.Logger getLogger(java.lang.String)>($r2);	<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: org.jboss.logging.Logger LOG> = $r3;	$r4 = "$PlaceHolder$";	$i0 = virtualinvoke $r4.<java.lang.String: int length()>();	<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: int TEMPLATE_MARKER_LENGTH> = $i0;	return
;block_num 3