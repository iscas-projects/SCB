(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var270 0)
(declare-sort var2110 0)
(declare-sort var758 0)
(declare-sort var3586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3586) void)
(declare-fun cast-from-var270-to-var3586 (var270) var3586)
(declare-fun owner/1926738390 (var270) var2110)
(declare-fun associationPath/1926738390 (var270) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2110_getEntityName/-1914780628 (var2110) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun role/1926738390 (var270) String)
(declare-const null-var270 var270)
(declare-const null-var2110 var2110)
(declare-const null-String String)
(declare-const var2462 var270) ; Statement: r0 := @this: org.hibernate.engine.profile.Association 
(assert (not (= var2462 null-var270)))
(declare-const var1786 var2110) ; Statement: r1 := @parameter0: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var1786 null-var2110)))
(declare-const var130 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var130 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var270-to-var3586 var2462))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2462!1 var270)
(declare-const var2462!2 var270)
(assert (not (= var2462!2 null-var270)))
(assert (= (owner/1926738390 var2462!2) var1786)) ; Statement: r0.<org.hibernate.engine.profile.Association: org.hibernate.persister.entity.EntityPersister owner> = r1 
(declare-const var2462!3 var270)
(assert (not (= var2462!3 null-var270)))
(assert (= (associationPath/1926738390 var2462!3) var130)) ; Statement: r0.<org.hibernate.engine.profile.Association: java.lang.String associationPath> = r2 
(define-const var2929 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2929)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2929!1 String)
(assert (= var2929!1 ""))
(define-const var114 String (var2110_getEntityName/-1914780628 var1786)) ; Statement: $r4 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var3346 String (append/672562846 var2929!1 var114)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2929!2 String)
(assert (= var2929!2 (str.++ var2929!1 var114)))
(assert true)
(define-const var2800 String (append/-1166366385 var3346 46)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var3346!1 String)
(assert (str.prefixof var3346 var3346!1))
(assert true)
(define-const var3020 String (append/672562846 var2800 var130)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2800!1 String)
(assert (= var2800!1 (str.++ var2800 var130)))
(assert true)
(define-const var3185 String (toString/-2075883882 var3020)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2462!4 var270)
(assert (not (= var2462!4 null-var270)))
(assert (= (role/1926738390 var2462!4) var3185)) ; Statement: r0.<org.hibernate.engine.profile.Association: java.lang.String role> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var270-to-var3586=([org.hibernate.engine.profile.Association], java.lang.Object), owner/1926738390=([org.hibernate.engine.profile.Association], org.hibernate.persister.entity.EntityPersister), associationPath/1926738390=([org.hibernate.engine.profile.Association], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2110_getEntityName/-1914780628=([org.hibernate.persister.entity.EntityPersister], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), role/1926738390=([org.hibernate.engine.profile.Association], java.lang.String)}
; {var270=org.hibernate.engine.profile.Association, var2462=r0, var2110=org.hibernate.persister.entity.EntityPersister, var1786=r1, var130=r2, var758=null_type, var3586=java.lang.Object, var2929=$r3, var114=$r4, var3346=$r5, var2800=$r6, var3020=$r7, var3185=$r8}
; {org.hibernate.engine.profile.Association=var270, r0=var2462, org.hibernate.persister.entity.EntityPersister=var2110, r1=var1786, r2=var130, null_type=var758, java.lang.Object=var3586, $r3=var2929, $r4=var114, $r5=var3346, $r6=var2800, $r7=var3020, $r8=var3185}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.profile.Association;	r1 := @parameter0: org.hibernate.persister.entity.EntityPersister;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.hibernate.engine.profile.Association: org.hibernate.persister.entity.EntityPersister owner> = r1;	r0.<org.hibernate.engine.profile.Association: java.lang.String associationPath> = r2;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = interfaceinvoke r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getEntityName()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<org.hibernate.engine.profile.Association: java.lang.String role> = $r8;	return
;block_num 1