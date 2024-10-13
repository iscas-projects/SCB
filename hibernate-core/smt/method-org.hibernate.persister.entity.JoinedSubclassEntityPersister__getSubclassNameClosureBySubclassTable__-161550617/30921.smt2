(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1898 0)
(declare-sort var3780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTableSpan/749307555 (var1898) Int)
(declare-fun subclassNamesBySubclassTable/1437194565 (var1898) (Array Int (Array Int String)))
(declare-fun getLength-Arr-String-2 ((Array Int (Array Int String))) Int)
(declare-fun var3780-init () var3780)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3780 String) void)
(declare-const null-var1898 var1898)
(declare-const null-Int Int)
(declare-const var1772 var1898) ; Statement: r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister 
(assert (not (= var1772 null-var1898)))
(declare-const var3321 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3321 null-Int)))
(assert true)
(define-const var3994 Int (getTableSpan/749307555 var1772)) ; Statement: $i1 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: int getTableSpan()>() 
(define-const var3567 Int (- var3321 var3994)) ; Statement: i2 = i0 - $i1 
(define-const var3287 (Array Int (Array Int String)) (subclassNamesBySubclassTable/1437194565 var1772)) ; Statement: $r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable> 
(define-const var2036 Int (getLength-Arr-String-2 var3287)) ; Statement: $i3 = lengthof $r1 
 ; Statement: if i2 < $i3 goto $r2 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable> 
(assert (not (< var3567 var2036))) ; Negate: Cond: i2 < $i3  
(define-const var1769 var3780 var3780-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var2476 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2476)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2476!1 String)
(assert (= var2476!1 ""))
(assert true)
(define-const var3083 String (append/672562846 var2476!1 "Given subclass table number is outside expected range [")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given subclass table number is outside expected range [") 
(declare-const var2476!2 String)
(assert (= var2476!2 (str.++ var2476!1 "Given subclass table number is outside expected range [")))
(define-const var2455 (Array Int (Array Int String)) (subclassNamesBySubclassTable/1437194565 var1772)) ; Statement: $r6 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable> 
(define-const var3443 Int (getLength-Arr-String-2 var2455)) ; Statement: $i4 = lengthof $r6 
(define-const var131 Int (- var3443 1)) ; Statement: $i5 = $i4 - 1 
(assert true)
(define-const var596 String (append/-1001720160 var3083 var131)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var3083!1 String)
(assert (str.prefixof var3083 var3083!1))
(assert true)
(define-const var711 String (append/672562846 var596 "] as defined by subclassTableNameClosure/subclassClosure")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as defined by subclassTableNameClosure/subclassClosure") 
(declare-const var596!1 String)
(assert (= var596!1 (str.++ var596 "] as defined by subclassTableNameClosure/subclassClosure")))
(assert true)
(define-const var2902 String (toString/-2075883882 var711)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1769 var2902)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1769!1 var3780)
(declare-const var2902!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getTableSpan/749307555=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], int), subclassNamesBySubclassTable/1437194565=([org.hibernate.persister.entity.JoinedSubclassEntityPersister], java.lang.String[][]), getLength-Arr-String-2=([java.lang.String[][]], int), var3780-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1898=org.hibernate.persister.entity.JoinedSubclassEntityPersister, var1772=r0, var3321=i0, var3994=$i1, var3567=i2, var3287=$r1, var2036=$i3, var3780=java.lang.IllegalArgumentException, var1769=$r4, var2476=$r5, var3083=$r7, var2455=$r6, var3443=$i4, var131=$i5, var596=$r8, var711=$r9, var2902=$r10}
; {org.hibernate.persister.entity.JoinedSubclassEntityPersister=var1898, r0=var1772, i0=var3321, $i1=var3994, i2=var3567, $r1=var3287, $i3=var2036, java.lang.IllegalArgumentException=var3780, $r4=var1769, $r5=var2476, $r7=var3083, $r6=var2455, $i4=var3443, $i5=var131, $r8=var596, $r9=var711, $r10=var2902}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.persister.entity.JoinedSubclassEntityPersister;	i0 := @parameter0: int;	$i1 = virtualinvoke r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: int getTableSpan()>();	i2 = i0 - $i1;	$r1 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable>;	$i3 = lengthof $r1;	if i2 < $i3 goto $r2 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable>;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given subclass table number is outside expected range [");	$r6 = r0.<org.hibernate.persister.entity.JoinedSubclassEntityPersister: java.lang.String[][] subclassNamesBySubclassTable>;	$i4 = lengthof $r6;	$i5 = $i4 - 1;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] as defined by subclassTableNameClosure/subclassClosure");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r4
;block_num 2