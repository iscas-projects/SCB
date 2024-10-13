(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3145 0)
(declare-sort var3642 0)
(declare-sort var1801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun propertyNames/509353222 (var3145) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3145 var3145)
(declare-const null-var3642 var3642)
(declare-const null-var1801 var1801)
(declare-const var1870 var3145) ; Statement: r1 := @this: org.hibernate.criterion.PropertiesSubqueryExpression 
(assert (not (= var1870 null-var3145)))
(declare-const var864 var3642) ; Statement: r8 := @parameter0: org.hibernate.Criteria 
(assert (not (= var864 null-var3642)))
(declare-const var3871 var1801) ; Statement: r7 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var3871 null-var1801)))
(define-const var2767 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2767 "(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("(") 
(declare-const var2767!1 String)
(assert (= var2767!1 "("))
(define-const var3794 (Array Int String) (propertyNames/509353222 var1870)) ; Statement: $r2 = r1.<org.hibernate.criterion.PropertiesSubqueryExpression: java.lang.String[] propertyNames> 
(define-const var3643 Int (getLength-Arr-String-1 var3794)) ; Statement: $i0 = lengthof $r2 
(define-const var535 (Array Int String) arr-String-init) ; Statement: r3 = newarray (java.lang.String)[$i0] 
(define-const var828 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var102 Int (getLength-Arr-String-1 var535)) ; Statement: $i1 = lengthof r3 
 ; Statement: if i2 >= $i1 goto $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r3) 
(assert (>= var828 var102)) ; Cond: i2 >= $i1 
(define-const var3995 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var535))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r3) 
(assert true)
;(assert (append/672562846 var2767!1 var3995)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2767!2 String)
(assert (= var2767!2 (str.++ var2767!1 var3995)))
(assert true)
(define-const var3581 String (append/672562846 var2767!2 ")")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2767!3 String)
(assert (= var2767!3 (str.++ var2767!2 ")")))
(assert true)
(define-const var3377 String (toString/-2075883882 var3581)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), propertyNames/509353222=([org.hibernate.criterion.PropertiesSubqueryExpression], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), arr-String-init=([], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3145=org.hibernate.criterion.PropertiesSubqueryExpression, var1870=r1, var3642=org.hibernate.Criteria, var864=r8, var1801=org.hibernate.criterion.CriteriaQuery, var3871=r7, var2767=$r0, var3794=$r2, var3643=$i0, var535=r3, var828=i2, var102=$i1, var3995=$r4, var3581=$r5, var3377=$r6}
; {org.hibernate.criterion.PropertiesSubqueryExpression=var3145, r1=var1870, org.hibernate.Criteria=var3642, r8=var864, org.hibernate.criterion.CriteriaQuery=var1801, r7=var3871, $r0=var2767, $r2=var3794, $i0=var3643, r3=var535, i2=var828, $i1=var102, $r4=var3995, $r5=var3581, $r6=var3377}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.PropertiesSubqueryExpression;	r8 := @parameter0: org.hibernate.Criteria;	r7 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("(");	$r2 = r1.<org.hibernate.criterion.PropertiesSubqueryExpression: java.lang.String[] propertyNames>;	$i0 = lengthof $r2;	r3 = newarray (java.lang.String)[$i0];	i2 = 0;	$i1 = lengthof r3;	if i2 >= $i1 goto $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r3);	$r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3