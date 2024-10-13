(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1089 0)
(declare-sort var614 0)
(declare-sort var3505 0)
(declare-sort var3841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1089_getEntityName/-1914780628 (var1089) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3505_toLoggableString/-1786537726 (var3505 var614 var3841) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1089 var1089)
(declare-const null-var614 var614)
(declare-const null-var3505 var3505)
(declare-const null-var3841 var3841)
(declare-const var537 var1089) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var537 null-var1089)))
(declare-const var419 var614) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var419 null-var614)))
(declare-const var3409 var3505) ; Statement: r4 := @parameter2: org.hibernate.type.Type 
(assert (not (= var3409 null-var3505)))
(declare-const var3210 var3841) ; Statement: r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3210 null-var3841)))
(define-const var1047 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1047)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1047!1 String)
(assert (= var1047!1 ""))
(assert true)
;(assert (append/-1166366385 var1047!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1047!2 String)
(assert (str.prefixof var1047!1 var1047!2))
 ; Statement: if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert (not (= var537 null-var1089))) ; Cond: r1 != null 
(define-const var3595 String (var1089_getEntityName/-1914780628 var537)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
;(assert (append/672562846 var1047!2 var3595)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1047!3 String)
(assert (= var1047!3 (str.++ var1047!2 var3595)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1047!3 35)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var1047!4 String)
(assert (str.prefixof var1047!3 var1047!4))
 ; Statement: if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5) 
(assert (not (= var419 null-var614))) ; Cond: r3 != null 
(define-const var643 String (var3505_toLoggableString/-1786537726 var3409 var419 var3210)) ; Statement: $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5) 
(assert true)
;(assert (append/672562846 var1047!4 var643)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1047!5 String)
(assert (= var1047!5 (str.++ var1047!4 var643)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var1047!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1047!6 String)
(assert (str.prefixof var1047!5 var1047!6))
(assert true)
(define-const var1005 String (toString/-2075883882 var1047!6)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1089_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3505_toLoggableString/-1786537726=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1089=org.hibernate.persister.entity.EntityPersister, var537=r1, var614=java.lang.Object, var419=r3, var3505=org.hibernate.type.Type, var3409=r4, var3841=org.hibernate.engine.spi.SessionFactoryImplementor, var3210=r5, var1047=$r0, var3595=$r2, var643=$r6, var1005=$r7}
; {org.hibernate.persister.entity.EntityPersister=var1089, r1=var537, java.lang.Object=var614, r3=var419, org.hibernate.type.Type=var3505, r4=var3409, org.hibernate.engine.spi.SessionFactoryImplementor=var3841, r5=var3210, $r0=var1047, $r2=var3595, $r6=var643, $r7=var1005}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r3 := @parameter1: java.lang.Object;	r4 := @parameter2: org.hibernate.type.Type;	r5 := @parameter3: org.hibernate.engine.spi.SessionFactoryImplementor;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto $r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r2 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r3 != null goto $r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5);	$r6 = interfaceinvoke r4.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 5