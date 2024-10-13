(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2671 0)
(declare-sort var1951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTableName/1324221881 (var2671) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2671 var2671)
(declare-const null-String String)
(declare-const var3758 var2671) ; Statement: r1 := @this: org.hibernate.persister.entity.SingleTableEntityPersister 
(assert (not (= var3758 null-var2671)))
(declare-const var1661 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1661 null-String)))
(define-const var277 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var277)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var277!1 String)
(assert (= var277!1 ""))
(assert true)
(define-const var1670 String (getTableName/1324221881 var3758)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.persister.entity.SingleTableEntityPersister: java.lang.String getTableName()>() 
(assert true)
(define-const var2992 String (append/672562846 var277!1 var1670)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var277!2 String)
(assert (= var277!2 (str.++ var277!1 var1670)))
(assert true)
(define-const var362 String (append/-1166366385 var2992 32)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2992!1 String)
(assert (str.prefixof var2992 var2992!1))
(assert true)
(define-const var2642 String (append/672562846 var362 var1661)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var362!1 String)
(assert (= var362!1 (str.++ var362 var1661)))
(assert true)
(define-const var208 String (toString/-2075883882 var2642)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTableName/1324221881=([org.hibernate.persister.entity.SingleTableEntityPersister], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2671=org.hibernate.persister.entity.SingleTableEntityPersister, var3758=r1, var1661=r4, var1951=null_type, var277=$r0, var1670=$r2, var2992=$r3, var362=$r5, var2642=$r6, var208=$r7}
; {org.hibernate.persister.entity.SingleTableEntityPersister=var2671, r1=var3758, r4=var1661, null_type=var1951, $r0=var277, $r2=var1670, $r3=var2992, $r5=var362, $r6=var2642, $r7=var208}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.SingleTableEntityPersister;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.hibernate.persister.entity.SingleTableEntityPersister: java.lang.String getTableName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1