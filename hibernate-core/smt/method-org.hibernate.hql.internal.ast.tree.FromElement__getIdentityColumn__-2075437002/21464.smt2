(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getIdentityColumns/-461833485 (var391) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var391 var391)
(declare-const var2089 var391) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var2089 null-var391)))
(assert true)
(define-const var1554 (Array Int String) (getIdentityColumns/-461833485 var2089)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] getIdentityColumns()>() 
(define-const var1307 Int (getLength-Arr-String-1 var1554)) ; Statement: $i0 = lengthof r1 
 ; Statement: if $i0 != 1 goto $r2 = new java.lang.StringBuilder 
(assert (not (= var1307 1))) ; Cond: $i0 != 1 
(define-const var3073 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3073)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3073!1 String)
(assert (= var3073!1 ""))
(assert true)
(define-const var903 String (append/672562846 var3073!1 "(")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3073!2 String)
(assert (= var3073!2 (str.++ var3073!1 "(")))
(define-const var2372 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1554))) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r1) 
(assert true)
(define-const var1513 String (append/672562846 var903 var2372)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var903!1 String)
(assert (= var903!1 (str.++ var903 var2372)))
(assert true)
(define-const var2135 String (append/672562846 var1513 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1513!1 String)
(assert (= var1513!1 (str.++ var1513 ")")))
(assert true)
(define-const var757 String (toString/-2075883882 var2135)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getIdentityColumns/-461833485=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var391=org.hibernate.hql.internal.ast.tree.FromElement, var2089=r0, var1554=r1, var1307=$i0, var3073=$r2, var903=$r4, var2372=$r3, var1513=$r5, var2135=$r6, var757=$r7}
; {org.hibernate.hql.internal.ast.tree.FromElement=var391, r0=var2089, r1=var1554, $i0=var1307, $r2=var3073, $r4=var903, $r3=var2372, $r5=var1513, $r6=var2135, $r7=var757}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.FromElement;	r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String[] getIdentityColumns()>();	$i0 = lengthof r1;	if $i0 != 1 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2