(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3329 0)
(declare-sort var672 0)
(declare-sort var1025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/1496540189 (var3329) var1025)
(declare-fun getComponentPath/-413349693 (var1025) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3329 var3329)
(declare-const null-String String)
(declare-const var1235 var3329) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentPropertyMapping 
(assert (not (= var1235 null-var3329)))
(declare-const var1634 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var1634 null-String)))
(define-const var466 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var466)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var466!1 String)
(assert (= var466!1 ""))
(define-const var1831 var1025 (this$0/1496540189 var1235)) ; Statement: $r2 = r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentPropertyMapping: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0> 
(assert true)
(define-const var2339 String (getComponentPath/-413349693 var1831)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getComponentPath()>() 
(assert true)
(define-const var3900 String (append/672562846 var466!1 var2339)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var466!2 String)
(assert (= var466!2 (str.++ var466!1 var2339)))
(assert true)
(define-const var1070 String (append/-1166366385 var3900 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3900!1 String)
(assert (str.prefixof var3900 var3900!1))
(assert true)
(define-const var1610 String (append/672562846 var1070 var1634)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1070!1 String)
(assert (= var1070!1 (str.++ var1070 var1634)))
(assert true)
(define-const var1580 String (toString/-2075883882 var1610)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/1496540189=([org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentPropertyMapping], org.hibernate.hql.internal.ast.tree.ComponentJoin), getComponentPath/-413349693=([org.hibernate.hql.internal.ast.tree.ComponentJoin], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3329=org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentPropertyMapping, var1235=r1, var1634=r5, var672=null_type, var466=$r0, var1025=org.hibernate.hql.internal.ast.tree.ComponentJoin, var1831=$r2, var2339=$r3, var3900=$r4, var1070=$r6, var1610=$r7, var1580=$r8}
; {org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentPropertyMapping=var3329, r1=var1235, r5=var1634, null_type=var672, $r0=var466, org.hibernate.hql.internal.ast.tree.ComponentJoin=var1025, $r2=var1831, $r3=var2339, $r4=var3900, $r6=var1070, $r7=var1610, $r8=var1580}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentPropertyMapping;	r5 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.hql.internal.ast.tree.ComponentJoin$ComponentPropertyMapping: org.hibernate.hql.internal.ast.tree.ComponentJoin this$0>;	$r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.tree.ComponentJoin: java.lang.String getComponentPath()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1