(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var281 0)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isQuoted/-2065986092 (var281) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun openQuote/1212220691 (var2042) Int)
(declare-fun String_valueOf/-371898945 (Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getText/-467579009 (var281) String)
(declare-fun closeQuote/952993073 (var2042) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var281 var281)
(declare-const null-var2042 var2042)
(declare-const var2948 var281) ; Statement: r0 := @this: org.hibernate.boot.model.naming.Identifier 
(assert (not (= var2948 null-var281)))
(declare-const var3800 var2042) ; Statement: r2 := @parameter0: org.hibernate.dialect.Dialect 
(assert (not (= var3800 null-var2042)))
(define-const var2019 Bool (isQuoted/-2065986092 var2948)) ; Statement: $z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted> 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert (not (= (ite var2019 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3001 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3001)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3001!1 String)
(assert (= var3001!1 ""))
(assert true)
(define-const var3656 Int (openQuote/1212220691 var3800)) ; Statement: $c0 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char openQuote()>() 
(define-const var1997 String (String_valueOf/-371898945 var3656)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c0) 
(assert true)
(define-const var2498 String (append/672562846 var3001!1 var1997)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3001!2 String)
(assert (= var3001!2 (str.++ var3001!1 var1997)))
(assert true)
(define-const var2531 String (getText/-467579009 var2948)) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>() 
(assert true)
(define-const var1921 String (append/672562846 var2498 var2531)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2498!1 String)
(assert (= var2498!1 (str.++ var2498 var2531)))
(assert true)
(define-const var1094 Int (closeQuote/952993073 var3800)) ; Statement: $c1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char closeQuote()>() 
(assert true)
(define-const var2107 String (append/-1166366385 var1921 var1094)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var1921!1 String)
(assert (str.prefixof var1921 var1921!1))
(assert true)
(define-const var2803 String (toString/-2075883882 var2107)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {isQuoted/-2065986092=([org.hibernate.boot.model.naming.Identifier], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), openQuote/1212220691=([org.hibernate.dialect.Dialect], char), String_valueOf/-371898945=([char], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getText/-467579009=([org.hibernate.boot.model.naming.Identifier], java.lang.String), closeQuote/952993073=([org.hibernate.dialect.Dialect], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var281=org.hibernate.boot.model.naming.Identifier, var2948=r0, var2042=org.hibernate.dialect.Dialect, var3800=r2, var2019=$z0, var3001=$r1, var3656=$c0, var1997=$r3, var2498=$r5, var2531=$r4, var1921=$r6, var1094=$c1, var2107=$r7, var2803=$r8}
; {org.hibernate.boot.model.naming.Identifier=var281, r0=var2948, org.hibernate.dialect.Dialect=var2042, r2=var3800, $z0=var2019, $r1=var3001, $c0=var3656, $r3=var1997, $r5=var2498, $r4=var2531, $r6=var1921, $c1=var1094, $r7=var2107, $r8=var2803}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String valueOf(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String valueOf(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.boot.model.naming.Identifier;	r2 := @parameter0: org.hibernate.dialect.Dialect;	$z0 = r0.<org.hibernate.boot.model.naming.Identifier: boolean isQuoted>;	if $z0 == 0 goto $r8 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$c0 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char openQuote()>();	$r3 = staticinvoke <java.lang.String: java.lang.String valueOf(char)>($c0);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r4 = virtualinvoke r0.<org.hibernate.boot.model.naming.Identifier: java.lang.String getText()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$c1 = virtualinvoke r2.<org.hibernate.dialect.Dialect: char closeQuote()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r8];	return $r8
;block_num 3