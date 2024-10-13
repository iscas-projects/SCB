(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var109 0)
(declare-sort var495 0)
(declare-sort var2287 0)
(declare-sort var1144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2287_toLoggableString/-1786537726 (var2287 var495 var1144) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var109 var109)
(declare-const null-var495 var495)
(declare-const null-var2287 var2287)
(declare-const null-var1144 var1144)
(declare-const var396 var109) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var396 null-var109)))
(declare-const var3818 var495) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var3818 null-var495)))
(declare-const var2645 var2287) ; Statement: r4 := @parameter2: org.hibernate.type.Type 
(assert (not (= var2645 null-var2287)))
(declare-const var3206 var1144) ; Statement: r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3206 null-var1144)))
(define-const var3250 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3250)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3250!1 String)
(assert (= var3250!1 ""))
(assert true)
;(assert (append/-1166366385 var3250!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3250!2 String)
(assert (str.prefixof var3250!1 var3250!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert (not (not (= var396 null-var109)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var3250!2 "<null EntityPersister>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>") 
(declare-const var3250!3 String)
(assert (= var3250!3 (str.++ var3250!2 "<null EntityPersister>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3250!3 35)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var3250!4 String)
(assert (str.prefixof var3250!3 var3250!4))
 ; Statement: if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5) 
(assert (not (= var3818 null-var495))) ; Cond: r3 != null 
(define-const var3074 String (var2287_toLoggableString/-1786537726 var2645 var3818 var3206)) ; Statement: $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5) 
(assert true)
;(assert (append/672562846 var3250!4 var3074)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3250!5 String)
(assert (= var3250!5 (str.++ var3250!4 var3074)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3250!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3250!6 String)
(assert (str.prefixof var3250!5 var3250!6))
(assert true)
(define-const var1087 String (toString/-2075883882 var3250!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2287_toLoggableString/-1786537726=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var109=org.hibernate.persister.entity.EntityPersister, var396=r1, var495=java.lang.Object, var3818=r3, var2287=org.hibernate.type.Type, var2645=r4, var1144=org.hibernate.engine.spi.SessionFactoryImplementor, var3206=r5, var3250=$r0, var3074=$r6, var1087=$r7}
; {org.hibernate.persister.entity.EntityPersister=var109, r1=var396, java.lang.Object=var495, r3=var3818, org.hibernate.type.Type=var2287, r4=var2645, org.hibernate.engine.spi.SessionFactoryImplementor=var1144, r5=var3206, $r0=var3250, $r6=var3074, $r7=var1087}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: org.hibernate.type.Type;	r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null EntityPersister>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5);	$r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5