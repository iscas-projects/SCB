(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1051 0)
(declare-sort var1081 0)
(declare-sort var132 0)
(declare-sort var2933 0)
(declare-sort var2871 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-543715700 (var1051) var132)
(declare-fun ordinal/-291641772 (var2933) Int)
(declare-fun cast-from-var132-to-var2933 (var132) var2933)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun field/-543715700 (var1051) String)
(declare-fun reverse/-543715700 (var1051) Bool)
(declare-fun missingValue/-543715700 (var1051) var2871)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1051 var1051)
(declare-const var1081-$SwitchMap$org$apache$lucene$search$SortField$Type (Array Int Int))
(declare-const null-var2871 var2871)
(declare-const var3918 var1051) ; Statement: r1 := @this: org.apache.lucene.search.SortField 
(assert (not (= var3918 null-var1051)))
(define-const var1086 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1086)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1086!1 String)
(assert (= var1086!1 ""))
(define-const var1244 (Array Int Int) var1081-$SwitchMap$org$apache$lucene$search$SortField$Type) ; Statement: $r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type> 
(define-const var3179 var132 (type/-543715700 var3918)) ; Statement: $r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type> 
(assert true)
(define-const var3386 Int (ordinal/-291641772 (cast-from-var132-to-var2933 var3179))) ; Statement: $i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>() 
(define-const var726 Int (select var1244 var3386)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); } 
(assert (and (= var726 5) (and (not (= var726 4)) (and (not (= var726 3)) (and (not (= var726 2)) (and (not (= var726 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(assert true)
(define-const var1773 String (append/672562846 var1086!1 "<double: \u0022")) ; Statement: $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"") 
(declare-const var1086!2 String)
(assert (= var1086!2 (str.++ var1086!1 "<double: \u0022")))
(define-const var904 String (field/-543715700 var3918)) ; Statement: $r19 = r1.<org.apache.lucene.search.SortField: java.lang.String field> 
(assert true)
(define-const var484 String (append/672562846 var1773 var904)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1773!1 String)
(assert (= var1773!1 (str.++ var1773 var904)))
(assert true)
;(assert (append/672562846 var484 "\u0022>")) ; Statement: virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var484!1 String)
(assert (= var484!1 (str.++ var484 "\u0022>")))
 ; Statement: goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>] 
(assert true) ; Non Conditional
(define-const var749 Bool (reverse/-543715700 var3918)) ; Statement: $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse> 
 ; Statement: if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
(assert (= (ite var749 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2011 var2871 (missingValue/-543715700 var3918)) ; Statement: $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
 ; Statement: if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var2011 null-var2871)) ; Cond: $r4 == null 
(assert true)
(define-const var438 String (toString/-2075883882 var1086!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-543715700=([org.apache.lucene.search.SortField], org.apache.lucene.search.SortField$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var132-to-var2933=([org.apache.lucene.search.SortField$Type], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), field/-543715700=([org.apache.lucene.search.SortField], java.lang.String), reverse/-543715700=([org.apache.lucene.search.SortField], boolean), missingValue/-543715700=([org.apache.lucene.search.SortField], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1051=org.apache.lucene.search.SortField, var3918=r1, var1086=$r0, var1081=org.apache.lucene.search.SortField$3, var1244=$r3, var132=org.apache.lucene.search.SortField$Type, var3179=$r2, var2933=java.lang.Enum, var3386=$i0, var726=$i1, var1773=$r20, var904=$r19, var484=$r21, var749=$z0, var2871=java.lang.Object, var2011=$r4, var438=$r5}
; {org.apache.lucene.search.SortField=var1051, r1=var3918, $r0=var1086, org.apache.lucene.search.SortField$3=var1081, $r3=var1244, org.apache.lucene.search.SortField$Type=var132, $r2=var3179, java.lang.Enum=var2933, $i0=var3386, $i1=var726, $r20=var1773, $r19=var904, $r21=var484, $z0=var749, java.lang.Object=var2871, $r4=var2011, $r5=var438}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type>;	$r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type>;	$i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); };	$r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");	$r19 = r1.<org.apache.lucene.search.SortField: java.lang.String field>;	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>];	$z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>;	if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	$r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5