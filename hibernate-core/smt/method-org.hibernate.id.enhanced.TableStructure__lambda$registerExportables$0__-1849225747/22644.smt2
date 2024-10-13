(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3145 0)
(declare-sort var2535 0)
(declare-sort var3490 0)
(declare-sort var2319 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3490-init () var3490)
(declare-fun arr-String-init () (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun physicalTableName/-1818566928 (var3145) var2319)
(declare-fun var2535_format/543602932 (var2535 var2319) String)
(declare-fun initialValue/-1818566928 (var3145) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/2098342399 (var3490 (Array Int String)) void)
(declare-const null-var3145 var3145)
(declare-const null-var2535 var2535)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2280 var3145) ; Statement: r4 := @this: org.hibernate.id.enhanced.TableStructure 
(assert (not (= var2280 null-var3145)))
(declare-const var3953 var2535) ; Statement: r3 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var3953 null-var2535)))
(define-const var89 var3490 var3490-init) ; Statement: $r0 = new org.hibernate.boot.model.relational.InitCommand 
(define-const var2833 (Array Int String) arr-String-init) ; Statement: $r1 = newarray (java.lang.String)[1] 
(define-const var1468 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1468)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1468!1 String)
(assert (= var1468!1 ""))
(assert true)
(define-const var99 String (append/672562846 var1468!1 "insert into ")) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ") 
(declare-const var1468!2 String)
(assert (= var1468!2 (str.++ var1468!1 "insert into ")))
(define-const var1913 var2319 (physicalTableName/-1818566928 var2280)) ; Statement: $r5 = r4.<org.hibernate.id.enhanced.TableStructure: org.hibernate.boot.model.relational.QualifiedName physicalTableName> 
(define-const var800 String (var2535_format/543602932 var3953 var1913)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r5) 
(assert true)
(define-const var3300 String (append/672562846 var99 var800)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var99!1 String)
(assert (= var99!1 (str.++ var99 var800)))
(assert true)
(define-const var1508 String (append/672562846 var3300 " values ( ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" values ( ") 
(declare-const var3300!1 String)
(assert (= var3300!1 (str.++ var3300 " values ( ")))
(define-const var928 Int (initialValue/-1818566928 var2280)) ; Statement: $i0 = r4.<org.hibernate.id.enhanced.TableStructure: int initialValue> 
(assert true)
(define-const var2916 String (append/-1001720160 var1508 var928)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1508!1 String)
(assert (str.prefixof var1508 var1508!1))
(assert true)
(define-const var3190 String (append/672562846 var2916 " )")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var2916!1 String)
(assert (= var2916!1 (str.++ var2916 " )")))
(assert true)
(define-const var2644 String (toString/-2075883882 var3190)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2833!1 (Array Int String))
(assert (not (= var2833!1 null-__Array__Int__String__)))
(assert (= (select var2833!1 0) var2644)) ; Statement: $r1[0] = $r12 
(assert true)
;(assert (<init>/2098342399 var89 var2833!1)) ; Statement: specialinvoke $r0.<org.hibernate.boot.model.relational.InitCommand: void <init>(java.lang.String[])>($r1) 

(declare-const var89!1 var3490)
(declare-const var2833!2 (Array Int String))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3490-init=([], org.hibernate.boot.model.relational.InitCommand), arr-String-init=([], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), physicalTableName/-1818566928=([org.hibernate.id.enhanced.TableStructure], org.hibernate.boot.model.relational.QualifiedName), var2535_format/543602932=([org.hibernate.boot.model.relational.SqlStringGenerationContext, org.hibernate.boot.model.relational.QualifiedName], java.lang.String), initialValue/-1818566928=([org.hibernate.id.enhanced.TableStructure], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/2098342399=([org.hibernate.boot.model.relational.InitCommand, java.lang.String[]], void)}
; {var3145=org.hibernate.id.enhanced.TableStructure, var2280=r4, var2535=org.hibernate.boot.model.relational.SqlStringGenerationContext, var3953=r3, var3490=org.hibernate.boot.model.relational.InitCommand, var89=$r0, var2833=$r1, var1468=$r2, var99=$r7, var2319=org.hibernate.boot.model.relational.QualifiedName, var1913=$r5, var800=$r6, var3300=$r8, var1508=$r9, var928=$i0, var2916=$r10, var3190=$r11, var2644=$r12}
; {org.hibernate.id.enhanced.TableStructure=var3145, r4=var2280, org.hibernate.boot.model.relational.SqlStringGenerationContext=var2535, r3=var3953, org.hibernate.boot.model.relational.InitCommand=var3490, $r0=var89, $r1=var2833, $r2=var1468, $r7=var99, org.hibernate.boot.model.relational.QualifiedName=var2319, $r5=var1913, $r6=var800, $r8=var3300, $r9=var1508, $i0=var928, $r10=var2916, $r11=var3190, $r12=var2644}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.id.enhanced.TableStructure;	r3 := @parameter0: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new org.hibernate.boot.model.relational.InitCommand;	$r1 = newarray (java.lang.String)[1];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ");	$r5 = r4.<org.hibernate.id.enhanced.TableStructure: org.hibernate.boot.model.relational.QualifiedName physicalTableName>;	$r6 = interfaceinvoke r3.<org.hibernate.boot.model.relational.SqlStringGenerationContext: java.lang.String format(org.hibernate.boot.model.relational.QualifiedName)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" values ( ");	$i0 = r4.<org.hibernate.id.enhanced.TableStructure: int initialValue>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[0] = $r12;	specialinvoke $r0.<org.hibernate.boot.model.relational.InitCommand: void <init>(java.lang.String[])>($r1);	return $r0
;block_num 1