(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var193 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun exactType/-2034713631 (var193) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun value/-2034713631 (var193) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var193 var193)
(declare-const var2538 var193) ; Statement: r1 := @this: org.hibernate.id.IdentifierGeneratorHelper$BasicHolder 
(assert (not (= var2538 null-var193)))
(define-const var249 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var249)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var249!1 String)
(assert (= var249!1 ""))
(assert true)
(define-const var228 String (append/672562846 var249!1 "BasicHolder[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BasicHolder[") 
(declare-const var249!2 String)
(assert (= var249!2 (str.++ var249!1 "BasicHolder[")))
(define-const var927 ClassObject (exactType/-2034713631 var2538)) ; Statement: $r2 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BasicHolder: java.lang.Class exactType> 
(assert true)
(define-const var2882 String (getName/-1958580599 var927)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2476 String (append/672562846 var228 var2882)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var228!1 String)
(assert (= var228!1 (str.++ var228 var2882)))
(assert true)
(define-const var3922 String (append/672562846 var2476 "[")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var2476!1 String)
(assert (= var2476!1 (str.++ var2476 "[")))
(define-const var130 Int (value/-2034713631 var2538)) ; Statement: $l0 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BasicHolder: long value> 
(assert true)
(define-const var2163 String (append/-901862667 var3922 var130)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3922!1 String)
(assert (str.prefixof var3922 var3922!1))
(assert true)
(define-const var3790 String (append/672562846 var2163 "]]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]]") 
(declare-const var2163!1 String)
(assert (= var2163!1 (str.++ var2163 "]]")))
(assert true)
(define-const var1392 String (toString/-2075883882 var3790)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), exactType/-2034713631=([org.hibernate.id.IdentifierGeneratorHelper$BasicHolder], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), value/-2034713631=([org.hibernate.id.IdentifierGeneratorHelper$BasicHolder], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var193=org.hibernate.id.IdentifierGeneratorHelper$BasicHolder, var2538=r1, var249=$r0, var228=$r4, var927=$r2, var2882=$r3, var2476=$r5, var3922=$r6, var130=$l0, var2163=$r7, var3790=$r8, var1392=$r9}
; {org.hibernate.id.IdentifierGeneratorHelper$BasicHolder=var193, r1=var2538, $r0=var249, $r4=var228, $r2=var927, $r3=var2882, $r5=var2476, $r6=var3922, $l0=var130, $r7=var2163, $r8=var3790, $r9=var1392}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.id.IdentifierGeneratorHelper$BasicHolder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BasicHolder[");	$r2 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BasicHolder: java.lang.Class exactType>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$l0 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BasicHolder: long value>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1