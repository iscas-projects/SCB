(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2943 0)
(declare-sort var1158 0)
(declare-sort var3115 0)
(declare-sort var2667 0)
(declare-sort var2342 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-543715700 (var2943) var3115)
(declare-fun ordinal/-291641772 (var2667) Int)
(declare-fun cast-from-var3115-to-var2667 (var3115) var2667)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun reverse/-543715700 (var2943) Bool)
(declare-fun missingValue/-543715700 (var2943) var2342)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2943 var2943)
(declare-const var1158-$SwitchMap$org$apache$lucene$search$SortField$Type (Array Int Int))
(declare-const null-var2342 var2342)
(declare-const var3309 var2943) ; Statement: r1 := @this: org.apache.lucene.search.SortField 
(assert (not (= var3309 null-var2943)))
(define-const var131 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var131)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var131!1 String)
(assert (= var131!1 ""))
(define-const var2720 (Array Int Int) var1158-$SwitchMap$org$apache$lucene$search$SortField$Type) ; Statement: $r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type> 
(define-const var1161 var3115 (type/-543715700 var3309)) ; Statement: $r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type> 
(assert true)
(define-const var1080 Int (ordinal/-291641772 (cast-from-var3115-to-var2667 var1161))) ; Statement: $i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>() 
(define-const var1077 Int (select var2720 var1080)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); } 
(assert (and (= var1077 7) (and (not (= var1077 6)) (and (not (= var1077 5)) (and (not (= var1077 4)) (and (not (= var1077 3)) (and (not (= var1077 2)) (and (not (= var1077 1)) true)))))))) ; Intersect: Cond: $i1 == 7  and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
(assert true)
;(assert (append/672562846 var131!1 "<doc>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>") 
(declare-const var131!2 String)
(assert (= var131!2 (str.++ var131!1 "<doc>")))
 ; Statement: goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>] 
(assert true) ; Non Conditional
(define-const var2754 Bool (reverse/-543715700 var3309)) ; Statement: $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse> 
 ; Statement: if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
(assert (= (ite var2754 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3486 var2342 (missingValue/-543715700 var3309)) ; Statement: $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
 ; Statement: if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3486 null-var2342)) ; Cond: $r4 == null 
(assert true)
(define-const var2123 String (toString/-2075883882 var131!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-543715700=([org.apache.lucene.search.SortField], org.apache.lucene.search.SortField$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3115-to-var2667=([org.apache.lucene.search.SortField$Type], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), reverse/-543715700=([org.apache.lucene.search.SortField], boolean), missingValue/-543715700=([org.apache.lucene.search.SortField], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2943=org.apache.lucene.search.SortField, var3309=r1, var131=$r0, var1158=org.apache.lucene.search.SortField$3, var2720=$r3, var3115=org.apache.lucene.search.SortField$Type, var1161=$r2, var2667=java.lang.Enum, var1080=$i0, var1077=$i1, var2754=$z0, var2342=java.lang.Object, var3486=$r4, var2123=$r5}
; {org.apache.lucene.search.SortField=var2943, r1=var3309, $r0=var131, org.apache.lucene.search.SortField$3=var1158, $r3=var2720, org.apache.lucene.search.SortField$Type=var3115, $r2=var1161, java.lang.Enum=var2667, $i0=var1080, $i1=var1077, $z0=var2754, java.lang.Object=var2342, $r4=var3486, $r5=var2123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type>;	$r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type>;	$i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); };	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");	goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>];	$z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>;	if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	$r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5