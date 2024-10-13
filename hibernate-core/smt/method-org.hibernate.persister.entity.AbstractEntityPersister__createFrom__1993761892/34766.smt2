(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var287 0)
(declare-sort var2548 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getSubclassTableName/1418716732 (var287 Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var287 var287)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1040 var287) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var1040 null-var287)))
(declare-const var261 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var261 null-Int)))
(declare-const var1015 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var1015 null-String)))
(define-const var1405 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1405)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1405!1 String)
(assert (= var1405!1 ""))
(assert true)
(define-const var3101 String (getSubclassTableName/1418716732 var1040 var261)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getSubclassTableName(int)>(i0) 
(assert true)
(define-const var3203 String (append/672562846 var1405!1 var3101)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1405!2 String)
(assert (= var1405!2 (str.++ var1405!1 var3101)))
(assert true)
(define-const var920 String (append/-1166366385 var3203 32)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3203!1 String)
(assert (str.prefixof var3203 var3203!1))
(assert true)
(define-const var424 String (append/672562846 var920 var1015)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var920!1 String)
(assert (= var920!1 (str.++ var920 var1015)))
(assert true)
(define-const var2536 String (toString/-2075883882 var424)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getSubclassTableName/1418716732=([org.hibernate.persister.entity.AbstractEntityPersister, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var287=org.hibernate.persister.entity.AbstractEntityPersister, var1040=r1, var261=i0, var1015=r4, var2548=null_type, var1405=$r0, var3101=$r2, var3203=$r3, var920=$r5, var424=$r6, var2536=$r7}
; {org.hibernate.persister.entity.AbstractEntityPersister=var287, r1=var1040, i0=var261, r4=var1015, null_type=var2548, $r0=var1405, $r2=var3101, $r3=var3203, $r5=var920, $r6=var424, $r7=var2536}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	i0 := @parameter0: int;	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getSubclassTableName(int)>(i0);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1