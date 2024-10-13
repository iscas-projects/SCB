(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2998 0)
(declare-sort var1330 0)
(declare-sort var1654 0)
(declare-sort var1914 0)
(declare-sort var3945 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-543715700 (var2998) var1654)
(declare-fun ordinal/-291641772 (var1914) Int)
(declare-fun cast-from-var1654-to-var1914 (var1654) var1914)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun field/-543715700 (var2998) String)
(declare-fun reverse/-543715700 (var2998) Bool)
(declare-fun missingValue/-543715700 (var2998) var3945)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2998 var2998)
(declare-const var1330-$SwitchMap$org$apache$lucene$search$SortField$Type (Array Int Int))
(declare-const null-var3945 var3945)
(declare-const var929 var2998) ; Statement: r1 := @this: org.apache.lucene.search.SortField 
(assert (not (= var929 null-var2998)))
(define-const var250 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var250)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var250!1 String)
(assert (= var250!1 ""))
(define-const var1520 (Array Int Int) var1330-$SwitchMap$org$apache$lucene$search$SortField$Type) ; Statement: $r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type> 
(define-const var2701 var1654 (type/-543715700 var929)) ; Statement: $r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type> 
(assert true)
(define-const var299 Int (ordinal/-291641772 (cast-from-var1654-to-var1914 var2701))) ; Statement: $i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>() 
(define-const var2889 Int (select var1520 var299)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); } 
(assert (and (= var2889 2) (and (not (= var2889 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(assert true)
(define-const var2980 String (append/672562846 var250!1 "<int: \u0022")) ; Statement: $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"") 
(declare-const var250!2 String)
(assert (= var250!2 (str.++ var250!1 "<int: \u0022")))
(define-const var3687 String (field/-543715700 var929)) ; Statement: $r28 = r1.<org.apache.lucene.search.SortField: java.lang.String field> 
(assert true)
(define-const var3580 String (append/672562846 var2980 var3687)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2980!1 String)
(assert (= var2980!1 (str.++ var2980 var3687)))
(assert true)
;(assert (append/672562846 var3580 "\u0022>")) ; Statement: virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var3580!1 String)
(assert (= var3580!1 (str.++ var3580 "\u0022>")))
 ; Statement: goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>] 
(assert true) ; Non Conditional
(define-const var211 Bool (reverse/-543715700 var929)) ; Statement: $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse> 
 ; Statement: if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
(assert (= (ite var211 1 0) 0)) ; Cond: $z0 == 0 
(define-const var128 var3945 (missingValue/-543715700 var929)) ; Statement: $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
 ; Statement: if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var128 null-var3945)) ; Cond: $r4 == null 
(assert true)
(define-const var1150 String (toString/-2075883882 var250!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-543715700=([org.apache.lucene.search.SortField], org.apache.lucene.search.SortField$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1654-to-var1914=([org.apache.lucene.search.SortField$Type], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), field/-543715700=([org.apache.lucene.search.SortField], java.lang.String), reverse/-543715700=([org.apache.lucene.search.SortField], boolean), missingValue/-543715700=([org.apache.lucene.search.SortField], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2998=org.apache.lucene.search.SortField, var929=r1, var250=$r0, var1330=org.apache.lucene.search.SortField$3, var1520=$r3, var1654=org.apache.lucene.search.SortField$Type, var2701=$r2, var1914=java.lang.Enum, var299=$i0, var2889=$i1, var2980=$r29, var3687=$r28, var3580=$r30, var211=$z0, var3945=java.lang.Object, var128=$r4, var1150=$r5}
; {org.apache.lucene.search.SortField=var2998, r1=var929, $r0=var250, org.apache.lucene.search.SortField$3=var1330, $r3=var1520, org.apache.lucene.search.SortField$Type=var1654, $r2=var2701, java.lang.Enum=var1914, $i0=var299, $i1=var2889, $r29=var2980, $r28=var3687, $r30=var3580, $z0=var211, java.lang.Object=var3945, $r4=var128, $r5=var1150}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type>;	$r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type>;	$i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); };	$r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");	$r28 = r1.<org.apache.lucene.search.SortField: java.lang.String field>;	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>];	$z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>;	if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	$r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5