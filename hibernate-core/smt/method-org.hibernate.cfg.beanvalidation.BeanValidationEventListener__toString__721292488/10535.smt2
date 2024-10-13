(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2458 var2458)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var3943 var2458) ; Statement: r6 := @this: org.hibernate.cfg.beanvalidation.BeanValidationEventListener 
(assert (not (= var3943 null-var2458)))
(declare-const var2725 (Array Int ClassObject)) ; Statement: r1 := @parameter0: java.lang.Class[] 
(assert (not (= var2725 null-__Array__Int__ClassObject__)))
(define-const var3941 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3941 "[")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[") 
(declare-const var3941!1 String)
(assert (= var3941!1 "["))
(define-const var1567 Int (getLength-Arr-ClassObject-1 var2725)) ; Statement: i0 = lengthof r1 
(define-const var922 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (>= var922 var1567)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/672562846 var3941!1 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3941!2 String)
(assert (= var3941!2 (str.++ var3941!1 "]")))
(assert true)
(define-const var626 String (toString/-2075883882 var3941!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), getLength-Arr-ClassObject-1=([java.lang.Class[]], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2458=org.hibernate.cfg.beanvalidation.BeanValidationEventListener, var3943=r6, var2725=r1, var3941=$r0, var1567=i0, var922=i1, var626=$r2}
; {org.hibernate.cfg.beanvalidation.BeanValidationEventListener=var2458, r6=var3943, r1=var2725, $r0=var3941, i0=var1567, i1=var922, $r2=var626}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.cfg.beanvalidation.BeanValidationEventListener;	r1 := @parameter0: java.lang.Class[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("[");	i0 = lengthof r1;	i1 = 0;	if i1 >= i0 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3