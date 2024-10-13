(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3974 0)
(declare-sort var1427 0)
(declare-sort var1689 0)
(declare-sort var1009 0)
(declare-sort var1349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-543715700 (var3974) var1689)
(declare-fun ordinal/-291641772 (var1009) Int)
(declare-fun cast-from-var1689-to-var1009 (var1689) var1009)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun field/-543715700 (var3974) String)
(declare-fun reverse/-543715700 (var3974) Bool)
(declare-fun missingValue/-543715700 (var3974) var1349)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3974 var3974)
(declare-const var1427-$SwitchMap$org$apache$lucene$search$SortField$Type (Array Int Int))
(declare-const null-var1349 var1349)
(declare-const var3890 var3974) ; Statement: r1 := @this: org.apache.lucene.search.SortField 
(assert (not (= var3890 null-var3974)))
(define-const var3350 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3350)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3350!1 String)
(assert (= var3350!1 ""))
(define-const var2931 (Array Int Int) var1427-$SwitchMap$org$apache$lucene$search$SortField$Type) ; Statement: $r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type> 
(define-const var3400 var1689 (type/-543715700 var3890)) ; Statement: $r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type> 
(assert true)
(define-const var2859 Int (ordinal/-291641772 (cast-from-var1689-to-var1009 var3400))) ; Statement: $i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>() 
(define-const var2019 Int (select var2931 var2859)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); } 
(assert (and (= var2019 4) (and (not (= var2019 3)) (and (not (= var2019 2)) (and (not (= var2019 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(assert true)
(define-const var421 String (append/672562846 var3350!1 "<float: \u0022")) ; Statement: $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"") 
(declare-const var3350!2 String)
(assert (= var3350!2 (str.++ var3350!1 "<float: \u0022")))
(define-const var1986 String (field/-543715700 var3890)) ; Statement: $r22 = r1.<org.apache.lucene.search.SortField: java.lang.String field> 
(assert true)
(define-const var1999 String (append/672562846 var421 var1986)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var421!1 String)
(assert (= var421!1 (str.++ var421 var1986)))
(assert true)
;(assert (append/672562846 var1999 "\u0022>")) ; Statement: virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">") 
(declare-const var1999!1 String)
(assert (= var1999!1 (str.++ var1999 "\u0022>")))
 ; Statement: goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>] 
(assert true) ; Non Conditional
(define-const var2267 Bool (reverse/-543715700 var3890)) ; Statement: $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse> 
 ; Statement: if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
(assert (= (ite var2267 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3684 var1349 (missingValue/-543715700 var3890)) ; Statement: $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
 ; Statement: if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var3684 null-var1349)) ; Cond: $r4 == null 
(assert true)
(define-const var961 String (toString/-2075883882 var3350!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-543715700=([org.apache.lucene.search.SortField], org.apache.lucene.search.SortField$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1689-to-var1009=([org.apache.lucene.search.SortField$Type], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), field/-543715700=([org.apache.lucene.search.SortField], java.lang.String), reverse/-543715700=([org.apache.lucene.search.SortField], boolean), missingValue/-543715700=([org.apache.lucene.search.SortField], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3974=org.apache.lucene.search.SortField, var3890=r1, var3350=$r0, var1427=org.apache.lucene.search.SortField$3, var2931=$r3, var1689=org.apache.lucene.search.SortField$Type, var3400=$r2, var1009=java.lang.Enum, var2859=$i0, var2019=$i1, var421=$r23, var1986=$r22, var1999=$r24, var2267=$z0, var1349=java.lang.Object, var3684=$r4, var961=$r5}
; {org.apache.lucene.search.SortField=var3974, r1=var3890, $r0=var3350, org.apache.lucene.search.SortField$3=var1427, $r3=var2931, org.apache.lucene.search.SortField$Type=var1689, $r2=var3400, java.lang.Enum=var1009, $i0=var2859, $i1=var2019, $r23=var421, $r22=var1986, $r24=var1999, $z0=var2267, java.lang.Object=var1349, $r4=var3684, $r5=var961}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type>;	$r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type>;	$i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); };	$r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");	$r22 = r1.<org.apache.lucene.search.SortField: java.lang.String field>;	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\">");	goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>];	$z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>;	if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	$r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5