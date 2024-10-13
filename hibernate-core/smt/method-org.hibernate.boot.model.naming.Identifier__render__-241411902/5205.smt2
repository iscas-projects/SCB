(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3888 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-2065986092 (var3888) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getText/-467579009 (var3888) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3888 var3888)
(declare-const var3407 var3888) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var3407 null-var3888)))
(define-const var213 Bool (isQuoted/-2065986092 var3407)) ; Statement: $z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted> 
 ; Statement: if $z0 == 0 goto $r6 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= (ite var213 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1212 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1212)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1212!1 String)
(assert (= var1212!1 ""))
(assert true)
(define-const var1143 String (append/-1166366385 var1212!1 96)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96) 
(declare-const var1212!2 String)
(assert (str.prefixof var1212!1 var1212!2))
(assert true)
(define-const var2648 String (getText/-467579009 var3407)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var3820 String (append/672562846 var1143 var2648)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1143!1 String)
(assert (= var1143!1 (str.++ var1143 var2648)))
(assert true)
(define-const var831 String (append/-1166366385 var3820 96)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96) 
(declare-const var3820!1 String)
(assert (str.prefixof var3820 var3820!1))
(assert true)
(define-const var2984 String (toString/-2075883882 var831)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-2065986092=([org.hibernate.boot.model.naming.Identifier], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3888=org.hibernate.boot.model.naming.Identifier, var3407=r0, var213=$z0, var1212=$r1, var1143=$r3, var2648=$r2, var3820=$r4, var831=$r5, var2984=$r6}
; {org.hibernate.boot.model.naming.Identifier=var3888, r0=var3407, $z0=var213, $r1=var1212, $r3=var1143, $r2=var2648, $r4=var3820, $r5=var831, $r6=var2984}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	$z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted>;	if $z0 == 0 goto $r6 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96);	$r2 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(96);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3