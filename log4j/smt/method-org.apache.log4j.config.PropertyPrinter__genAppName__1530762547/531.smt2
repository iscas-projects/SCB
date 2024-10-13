(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun numAppenders/1682073539 (var580) Int)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var580 var580)
(declare-const var1349 var580) ; Statement: r1 := @this: org.apache.log4j.config.PropertyPrinter 
(assert (not (= var1349 null-var580)))
(define-const var1208 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1208)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1208!1 String)
(assert true)
(define-const var1635 String (append/1560614132 var1208!1 "A")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("A") 
(declare-const var1208!2 String)
(assert (str.prefixof var1208!1 var1208!2))
(define-const var833 Int (numAppenders/1682073539 var1349)) ; Statement: $i0 = r1.<org.apache.log4j.config.PropertyPrinter: int numAppenders> 
(define-const var3989 Int (+ var833 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var1349!1 var580)
(assert (not (= var1349!1 null-var580)))
(assert (= (numAppenders/1682073539 var1349!1) var3989)) ; Statement: r1.<org.apache.log4j.config.PropertyPrinter: int numAppenders> = $i1 
(assert true)
(define-const var2330 String (append/1845021834 var1635 var833)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0) 
(assert true)
(define-const var363 String (toString/-222306083 var2330)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), numAppenders/1682073539=([org.apache.log4j.config.PropertyPrinter], int), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var580=org.apache.log4j.config.PropertyPrinter, var1349=r1, var1208=$r0, var1635=$r2, var833=$i0, var3989=$i1, var2330=$r3, var363=$r4}
; {org.apache.log4j.config.PropertyPrinter=var580, r1=var1349, $r0=var1208, $r2=var1635, $i0=var833, $i1=var3989, $r3=var2330, $r4=var363}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.config.PropertyPrinter;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("A");	$i0 = r1.<org.apache.log4j.config.PropertyPrinter: int numAppenders>;	$i1 = $i0 + 1;	r1.<org.apache.log4j.config.PropertyPrinter: int numAppenders> = $i1;	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.String toString()>();	return $r4
;block_num 1