(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2774 0)
(declare-sort var2103 0)
(declare-sort var3774 0)
(declare-sort var673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getRenderedName/-867389827 (var2774 var3774) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var3774_size/-959786421 (var3774) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2774 var2774)
(declare-const null-var2103 var2103)
(declare-const null-var3774 var3774)
(declare-const null-var673 var673)
(declare-const var1085 var2774) ; Statement: r1 := @this: org.hibernate.dialect.function.StandardSQLFunction 
(assert (not (= var1085 null-var2774)))
(declare-const var1775 var2103) ; Statement: r8 := @parameter0: org.hibernate.type.Type 
(assert (not (= var1775 null-var2103)))
(declare-const var3011 var3774) ; Statement: r2 := @parameter1: java.util.List 
(assert (not (= var3011 null-var3774)))
(declare-const var1503 var673) ; Statement: r9 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var1503 null-var673)))
(define-const var1743 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1743)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1743!1 String)
(assert (= var1743!1 ""))
(assert true)
(define-const var3372 String (getRenderedName/-867389827 var1085 var3011)) ; Statement: $r3 = virtualinvoke r1.<org.hibernate.dialect.function.StandardSQLFunction: java.lang.String getRenderedName(java.util.List)>(r2) 
(assert true)
(define-const var3939 String (append/672562846 var1743!1 var3372)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1743!2 String)
(assert (= var1743!2 (str.++ var1743!1 var3372)))
(assert true)
;(assert (append/-1166366385 var3939 40)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(declare-const var3939!1 String)
(assert (str.prefixof var3939 var3939!1))
(define-const var2312 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1967 Int (var3774_size/-959786421 var3011)) ; Statement: $i0 = interfaceinvoke r2.<java.util.List: int size()>() 
 ; Statement: if i3 >= $i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (>= var2312 var1967)) ; Cond: i3 >= $i0 
(assert true)
(define-const var3932 String (append/-1166366385 var1743!2 41)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1743!3 String)
(assert (str.prefixof var1743!2 var1743!3))
(assert true)
(define-const var663 String (toString/-2075883882 var3932)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getRenderedName/-867389827=([org.hibernate.dialect.function.StandardSQLFunction, java.util.List], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var3774_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2774=org.hibernate.dialect.function.StandardSQLFunction, var1085=r1, var2103=org.hibernate.type.Type, var1775=r8, var3774=java.util.List, var3011=r2, var673=org.hibernate.engine.spi.SessionFactoryImplementor, var1503=r9, var1743=$r0, var3372=$r3, var3939=$r4, var2312=i3, var1967=$i0, var3932=$r5, var663=$r6}
; {org.hibernate.dialect.function.StandardSQLFunction=var2774, r1=var1085, org.hibernate.type.Type=var2103, r8=var1775, java.util.List=var3774, r2=var3011, org.hibernate.engine.spi.SessionFactoryImplementor=var673, r9=var1503, $r0=var1743, $r3=var3372, $r4=var3939, i3=var2312, $i0=var1967, $r5=var3932, $r6=var663}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.StandardSQLFunction;	r8 := @parameter0: org.hibernate.type.Type;	r2 := @parameter1: java.util.List;	r9 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r1.<org.hibernate.dialect.function.StandardSQLFunction: java.lang.String getRenderedName(java.util.List)>(r2);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	i3 = 0;	$i0 = interfaceinvoke r2.<java.util.List: int size()>();	if i3 >= $i0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3