(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2817 0)
(declare-sort var3658 0)
(declare-sort var2803 0)
(declare-sort var2935 0)
(declare-sort var1381 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun type/-543715700 (var2817) var2803)
(declare-fun ordinal/-291641772 (var2935) Int)
(declare-fun cast-from-var2803-to-var2935 (var2803) var2935)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun field/-543715700 (var2817) String)
(declare-fun comparatorSource/-543715700 (var2817) var1381)
(declare-fun append/-1031950772 (String var2370) String)
(declare-fun cast-from-var1381-to-var2370 (var1381) var2370)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun reverse/-543715700 (var2817) Bool)
(declare-fun missingValue/-543715700 (var2817) var2370)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2817 var2817)
(declare-const var3658-$SwitchMap$org$apache$lucene$search$SortField$Type (Array Int Int))
(declare-const null-var2370 var2370)
(declare-const var2503 var2817) ; Statement: r1 := @this: org.apache.lucene.search.SortField 
(assert (not (= var2503 null-var2817)))
(define-const var2595 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2595)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2595!1 String)
(assert (= var2595!1 ""))
(define-const var2039 (Array Int Int) var3658-$SwitchMap$org$apache$lucene$search$SortField$Type) ; Statement: $r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type> 
(define-const var3100 var2803 (type/-543715700 var2503)) ; Statement: $r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type> 
(assert true)
(define-const var3288 Int (ordinal/-291641772 (cast-from-var2803-to-var2935 var3100))) ; Statement: $i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>() 
(define-const var2178 Int (select var2039 var3288)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); } 
(assert (and (= var2178 6) (and (not (= var2178 5)) (and (not (= var2178 4)) (and (not (= var2178 3)) (and (not (= var2178 2)) (and (not (= var2178 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(assert true)
(define-const var828 String (append/672562846 var2595!1 "<custom:\u0022")) ; Statement: $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"") 
(declare-const var2595!2 String)
(assert (= var2595!2 (str.++ var2595!1 "<custom:\u0022")))
(define-const var2214 String (field/-543715700 var2503)) ; Statement: $r13 = r1.<org.apache.lucene.search.SortField: java.lang.String field> 
(assert true)
(define-const var3226 String (append/672562846 var828 var2214)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var828!1 String)
(assert (= var828!1 (str.++ var828 var2214)))
(assert true)
(define-const var3550 String (append/672562846 var3226 "\u0022: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": ") 
(declare-const var3226!1 String)
(assert (= var3226!1 (str.++ var3226 "\u0022: ")))
(define-const var2630 var1381 (comparatorSource/-543715700 var2503)) ; Statement: $r16 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.FieldComparatorSource comparatorSource> 
(assert true)
(define-const var2963 String (append/-1031950772 var3550 (cast-from-var1381-to-var2370 var2630))) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16) 
(declare-const var3550!1 String)
(assert (str.prefixof var3550 var3550!1))
(assert true)
;(assert (append/-1166366385 var2963 62)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62) 
(declare-const var2963!1 String)
(assert (str.prefixof var2963 var2963!1))
 ; Statement: goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>] 
(assert true) ; Non Conditional
(define-const var3439 Bool (reverse/-543715700 var2503)) ; Statement: $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse> 
 ; Statement: if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
(assert (= (ite var3439 1 0) 0)) ; Cond: $z0 == 0 
(define-const var494 var2370 (missingValue/-543715700 var2503)) ; Statement: $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue> 
 ; Statement: if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var494 null-var2370)) ; Cond: $r4 == null 
(assert true)
(define-const var3238 String (toString/-2075883882 var2595!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), type/-543715700=([org.apache.lucene.search.SortField], org.apache.lucene.search.SortField$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2803-to-var2935=([org.apache.lucene.search.SortField$Type], java.lang.Enum), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), field/-543715700=([org.apache.lucene.search.SortField], java.lang.String), comparatorSource/-543715700=([org.apache.lucene.search.SortField], org.apache.lucene.search.FieldComparatorSource), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1381-to-var2370=([org.apache.lucene.search.FieldComparatorSource], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), reverse/-543715700=([org.apache.lucene.search.SortField], boolean), missingValue/-543715700=([org.apache.lucene.search.SortField], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2817=org.apache.lucene.search.SortField, var2503=r1, var2595=$r0, var3658=org.apache.lucene.search.SortField$3, var2039=$r3, var2803=org.apache.lucene.search.SortField$Type, var3100=$r2, var2935=java.lang.Enum, var3288=$i0, var2178=$i1, var828=$r14, var2214=$r13, var3226=$r15, var3550=$r17, var1381=org.apache.lucene.search.FieldComparatorSource, var2630=$r16, var2370=java.lang.Object, var2963=$r18, var3439=$z0, var494=$r4, var3238=$r5}
; {org.apache.lucene.search.SortField=var2817, r1=var2503, $r0=var2595, org.apache.lucene.search.SortField$3=var3658, $r3=var2039, org.apache.lucene.search.SortField$Type=var2803, $r2=var3100, java.lang.Enum=var2935, $i0=var3288, $i1=var2178, $r14=var828, $r13=var2214, $r15=var3226, $r17=var3550, org.apache.lucene.search.FieldComparatorSource=var1381, $r16=var2630, java.lang.Object=var2370, $r18=var2963, $z0=var3439, $r4=var494, $r5=var3238}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.lucene.search.SortField;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = <org.apache.lucene.search.SortField$3: int[] $SwitchMap$org$apache$lucene$search$SortField$Type>;	$r2 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.SortField$Type type>;	$i0 = virtualinvoke $r2.<org.apache.lucene.search.SortField$Type: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto $r32 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string: \"");     case 2: goto $r29 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<int: \"");     case 3: goto $r26 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<long: \"");     case 4: goto $r23 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<float: \"");     case 5: goto $r20 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<double: \"");     case 6: goto $r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");     case 7: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<doc>");     case 8: goto $r11 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<rewriteable: \"");     case 9: goto $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<string_val: \"");     case 10: goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<score>");     default: goto $r35 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<???: \""); };	$r14 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<custom:\"");	$r13 = r1.<org.apache.lucene.search.SortField: java.lang.String field>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\": ");	$r16 = r1.<org.apache.lucene.search.SortField: org.apache.lucene.search.FieldComparatorSource comparatorSource>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r16);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(62);	goto [?= $z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>];	$z0 = r1.<org.apache.lucene.search.SortField: boolean reverse>;	if $z0 == 0 goto $r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	$r4 = r1.<org.apache.lucene.search.SortField: java.lang.Object missingValue>;	if $r4 == null goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 5