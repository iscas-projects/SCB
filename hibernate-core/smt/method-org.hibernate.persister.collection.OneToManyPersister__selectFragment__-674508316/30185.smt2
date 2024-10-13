(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3202 0)
(declare-sort var1679 0)
(declare-sort var127 0)
(declare-sort var803 0)
(declare-sort var27 0)
(declare-sort var703 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getElementPersister/-1157577290 (var27) var803)
(declare-fun cast-from-var3202-to-var27 (var3202) var27)
(declare-fun cast-from-var803-to-var703 (var803) var703)
(declare-fun var703_selectFragment/-822025103 (var703 String String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3202 var3202)
(declare-const null-var1679 var1679)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2450 var3202) ; Statement: r1 := @this: org.hibernate.persister.collection.OneToManyPersister 
(assert (not (= var2450 null-var3202)))
(declare-const var2857 var1679) ; Statement: r12 := @parameter0: org.hibernate.persister.entity.Joinable 
(assert (not (= var2857 null-var1679)))
(declare-const var1787 String) ; Statement: r13 := @parameter1: java.lang.String 
(assert (not (= var1787 null-String)))
(declare-const var3798 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var3798 null-String)))
(declare-const var700 String) ; Statement: r4 := @parameter3: java.lang.String 
(assert (not (= var700 null-String)))
(declare-const var1053 String) ; Statement: r8 := @parameter4: java.lang.String 
(assert (not (= var1053 null-String)))
(declare-const var1207 Bool) ; Statement: z0 := @parameter5: boolean 
(assert (not (= var1207 null-Bool)))
(define-const var3423 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3423)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3423!1 String)
(assert (= var3423!1 ""))
 ; Statement: if z0 == 0 goto $r2 = virtualinvoke r1.<org.hibernate.persister.collection.OneToManyPersister: org.hibernate.persister.entity.EntityPersister getElementPersister()>() 
(assert (= (ite var1207 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3262 var803 (getElementPersister/-1157577290 (cast-from-var3202-to-var27 var2450))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.collection.OneToManyPersister: org.hibernate.persister.entity.EntityPersister getElementPersister()>() 
(define-const var2688 var703 (cast-from-var803-to-var703 var3262)) ; Statement: $r11 = (org.hibernate.persister.entity.OuterJoinLoadable) $r2 
(define-const var2250 String (var703_selectFragment/-822025103 var2688 var3798 var700)) ; Statement: $r5 = interfaceinvoke $r11.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r3, r4) 
(assert true)
(define-const var2145 String (append/672562846 var3423!1 var2250)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3423!2 String)
(assert (= var3423!2 (str.++ var3423!1 var2250)))
(assert true)
(define-const var2794 String (toString/-2075883882 var2145)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getElementPersister/-1157577290=([org.hibernate.persister.collection.AbstractCollectionPersister], org.hibernate.persister.entity.EntityPersister), cast-from-var3202-to-var27=([org.hibernate.persister.collection.OneToManyPersister], org.hibernate.persister.collection.AbstractCollectionPersister), cast-from-var803-to-var703=([org.hibernate.persister.entity.EntityPersister], org.hibernate.persister.entity.OuterJoinLoadable), var703_selectFragment/-822025103=([org.hibernate.persister.entity.OuterJoinLoadable, java.lang.String, java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3202=org.hibernate.persister.collection.OneToManyPersister, var2450=r1, var1679=org.hibernate.persister.entity.Joinable, var2857=r12, var1787=r13, var127=null_type, var3798=r3, var700=r4, var1053=r8, var1207=z0, var3423=$r0, var803=org.hibernate.persister.entity.EntityPersister, var27=org.hibernate.persister.collection.AbstractCollectionPersister, var3262=$r2, var703=org.hibernate.persister.entity.OuterJoinLoadable, var2688=$r11, var2250=$r5, var2145=$r6, var2794=$r7}
; {org.hibernate.persister.collection.OneToManyPersister=var3202, r1=var2450, org.hibernate.persister.entity.Joinable=var1679, r12=var2857, r13=var1787, null_type=var127, r3=var3798, r4=var700, r8=var1053, z0=var1207, $r0=var3423, org.hibernate.persister.entity.EntityPersister=var803, org.hibernate.persister.collection.AbstractCollectionPersister=var27, $r2=var3262, org.hibernate.persister.entity.OuterJoinLoadable=var703, $r11=var2688, $r5=var2250, $r6=var2145, $r7=var2794}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.collection.OneToManyPersister;	r12 := @parameter0: org.hibernate.persister.entity.Joinable;	r13 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	r4 := @parameter3: java.lang.String;	r8 := @parameter4: java.lang.String;	z0 := @parameter5: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if z0 == 0 goto $r2 = virtualinvoke r1.<org.hibernate.persister.collection.OneToManyPersister: org.hibernate.persister.entity.EntityPersister getElementPersister()>();	$r2 = virtualinvoke r1.<org.hibernate.persister.collection.OneToManyPersister: org.hibernate.persister.entity.EntityPersister getElementPersister()>();	$r11 = (org.hibernate.persister.entity.OuterJoinLoadable) $r2;	$r5 = interfaceinvoke $r11.<org.hibernate.persister.entity.OuterJoinLoadable: java.lang.String selectFragment(java.lang.String,java.lang.String)>(r3, r4);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2