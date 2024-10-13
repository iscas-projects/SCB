(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3008 0)
(declare-sort var3258 0)
(declare-sort var3152 0)
(declare-sort var2757 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun associationPropertyName/-645341162 (var3008) String)
(declare-fun var3152_getForeignKeyColumns/1282874126 (var3152 var3258 String) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun operator/-645341162 (var3008) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2757_suffix/-1483522881 ((Array Int String) String) (Array Int String))
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-const null-var3008 var3008)
(declare-const null-var3258 var3258)
(declare-const null-var3152 var3152)
(declare-const var1081 var3008) ; Statement: r2 := @this: org.hibernate.criterion.ForeignKeyExpression 
(assert (not (= var1081 null-var3008)))
(declare-const var611 var3258) ; Statement: r1 := @parameter0: org.hibernate.Criteria 
(assert (not (= var611 null-var3258)))
(declare-const var766 var3152) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var766 null-var3152)))
(define-const var361 String (associationPropertyName/-645341162 var1081)) ; Statement: $r3 = r2.<org.hibernate.criterion.ForeignKeyExpression: java.lang.String associationPropertyName> 
(define-const var2867 (Array Int String) (var3152_getForeignKeyColumns/1282874126 var766 var611 var361)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getForeignKeyColumns(org.hibernate.Criteria,java.lang.String)>(r1, $r3) 
(define-const var954 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var954)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var954!1 String)
(assert (= var954!1 ""))
(define-const var3812 String (operator/-645341162 var1081)) ; Statement: $r6 = r2.<org.hibernate.criterion.ForeignKeyExpression: java.lang.String operator> 
(assert true)
(define-const var1744 String (append/672562846 var954!1 var3812)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var954!2 String)
(assert (= var954!2 (str.++ var954!1 var3812)))
(assert true)
(define-const var3470 String (append/672562846 var1744 "  ?")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ?") 
(declare-const var1744!1 String)
(assert (= var1744!1 (str.++ var1744 "  ?")))
(assert true)
(define-const var2054 String (toString/-2075883882 var3470)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2405 (Array Int String) (var2757_suffix/-1483522881 var2867 var2054)) ; Statement: $r10 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, $r9) 
(define-const var3138 String (String_join/-1520935655 (cast-from-String-to-String " and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2405))) ; Statement: r15 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r10) 
(define-const var246 Int (getLength-Arr-String-1 var2867)) ; Statement: $i0 = lengthof r4 
 ; Statement: if $i0 <= 1 goto return r15 
(assert (<= var246 1)) ; Cond: $i0 <= 1 
 ; Statement: return r15 
(check-sat)
(get-model)
(get-unsat-core)
; {associationPropertyName/-645341162=([org.hibernate.criterion.ForeignKeyExpression], java.lang.String), var3152_getForeignKeyColumns/1282874126=([org.hibernate.criterion.CriteriaQuery, org.hibernate.Criteria, java.lang.String], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), operator/-645341162=([org.hibernate.criterion.ForeignKeyExpression], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2757_suffix/-1483522881=([java.lang.String[], java.lang.String], java.lang.String[]), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), getLength-Arr-String-1=([java.lang.String[]], int)}
; {var3008=org.hibernate.criterion.ForeignKeyExpression, var1081=r2, var3258=org.hibernate.Criteria, var611=r1, var3152=org.hibernate.criterion.CriteriaQuery, var766=r0, var361=$r3, var2867=r4, var954=$r5, var3812=$r6, var1744=$r7, var3470=$r8, var2054=$r9, var2757=org.hibernate.internal.util.StringHelper, var2405=$r10, var3138=r15, var246=$i0}
; {org.hibernate.criterion.ForeignKeyExpression=var3008, r2=var1081, org.hibernate.Criteria=var3258, r1=var611, org.hibernate.criterion.CriteriaQuery=var3152, r0=var766, $r3=var361, r4=var2867, $r5=var954, $r6=var3812, $r7=var1744, $r8=var3470, $r9=var2054, org.hibernate.internal.util.StringHelper=var2757, $r10=var2405, r15=var3138, $i0=var246}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r2 := @this: org.hibernate.criterion.ForeignKeyExpression;	r1 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r2.<org.hibernate.criterion.ForeignKeyExpression: java.lang.String associationPropertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] getForeignKeyColumns(org.hibernate.Criteria,java.lang.String)>(r1, $r3);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = r2.<org.hibernate.criterion.ForeignKeyExpression: java.lang.String operator>;	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  ?");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] suffix(java.lang.String[],java.lang.String)>(r4, $r9);	r15 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", $r10);	$i0 = lengthof r4;	if $i0 <= 1 goto return r15;	return r15
;block_num 2