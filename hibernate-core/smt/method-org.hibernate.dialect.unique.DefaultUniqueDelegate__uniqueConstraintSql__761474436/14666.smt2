(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2627 0)
(declare-sort var1179 0)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun columnIterator/664861612 (var3422) Iterator)
(declare-fun cast-from-var1179-to-var3422 (var1179) var3422)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2627 var2627)
(declare-const null-var1179 var1179)
(declare-const var1401 var2627) ; Statement: r7 := @this: org.hibernate.dialect.unique.DefaultUniqueDelegate 
(assert (not (= var1401 null-var2627)))
(declare-const var3305 var1179) ; Statement: r1 := @parameter0: org.hibernate.mapping.UniqueKey 
(assert (not (= var3305 null-var1179)))
(define-const var281 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var281)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var281!1 String)
(assert (= var281!1 ""))
(assert true)
;(assert (append/672562846 var281!1 "unique (")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unique (") 
(declare-const var281!2 String)
(assert (= var281!2 (str.++ var281!1 "unique (")))
(assert true)
(define-const var3922 Iterator (columnIterator/664861612 (cast-from-var1179-to-var3422 var3305))) ; Statement: r2 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.util.Iterator columnIterator()>() 
(assert true) ; Non Conditional
(define-const var158 Bool (Iterator_hasNext/-1669924200 var3922)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(assert (= (ite var158 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1302 String (append/-1166366385 var281!2 41)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var281!3 String)
(assert (str.prefixof var281!2 var281!3))
(assert true)
(define-const var2217 String (toString/-2075883882 var1302)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), columnIterator/664861612=([org.hibernate.mapping.Constraint], java.util.Iterator), cast-from-var1179-to-var3422=([org.hibernate.mapping.UniqueKey], org.hibernate.mapping.Constraint), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2627=org.hibernate.dialect.unique.DefaultUniqueDelegate, var1401=r7, var1179=org.hibernate.mapping.UniqueKey, var3305=r1, var281=$r0, var3422=org.hibernate.mapping.Constraint, var3922=r2, var158=$z0, var1302=$r3, var2217=$r4}
; {org.hibernate.dialect.unique.DefaultUniqueDelegate=var2627, r7=var1401, org.hibernate.mapping.UniqueKey=var1179, r1=var3305, $r0=var281, org.hibernate.mapping.Constraint=var3422, r2=var3922, $z0=var158, $r3=var1302, $r4=var2217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.dialect.unique.DefaultUniqueDelegate;	r1 := @parameter0: org.hibernate.mapping.UniqueKey;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unique (");	r2 = virtualinvoke r1.<org.hibernate.mapping.UniqueKey: java.util.Iterator columnIterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3