(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var506 0)
(declare-sort var2451 0)
(declare-sort var2514 0)
(declare-sort var84 0)
(declare-sort var1225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/1913460083 (var2451) Int)
(declare-fun var84-init () var84)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1225) String)
(declare-fun cast-from-var2451-to-var1225 (var2451) var1225)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var84 String) void)
(declare-const null-var506 var506)
(declare-const null-var2451 var2451)
(declare-const var2514-$SwitchMap$javax$persistence$criteria$JoinType (Array Int Int))
(declare-const var2488 var506) ; Statement: r7 := @this: org.hibernate.query.criteria.internal.QueryStructure 
(assert (not (= var2488 null-var506)))
(declare-const var1988 var2451) ; Statement: r0 := @parameter0: javax.persistence.criteria.JoinType 
(assert (not (= var1988 null-var2451)))
(define-const var482 (Array Int Int) var2514-$SwitchMap$javax$persistence$criteria$JoinType) ; Statement: $r1 = <org.hibernate.query.criteria.internal.QueryStructure$2: int[] $SwitchMap$javax$persistence$criteria$JoinType> 
(assert true)
(define-const var2759 Int (ordinal/1913460083 var1988)) ; Statement: $i0 = virtualinvoke r0.<javax.persistence.criteria.JoinType: int ordinal()>() 
(define-const var1653 Int (select var482 var2759)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return " inner join ";     case 2: goto return " left join ";     case 3: goto return " right join ";     default: goto $r2 = new java.lang.IllegalStateException; } 
(assert (and (not (= var1653 3)) (and (not (= var1653 2)) (and (not (= var1653 1)) true)))) ; Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var2041 var84 var84-init) ; Statement: $r2 = new java.lang.IllegalStateException 
(define-const var3896 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3896)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3896!1 String)
(assert (= var3896!1 ""))
(assert true)
(define-const var3329 String (append/672562846 var3896!1 "Unknown join type ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown join type ") 
(declare-const var3896!2 String)
(assert (= var3896!2 (str.++ var3896!1 "Unknown join type ")))
(assert true)
(define-const var1010 String (append/-1031950772 var3329 (cast-from-var2451-to-var1225 var1988))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3329!1 String)
(assert (str.prefixof var3329 var3329!1))
(assert true)
(define-const var2932 String (toString/-2075883882 var1010)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2041 var2932)) ; Statement: specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var2041!1 var84)
(declare-const var2932!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/1913460083=([javax.persistence.criteria.JoinType], int), var84-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2451-to-var1225=([javax.persistence.criteria.JoinType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var506=org.hibernate.query.criteria.internal.QueryStructure, var2488=r7, var2451=javax.persistence.criteria.JoinType, var1988=r0, var2514=org.hibernate.query.criteria.internal.QueryStructure$2, var482=$r1, var2759=$i0, var1653=$i1, var84=java.lang.IllegalStateException, var2041=$r2, var3896=$r3, var3329=$r4, var1225=java.lang.Object, var1010=$r5, var2932=$r6}
; {org.hibernate.query.criteria.internal.QueryStructure=var506, r7=var2488, javax.persistence.criteria.JoinType=var2451, r0=var1988, org.hibernate.query.criteria.internal.QueryStructure$2=var2514, $r1=var482, $i0=var2759, $i1=var1653, java.lang.IllegalStateException=var84, $r2=var2041, $r3=var3896, $r4=var3329, java.lang.Object=var1225, $r5=var1010, $r6=var2932}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.query.criteria.internal.QueryStructure;	r0 := @parameter0: javax.persistence.criteria.JoinType;	$r1 = <org.hibernate.query.criteria.internal.QueryStructure$2: int[] $SwitchMap$javax$persistence$criteria$JoinType>;	$i0 = virtualinvoke r0.<javax.persistence.criteria.JoinType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return " inner join ";     case 2: goto return " left join ";     case 3: goto return " right join ";     default: goto $r2 = new java.lang.IllegalStateException; };	$r2 = new java.lang.IllegalStateException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown join type ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2