(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3535 0)
(declare-sort var696 0)
(declare-sort var1134 0)
(declare-sort var1747 0)
(declare-sort var2557 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var696-init () var696)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPathSource/-787522163 (var1747) var1134)
(declare-fun cast-from-var3535-to-var1747 (var3535) var1747)
(declare-fun var1134_getPathIdentifier/-1280971676 (var1134) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun attribute/431000546 (var3535) var2557)
(declare-fun var2557_getName/290799174 (var2557) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var696 String) void)
(declare-const null-var3535 var3535)
(declare-const null-ClassObject ClassObject)
(declare-const var3740 var3535) ; Statement: r2 := @this: org.hibernate.query.criteria.internal.path.PluralAttributePath 
(assert (not (= var3740 null-var3535)))
(declare-const var1329 ClassObject) ; Statement: r13 := @parameter0: java.lang.Class 
(assert (not (= var1329 null-ClassObject)))
(define-const var2617 var696 var696-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var1223 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1223)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1223!1 String)
(assert (= var1223!1 ""))
(assert true)
(define-const var2888 String (append/672562846 var1223!1 "Plural attribute path [")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Plural attribute path [") 
(declare-const var1223!2 String)
(assert (= var1223!2 (str.++ var1223!1 "Plural attribute path [")))
(assert true)
(define-const var474 var1134 (getPathSource/-787522163 (cast-from-var3535-to-var1747 var3740))) ; Statement: $r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.PluralAttributePath: org.hibernate.query.criteria.internal.PathSource getPathSource()>() 
(define-const var3646 String (var1134_getPathIdentifier/-1280971676 var474)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>() 
(assert true)
(define-const var970 String (append/672562846 var2888 var3646)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 var3646)))
(assert true)
(define-const var1974 String (append/-1166366385 var970 46)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var970!1 String)
(assert (str.prefixof var970 var970!1))
(define-const var3380 var2557 (attribute/431000546 var3740)) ; Statement: $r7 = r2.<org.hibernate.query.criteria.internal.path.PluralAttributePath: javax.persistence.metamodel.PluralAttribute attribute> 
(define-const var3190 String (var2557_getName/290799174 var3380)) ; Statement: $r8 = interfaceinvoke $r7.<javax.persistence.metamodel.PluralAttribute: java.lang.String getName()>() 
(assert true)
(define-const var1206 String (append/672562846 var1974 var3190)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1974!1 String)
(assert (= var1974!1 (str.++ var1974 var3190)))
(assert true)
(define-const var3935 String (append/672562846 var1206 "] cannot be dereferenced")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be dereferenced") 
(declare-const var1206!1 String)
(assert (= var1206!1 (str.++ var1206 "] cannot be dereferenced")))
(assert true)
(define-const var396 String (toString/-2075883882 var3935)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2617 var396)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r12) 

(declare-const var2617!1 var696)
(declare-const var396!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var696-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPathSource/-787522163=([org.hibernate.query.criteria.internal.path.AbstractPathImpl], org.hibernate.query.criteria.internal.PathSource), cast-from-var3535-to-var1747=([org.hibernate.query.criteria.internal.path.PluralAttributePath], org.hibernate.query.criteria.internal.path.AbstractPathImpl), var1134_getPathIdentifier/-1280971676=([org.hibernate.query.criteria.internal.PathSource], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), attribute/431000546=([org.hibernate.query.criteria.internal.path.PluralAttributePath], javax.persistence.metamodel.PluralAttribute), var2557_getName/290799174=([javax.persistence.metamodel.PluralAttribute], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var3535=org.hibernate.query.criteria.internal.path.PluralAttributePath, var3740=r2, var1329=r13, var696=java.lang.UnsupportedOperationException, var2617=$r0, var1223=$r1, var2888=$r5, var1134=org.hibernate.query.criteria.internal.PathSource, var1747=org.hibernate.query.criteria.internal.path.AbstractPathImpl, var474=$r3, var3646=$r4, var970=$r6, var1974=$r9, var2557=javax.persistence.metamodel.PluralAttribute, var3380=$r7, var3190=$r8, var1206=$r10, var3935=$r11, var396=$r12}
; {org.hibernate.query.criteria.internal.path.PluralAttributePath=var3535, r2=var3740, r13=var1329, java.lang.UnsupportedOperationException=var696, $r0=var2617, $r1=var1223, $r5=var2888, org.hibernate.query.criteria.internal.PathSource=var1134, org.hibernate.query.criteria.internal.path.AbstractPathImpl=var1747, $r3=var474, $r4=var3646, $r6=var970, $r9=var1974, javax.persistence.metamodel.PluralAttribute=var2557, $r7=var3380, $r8=var3190, $r10=var1206, $r11=var3935, $r12=var396}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.query.criteria.internal.path.PluralAttributePath;	r13 := @parameter0: java.lang.Class;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Plural attribute path [");	$r3 = virtualinvoke r2.<org.hibernate.query.criteria.internal.path.PluralAttributePath: org.hibernate.query.criteria.internal.PathSource getPathSource()>();	$r4 = interfaceinvoke $r3.<org.hibernate.query.criteria.internal.PathSource: java.lang.String getPathIdentifier()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r7 = r2.<org.hibernate.query.criteria.internal.path.PluralAttributePath: javax.persistence.metamodel.PluralAttribute attribute>;	$r8 = interfaceinvoke $r7.<javax.persistence.metamodel.PluralAttribute: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] cannot be dereferenced");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r12);	throw $r0
;block_num 1