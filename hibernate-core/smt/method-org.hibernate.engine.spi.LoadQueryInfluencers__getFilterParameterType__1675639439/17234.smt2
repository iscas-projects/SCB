(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var851 0)
(declare-sort var826 0)
(declare-sort var703 0)
(declare-sort var923 0)
(declare-sort var1163 0)
(declare-sort var797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var851_parseFilterParameterName/316962406 (String) (Array Int String))
(declare-fun sessionFactory/-913454020 (var851) var703)
(declare-fun var1163_getFilterDefinition/-1909396566 (var1163 String) var923)
(declare-fun cast-from-var703-to-var1163 (var703) var1163)
(declare-fun var797-init () var797)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var797 String) void)
(declare-const null-var851 var851)
(declare-const null-String String)
(declare-const null-var923 var923)
(declare-const var1810 var851) ; Statement: r2 := @this: org.hibernate.engine.spi.LoadQueryInfluencers 
(assert (not (= var1810 null-var851)))
(declare-const var1921 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1921 null-String)))
(define-const var845 (Array Int String) (var851_parseFilterParameterName/316962406 var1921)) ; Statement: r1 = staticinvoke <org.hibernate.engine.spi.LoadQueryInfluencers: java.lang.String[] parseFilterParameterName(java.lang.String)>(r0) 
(define-const var570 var703 (sessionFactory/-913454020 var1810)) ; Statement: $r4 = r2.<org.hibernate.engine.spi.LoadQueryInfluencers: org.hibernate.engine.spi.SessionFactoryImplementor sessionFactory> 
(define-const var3234 String (select var845 0)) ; Statement: $r3 = r1[0] 
(define-const var1139 var923 (var1163_getFilterDefinition/-1909396566 (cast-from-var703-to-var1163 var570) var3234)) ; Statement: r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.spi.FilterDefinition getFilterDefinition(java.lang.String)>($r3) 
 ; Statement: if r5 != null goto $r6 = r1[1] 
(assert (not (not (= var1139 null-var923)))) ; Negate: Cond: r5 != null  
(define-const var446 var797 var797-init) ; Statement: $r9 = new java.lang.IllegalArgumentException 
(define-const var3317 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3317)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3317!1 String)
(assert (= var3317!1 ""))
(assert true)
(define-const var3500 String (append/672562846 var3317!1 "Filter [")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filter [") 
(declare-const var3317!2 String)
(assert (= var3317!2 (str.++ var3317!1 "Filter [")))
(define-const var2104 String (select var845 0)) ; Statement: $r11 = r1[0] 
(assert true)
(define-const var2021 String (append/672562846 var3500 var2104)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3500!1 String)
(assert (= var3500!1 (str.++ var3500 var2104)))
(assert true)
(define-const var3394 String (append/672562846 var2021 "] not defined")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not defined") 
(declare-const var2021!1 String)
(assert (= var2021!1 (str.++ var2021 "] not defined")))
(assert true)
(define-const var1598 String (toString/-2075883882 var3394)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var446 var1598)) ; Statement: specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15) 

(declare-const var446!1 var797)
(declare-const var1598!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var851_parseFilterParameterName/316962406=([java.lang.String], java.lang.String[]), sessionFactory/-913454020=([org.hibernate.engine.spi.LoadQueryInfluencers], org.hibernate.engine.spi.SessionFactoryImplementor), var1163_getFilterDefinition/-1909396566=([org.hibernate.SessionFactory, java.lang.String], org.hibernate.engine.spi.FilterDefinition), cast-from-var703-to-var1163=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.SessionFactory), var797-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var851=org.hibernate.engine.spi.LoadQueryInfluencers, var1810=r2, var1921=r0, var826=null_type, var845=r1, var703=org.hibernate.engine.spi.SessionFactoryImplementor, var570=$r4, var3234=$r3, var923=org.hibernate.engine.spi.FilterDefinition, var1163=org.hibernate.SessionFactory, var1139=r5, var797=java.lang.IllegalArgumentException, var446=$r9, var3317=$r10, var3500=$r12, var2104=$r11, var2021=$r13, var3394=$r14, var1598=$r15}
; {org.hibernate.engine.spi.LoadQueryInfluencers=var851, r2=var1810, r0=var1921, null_type=var826, r1=var845, org.hibernate.engine.spi.SessionFactoryImplementor=var703, $r4=var570, $r3=var3234, org.hibernate.engine.spi.FilterDefinition=var923, org.hibernate.SessionFactory=var1163, r5=var1139, java.lang.IllegalArgumentException=var797, $r9=var446, $r10=var3317, $r12=var3500, $r11=var2104, $r13=var2021, $r14=var3394, $r15=var1598}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.engine.spi.LoadQueryInfluencers;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <org.hibernate.engine.spi.LoadQueryInfluencers: java.lang.String[] parseFilterParameterName(java.lang.String)>(r0);	$r4 = r2.<org.hibernate.engine.spi.LoadQueryInfluencers: org.hibernate.engine.spi.SessionFactoryImplementor sessionFactory>;	$r3 = r1[0];	r5 = interfaceinvoke $r4.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.engine.spi.FilterDefinition getFilterDefinition(java.lang.String)>($r3);	if r5 != null goto $r6 = r1[1];	$r9 = new java.lang.IllegalArgumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Filter [");	$r11 = r1[0];	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] not defined");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r15);	throw $r9
;block_num 2