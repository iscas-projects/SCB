(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2015 0)
(declare-sort var1582 0)
(declare-sort var2322 0)
(declare-sort var1897 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columnReferences/-1432686337 (var2015) var2322)
(declare-fun var2322_add/-1142548109 (var2322 var1897) Bool)
(declare-fun cast-from-String-to-var1897 (String) var1897)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2015 var2015)
(declare-const null-String String)
(declare-const var1654 var2015) ; Statement: r0 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser 
(assert (not (= var1654 null-var2015)))
(declare-const var1193 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1193 null-String)))
(define-const var1523 var2322 (columnReferences/-1432686337 var1654)) ; Statement: $r2 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: java.util.Set columnReferences> 
;(assert (var2322_add/-1142548109 var1523 (cast-from-String-to-var1897 var1193))) ; Statement: interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1) 

(declare-const var1523!1 var2322)
(declare-const var1193!1 String)
(define-const var2871 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2871)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2871!1 String)
(assert (= var2871!1 ""))
(assert true)
(define-const var2835 String (append/672562846 var2871!1 "{")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{") 
(declare-const var2871!2 String)
(assert (= var2871!2 (str.++ var2871!1 "{")))
(assert true)
(define-const var682 String (append/672562846 var2835 var1193!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2835!1 String)
(assert (= var2835!1 (str.++ var2835 var1193!1)))
(assert true)
(define-const var1711 String (append/672562846 var682 "}")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}") 
(declare-const var682!1 String)
(assert (= var682!1 (str.++ var682 "}")))
(assert true)
(define-const var1417 String (toString/-2075883882 var1711)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {columnReferences/-1432686337=([org.hibernate.sql.ordering.antlr.OrderByFragmentParser], java.util.Set), var2322_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var1897=([java.lang.String], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2015=org.hibernate.sql.ordering.antlr.OrderByFragmentParser, var1654=r0, var1193=r1, var1582=null_type, var2322=java.util.Set, var1523=$r2, var1897=java.lang.Object, var2871=$r3, var2835=$r4, var682=$r5, var1711=$r6, var1417=$r7}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentParser=var2015, r0=var1654, r1=var1193, null_type=var1582, java.util.Set=var2322, $r2=var1523, java.lang.Object=var1897, $r3=var2871, $r4=var2835, $r5=var682, $r6=var1711, $r7=var1417}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentParser;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentParser: java.util.Set columnReferences>;	interfaceinvoke $r2.<java.util.Set: boolean add(java.lang.Object)>(r1);	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("{");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1