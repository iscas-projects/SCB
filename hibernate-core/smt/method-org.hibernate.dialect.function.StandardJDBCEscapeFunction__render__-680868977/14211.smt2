(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2922 0)
(declare-sort var3602 0)
(declare-sort var1810 0)
(declare-sort var2676 0)
(declare-sort var1607 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun render/-977478993 (var1607 var3602 var1810 var2676) String)
(declare-fun cast-from-var2922-to-var1607 (var2922) var1607)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2922 var2922)
(declare-const null-var3602 var3602)
(declare-const null-var1810 var1810)
(declare-const null-var2676 var2676)
(declare-const var2851 var2922) ; Statement: r1 := @this: org.hibernate.dialect.function.StandardJDBCEscapeFunction 
(assert (not (= var2851 null-var2922)))
(declare-const var2468 var3602) ; Statement: r2 := @parameter0: org.hibernate.type.Type 
(assert (not (= var2468 null-var3602)))
(declare-const var44 var1810) ; Statement: r3 := @parameter1: java.util.List 
(assert (not (= var44 null-var1810)))
(declare-const var2846 var2676) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2846 null-var2676)))
(define-const var1843 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1843)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1843!1 String)
(assert (= var1843!1 ""))
(assert true)
(define-const var2488 String (append/672562846 var1843!1 "{fn ")) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{fn ") 
(declare-const var1843!2 String)
(assert (= var1843!2 (str.++ var1843!1 "{fn ")))
(assert true)
(define-const var828 String (render/-977478993 (cast-from-var2922-to-var1607 var2851) var2468 var44 var2846)) ; Statement: $r5 = specialinvoke r1.<org.hibernate.dialect.function.StandardSQLFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>(r2, r3, r4) 
(assert true)
(define-const var1611 String (append/672562846 var2488 var828)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2488!1 String)
(assert (= var2488!1 (str.++ var2488 var828)))
(assert true)
(define-const var2272 String (append/672562846 var1611 "}")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var1611!1 String)
(assert (= var1611!1 (str.++ var1611 "}")))
(assert true)
(define-const var1494 String (toString/-2075883882 var2272)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), render/-977478993=([org.hibernate.dialect.function.StandardSQLFunction, org.hibernate.type.Type, java.util.List, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), cast-from-var2922-to-var1607=([org.hibernate.dialect.function.StandardJDBCEscapeFunction], org.hibernate.dialect.function.StandardSQLFunction), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2922=org.hibernate.dialect.function.StandardJDBCEscapeFunction, var2851=r1, var3602=org.hibernate.type.Type, var2468=r2, var1810=java.util.List, var44=r3, var2676=org.hibernate.engine.spi.SessionFactoryImplementor, var2846=r4, var1843=$r0, var2488=$r6, var1607=org.hibernate.dialect.function.StandardSQLFunction, var828=$r5, var1611=$r7, var2272=$r8, var1494=$r9}
; {org.hibernate.dialect.function.StandardJDBCEscapeFunction=var2922, r1=var2851, org.hibernate.type.Type=var3602, r2=var2468, java.util.List=var1810, r3=var44, org.hibernate.engine.spi.SessionFactoryImplementor=var2676, r4=var2846, $r0=var1843, $r6=var2488, org.hibernate.dialect.function.StandardSQLFunction=var1607, $r5=var828, $r7=var1611, $r8=var2272, $r9=var1494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.dialect.function.StandardJDBCEscapeFunction;	r2 := @parameter0: org.hibernate.type.Type;	r3 := @parameter1: java.util.List;	r4 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{fn ");	$r5 = specialinvoke r1.<org.hibernate.dialect.function.StandardSQLFunction: java.lang.String render(org.hibernate.type.Type,java.util.List,org.hibernate.engine.spi.SessionFactoryImplementor)>(r2, r3, r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1