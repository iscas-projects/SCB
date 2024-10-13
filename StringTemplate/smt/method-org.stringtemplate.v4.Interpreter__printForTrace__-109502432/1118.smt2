(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var91 0)
(declare-sort var626 0)
(declare-sort var3113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun convertAnythingIteratableToIterator/929694353 (var91 var626 var3113) var3113)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3113) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var91 var91)
(declare-const null-String String)
(declare-const null-var626 var626)
(declare-const null-var3113 var3113)
(declare-const var3646 var91) ; Statement: r0 := @this: org.stringtemplate.v4.Interpreter 
(assert (not (= var3646 null-var91)))
(declare-const var3589 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3589 null-String)))
(declare-const var2954 var626) ; Statement: r1 := @parameter1: org.stringtemplate.v4.InstanceScope 
(assert (not (= var2954 null-var626)))
(declare-const var3047 var3113) ; Statement: r19 := @parameter2: java.lang.Object 
(assert (not (= var3047 null-var3113)))
(define-const var495 Bool false) ; Statement: $z0 = r19 instanceof org.stringtemplate.v4.ST 
 ; Statement: if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(assert (= (ite var495 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1681 var3113 (convertAnythingIteratableToIterator/929694353 var3646 var2954 var3047)) ; Statement: r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19) 
(define-const var1088 Bool false) ; Statement: $z1 = r20 instanceof java.util.Iterator 
 ; Statement: if $z1 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (= (ite var1088 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3666 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3666)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3666!1 String)
(assert (= var3666!1 ""))
(assert true)
(define-const var786 String (append/672562846 var3666!1 " ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3666!2 String)
(assert (= var3666!2 (str.++ var3666!1 " ")))
(assert true)
(define-const var2915 String (append/-1031950772 var786 var1681)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r20) 
(declare-const var786!1 String)
(assert (str.prefixof var786 var786!1))
(assert true)
(define-const var2273 String (toString/-2075883882 var2915)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var3589 var2273)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3589!1 String)
(assert (= var3589!1 (str.++ var3589 var2273)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {convertAnythingIteratableToIterator/929694353=([org.stringtemplate.v4.Interpreter, org.stringtemplate.v4.InstanceScope, java.lang.Object], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var91=org.stringtemplate.v4.Interpreter, var3646=r0, var3589=r2, var626=org.stringtemplate.v4.InstanceScope, var2954=r1, var3113=java.lang.Object, var3047=r19, var495=$z0, var1681=r20, var1088=$z1, var3666=$r3, var786=$r4, var2915=$r5, var2273=$r6}
; {org.stringtemplate.v4.Interpreter=var91, r0=var3646, r2=var3589, org.stringtemplate.v4.InstanceScope=var626, r1=var2954, java.lang.Object=var3113, r19=var3047, $z0=var495, r20=var1681, $z1=var1088, $r3=var3666, $r4=var786, $r5=var2915, $r6=var2273}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.Interpreter;	r2 := @parameter0: java.lang.StringBuilder;	r1 := @parameter1: org.stringtemplate.v4.InstanceScope;	r19 := @parameter2: java.lang.Object;	$z0 = r19 instanceof org.stringtemplate.v4.ST;	if $z0 == 0 goto r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	r20 = virtualinvoke r0.<org.stringtemplate.v4.Interpreter: java.lang.Object convertAnythingIteratableToIterator(org.stringtemplate.v4.InstanceScope,java.lang.Object)>(r1, r19);	$z1 = r20 instanceof java.util.Iterator;	if $z1 == 0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r20);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	return
;block_num 4