(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2161_iterator/-912451715 (var2161) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2161 var2161)
(declare-const var896 var2161) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var896 null-var2161)))
(define-const var1745 String "(") ; Statement: r14 = "(" 
(define-const var450 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var3778 Iterator (var2161_iterator/-912451715 var896)) ; Statement: r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1883 Bool (Iterator_hasNext/-1669924200 var3778)) ; Statement: $z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var1883 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1633 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1633)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1633!1 String)
(assert (= var1633!1 ""))
(assert true)
(define-const var1815 String (append/672562846 var1633!1 var1745)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1633!2 String)
(assert (= var1633!2 (str.++ var1633!1 var1745)))
(assert true)
(define-const var798 String (append/672562846 var1815 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1815!1 String)
(assert (= var1815!1 (str.++ var1815 ")")))
(assert true)
(define-const var1332 String (toString/-2075883882 var798)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2161_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2161=java.util.List, var896=r0, var1745=r14, var450=z1, var3778=r1, var1883=$z0, var1633=$r2, var1815=$r3, var798=$r4, var1332=$r5}
; {java.util.List=var2161, r0=var896, r14=var1745, z1=var450, r1=var3778, $z0=var1883, $r2=var1633, $r3=var1815, $r4=var798, $r5=var1332}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.util.List;	r14 = "(";	z1 = 1;	r1 = interfaceinvoke r0.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3