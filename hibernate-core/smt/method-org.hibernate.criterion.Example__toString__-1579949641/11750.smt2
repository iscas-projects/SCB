(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3957 0)
(declare-sort var3975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun exampleEntity/785097815 (var3957) var3975)
(declare-fun append/-1031950772 (String var3975) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3957 var3957)
(declare-const var3763 var3957) ; Statement: r1 := @this: org.hibernate.criterion.Example 
(assert (not (= var3763 null-var3957)))
(define-const var3198 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3198)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3198!1 String)
(assert (= var3198!1 ""))
(assert true)
(define-const var1763 String (append/672562846 var3198!1 "example (")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("example (") 
(declare-const var3198!2 String)
(assert (= var3198!2 (str.++ var3198!1 "example (")))
(define-const var2157 var3975 (exampleEntity/785097815 var3763)) ; Statement: $r2 = r1.<org.hibernate.criterion.Example: java.lang.Object exampleEntity> 
(assert true)
(define-const var1514 String (append/-1031950772 var1763 var2157)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1763!1 String)
(assert (str.prefixof var1763 var1763!1))
(assert true)
(define-const var3752 String (append/-1166366385 var1514 41)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1514!1 String)
(assert (str.prefixof var1514 var1514!1))
(assert true)
(define-const var501 String (toString/-2075883882 var3752)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), exampleEntity/785097815=([org.hibernate.criterion.Example], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3957=org.hibernate.criterion.Example, var3763=r1, var3198=$r0, var1763=$r3, var3975=java.lang.Object, var2157=$r2, var1514=$r4, var3752=$r5, var501=$r6}
; {org.hibernate.criterion.Example=var3957, r1=var3763, $r0=var3198, $r3=var1763, java.lang.Object=var3975, $r2=var2157, $r4=var1514, $r5=var3752, $r6=var501}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.criterion.Example;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("example (");	$r2 = r1.<org.hibernate.criterion.Example: java.lang.Object exampleEntity>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1