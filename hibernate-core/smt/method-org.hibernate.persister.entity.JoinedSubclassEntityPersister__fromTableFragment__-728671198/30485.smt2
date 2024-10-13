(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2321 0)
(declare-sort var2189 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTableName/655985254 (var2321) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2321 var2321)
(declare-const null-String String)
(declare-const var3473 var2321) ; Statement: r1 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var3473 null-var2321)))
(declare-const var2260 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2260 null-String)))
(define-const var773 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var773)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var773!1 String)
(assert (= var773!1 ""))
(assert true)
(define-const var1646 String (getTableName/655985254 var3473)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String getTableName()>() 
(assert true)
(define-const var3479 String (append/672562846 var773!1 var1646)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var773!2 String)
(assert (= var773!2 (str.++ var773!1 var1646)))
(assert true)
(define-const var2220 String (append/-1166366385 var3479 32)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3479!1 String)
(assert (str.prefixof var3479 var3479!1))
(assert true)
(define-const var604 String (append/672562846 var2220 var2260)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2220!1 String)
(assert (= var2220!1 (str.++ var2220 var2260)))
(assert true)
(define-const var3939 String (toString/-2075883882 var604)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTableName/655985254=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2321=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var3473=r1, var2260=r4, var2189=null_type, var773=$r0, var1646=$r2, var3479=$r3, var2220=$r5, var604=$r6, var3939=$r7}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var2321, r1=var3473, r4=var2260, null_type=var2189, $r0=var773, $r2=var1646, $r3=var3479, $r5=var2220, $r6=var604, $r7=var3939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String getTableName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1