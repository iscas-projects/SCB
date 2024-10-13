(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var569 0)
(declare-sort var1631 0)
(declare-sort var1342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun collection/570268399 (var569) var1342)
(declare-fun getRole/-486327642 (var1342) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var569 var569)
(declare-const null-String String)
(declare-const var1318 var569) ; Statement: r1 := @this: org.hibernate.cfg.CollectionPropertyHolder 
(assert (not (= var1318 null-var569)))
(declare-const var796 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var796 null-String)))
(define-const var531 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var531)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var531!1 String)
(assert (= var531!1 ""))
(define-const var2462 var1342 (collection/570268399 var1318)) ; Statement: $r2 = r1.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection> 
(assert true)
(define-const var2494 String (getRole/-486327642 var2462)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.mapping.Collection: java.lang.String getRole()>() 
(assert true)
(define-const var1326 String (append/672562846 var531!1 var2494)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var531!2 String)
(assert (= var531!2 (str.++ var531!1 var2494)))
(assert true)
(define-const var2006 String (append/-1166366385 var1326 46)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1326!1 String)
(assert (str.prefixof var1326 var1326!1))
(assert true)
(define-const var1570 String (append/672562846 var2006 var796)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2006!1 String)
(assert (= var2006!1 (str.++ var2006 var796)))
(assert true)
(define-const var3493 String (toString/-2075883882 var1570)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), collection/570268399=([org.hibernate.cfg.CollectionPropertyHolder], org.hibernate.mapping.Collection), getRole/-486327642=([org.hibernate.mapping.Collection], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var569=org.hibernate.cfg.CollectionPropertyHolder, var1318=r1, var796=r5, var1631=null_type, var531=$r0, var1342=org.hibernate.mapping.Collection, var2462=$r2, var2494=$r3, var1326=$r4, var2006=$r6, var1570=$r7, var3493=$r8}
; {org.hibernate.cfg.CollectionPropertyHolder=var569, r1=var1318, r5=var796, null_type=var1631, $r0=var531, org.hibernate.mapping.Collection=var1342, $r2=var2462, $r3=var2494, $r4=var1326, $r6=var2006, $r7=var1570, $r8=var3493}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.CollectionPropertyHolder;	r5 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.cfg.CollectionPropertyHolder: org.hibernate.mapping.Collection collection>;	$r3 = virtualinvoke $r2.<org.hibernate.mapping.Collection: java.lang.String getRole()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1