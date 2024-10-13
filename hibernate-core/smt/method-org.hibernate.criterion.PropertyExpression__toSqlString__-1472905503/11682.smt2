(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1571 0)
(declare-sort var3372 0)
(declare-sort var2711 0)
(declare-sort var499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun propertyName/1398017344 (var1571) String)
(declare-fun var2711_findColumns/-631918876 (var2711 String var3372) (Array Int String))
(declare-fun otherPropertyName/1398017344 (var1571) String)
(declare-fun getOp/1891624735 (var1571) String)
(declare-fun var499_add/1185074652 ((Array Int String) String (Array Int String)) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1571 var1571)
(declare-const null-var3372 var3372)
(declare-const null-var2711 var2711)
(declare-const var1647 var1571) ; Statement: r1 := @this: org.hibernate.criterion.PropertyExpression 
(assert (not (= var1647 null-var1571)))
(declare-const var806 var3372) ; Statement: r2 := @parameter0: org.hibernate.Criteria 
(assert (not (= var806 null-var3372)))
(declare-const var2487 var2711) ; Statement: r0 := @parameter1: org.hibernate.criterion.CriteriaQuery 
(assert (not (= var2487 null-var2711)))
(define-const var961 String (propertyName/1398017344 var1647)) ; Statement: $r3 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String propertyName> 
(define-const var2601 (Array Int String) (var2711_findColumns/-631918876 var2487 var961 var806)) ; Statement: r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2) 
(define-const var1632 String (otherPropertyName/1398017344 var1647)) ; Statement: $r5 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String otherPropertyName> 
(define-const var2630 (Array Int String) (var2711_findColumns/-631918876 var2487 var1632 var806)) ; Statement: r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r5, r2) 
(assert true)
(define-const var3930 String (getOp/1891624735 var1647)) ; Statement: $r7 = virtualinvoke r1.<org.hibernate.criterion.PropertyExpression: java.lang.String getOp()>() 
(define-const var486 (Array Int String) (var499_add/1185074652 var2601 var3930 var2630)) ; Statement: r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] add(java.lang.String[],java.lang.String,java.lang.String[])>(r4, $r7, r6) 
(define-const var3920 Int (getLength-Arr-String-1 var486)) ; Statement: $i0 = lengthof r8 
 ; Statement: if $i0 <= 1 goto $r9 = r8[0] 
(assert (not (<= var3920 1))) ; Negate: Cond: $i0 <= 1  
(define-const var2518 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2518)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2518!1 String)
(assert (= var2518!1 ""))
(assert true)
(define-const var1222 String (append/-1166366385 var2518!1 40)) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var2518!2 String)
(assert (str.prefixof var2518!1 var2518!2))
(define-const var1249 String (String_join/-1520935655 (cast-from-String-to-String " and ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var486))) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", r8) 
(assert true)
(define-const var941 String (append/672562846 var1222 var1249)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1222!1 String)
(assert (= var1222!1 (str.++ var1222 var1249)))
(assert true)
(define-const var2175 String (append/-1166366385 var941 41)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var941!1 String)
(assert (str.prefixof var941 var941!1))
(assert true)
(define-const var3722 String (toString/-2075883882 var2175)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {propertyName/1398017344=([org.hibernate.criterion.PropertyExpression], java.lang.String), var2711_findColumns/-631918876=([org.hibernate.criterion.CriteriaQuery, java.lang.String, org.hibernate.Criteria], java.lang.String[]), otherPropertyName/1398017344=([org.hibernate.criterion.PropertyExpression], java.lang.String), getOp/1891624735=([org.hibernate.criterion.PropertyExpression], java.lang.String), var499_add/1185074652=([java.lang.String[], java.lang.String, java.lang.String[]], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1571=org.hibernate.criterion.PropertyExpression, var1647=r1, var3372=org.hibernate.Criteria, var806=r2, var2711=org.hibernate.criterion.CriteriaQuery, var2487=r0, var961=$r3, var2601=r4, var1632=$r5, var2630=r6, var3930=$r7, var499=org.hibernate.internal.util.StringHelper, var486=r8, var3920=$i0, var2518=$r10, var1222=$r12, var1249=$r11, var941=$r13, var2175=$r14, var3722=$r15}
; {org.hibernate.criterion.PropertyExpression=var1571, r1=var1647, org.hibernate.Criteria=var3372, r2=var806, org.hibernate.criterion.CriteriaQuery=var2711, r0=var2487, $r3=var961, r4=var2601, $r5=var1632, r6=var2630, $r7=var3930, org.hibernate.internal.util.StringHelper=var499, r8=var486, $i0=var3920, $r10=var2518, $r12=var1222, $r11=var1249, $r13=var941, $r14=var2175, $r15=var3722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.PropertyExpression;	r2 := @parameter0: org.hibernate.Criteria;	r0 := @parameter1: org.hibernate.criterion.CriteriaQuery;	$r3 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String propertyName>;	r4 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r3, r2);	$r5 = r1.<org.hibernate.criterion.PropertyExpression: java.lang.String otherPropertyName>;	r6 = interfaceinvoke r0.<org.hibernate.criterion.CriteriaQuery: java.lang.String[] findColumns(java.lang.String,org.hibernate.Criteria)>($r5, r2);	$r7 = virtualinvoke r1.<org.hibernate.criterion.PropertyExpression: java.lang.String getOp()>();	r8 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String[] add(java.lang.String[],java.lang.String,java.lang.String[])>(r4, $r7, r6);	$i0 = lengthof r8;	if $i0 <= 1 goto $r9 = r8[0];	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r11 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" and ", r8);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2