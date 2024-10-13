(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1020 0)
(declare-sort var882 0)
(declare-sort var3902 0)
(declare-sort var3226 0)
(declare-sort var1325 0)
(declare-sort var912 0)
(declare-sort var3451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun field/970806933 (var1020) var3902)
(declare-fun getMysqlType/-2023238266 (var3902) var3226)
(declare-fun ordinal/-291641772 (var1325) Int)
(declare-fun cast-from-var3226-to-var1325 (var3226) var1325)
(declare-fun var912-init () var912)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3451) String)
(declare-fun cast-from-var3226-to-var3451 (var3226) var3451)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var912 String) void)
(declare-const null-var1020 var1020)
(declare-const var882-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3786 var1020) ; Statement: r0 := @this: com.mysql.cj.xdevapi.ColumnImpl 
(assert (not (= var3786 null-var1020)))
(define-const var643 (Array Int Int) var882-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r2 = <com.mysql.cj.xdevapi.ColumnImpl$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2618 var3902 (field/970806933 var3786)) ; Statement: $r1 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field> 
(assert true)
(define-const var3682 var3226 (getMysqlType/-2023238266 var2618)) ; Statement: $r3 = virtualinvoke $r1.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1613 Int (ordinal/-291641772 (cast-from-var3226-to-var1325 var3682))) ; Statement: $i0 = virtualinvoke $r3.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3167 Int (select var643 var1613)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r51 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type BIT>;     case 2: goto $r38 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;     case 3: goto $r25 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;     case 4: goto $r24 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type FLOAT>;     case 5: goto $r24 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type FLOAT>;     case 6: goto $r23 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DECIMAL>;     case 7: goto $r23 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DECIMAL>;     case 8: goto $r22 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DOUBLE>;     case 9: goto $r22 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DOUBLE>;     case 10: goto $r21 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type STRING>;     case 11: goto $r21 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type STRING>;     case 12: goto $r20 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type JSON>;     case 13: goto $r19 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type BYTES>;     case 14: goto $r18 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type TIME>;     case 15: goto $r8 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;     case 16: goto $r7 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type TIMESTAMP>;     case 17: goto $r6 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type SET>;     case 18: goto $r5 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type ENUM>;     case 19: goto $r4 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type GEOMETRY>;     default: goto $r52 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3167 19)) (and (not (= var3167 18)) (and (not (= var3167 17)) (and (not (= var3167 16)) (and (not (= var3167 15)) (and (not (= var3167 14)) (and (not (= var3167 13)) (and (not (= var3167 12)) (and (not (= var3167 11)) (and (not (= var3167 10)) (and (not (= var3167 9)) (and (not (= var3167 8)) (and (not (= var3167 7)) (and (not (= var3167 6)) (and (not (= var3167 5)) (and (not (= var3167 4)) (and (not (= var3167 3)) (and (not (= var3167 2)) (and (not (= var3167 1)) true)))))))))))))))))))) ; Intersect: Negate: Cond: $i1 == 19   and Intersect: Negate: Cond: $i1 == 18   and Intersect: Negate: Cond: $i1 == 17   and Intersect: Negate: Cond: $i1 == 16   and Intersect: Negate: Cond: $i1 == 15   and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional                   
(define-const var222 var912 var912-init) ; Statement: $r52 = new java.lang.IllegalArgumentException 
(define-const var3712 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3712)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3712!1 String)
(assert (= var3712!1 ""))
(assert true)
(define-const var1700 String (append/672562846 var3712!1 "Unknown type in metadata: ")) ; Statement: $r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type in metadata: ") 
(declare-const var3712!2 String)
(assert (= var3712!2 (str.++ var3712!1 "Unknown type in metadata: ")))
(define-const var1870 var3902 (field/970806933 var3786)) ; Statement: $r54 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field> 
(assert true)
(define-const var302 var3226 (getMysqlType/-2023238266 var1870)) ; Statement: $r55 = virtualinvoke $r54.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1113 String (append/-1031950772 var1700 (cast-from-var3226-to-var3451 var302))) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r55) 
(declare-const var1700!1 String)
(assert (str.prefixof var1700 var1700!1))
(assert true)
(define-const var3688 String (toString/-2075883882 var1113)) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var222 var3688)) ; Statement: specialinvoke $r52.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r58) 

(declare-const var222!1 var912)
(declare-const var3688!1 String)
 ; Statement: throw $r52 
(check-sat)
(get-model)
(get-unsat-core)
; {field/970806933=([com.mysql.cj.xdevapi.ColumnImpl], com.mysql.cj.result.Field), getMysqlType/-2023238266=([com.mysql.cj.result.Field], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3226-to-var1325=([com.mysql.cj.MysqlType], java.lang.Enum), var912-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3226-to-var3451=([com.mysql.cj.MysqlType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1020=com.mysql.cj.xdevapi.ColumnImpl, var3786=r0, var882=com.mysql.cj.xdevapi.ColumnImpl$1, var643=$r2, var3902=com.mysql.cj.result.Field, var2618=$r1, var3226=com.mysql.cj.MysqlType, var3682=$r3, var1325=java.lang.Enum, var1613=$i0, var3167=$i1, var912=java.lang.IllegalArgumentException, var222=$r52, var3712=$r53, var1700=$r56, var1870=$r54, var302=$r55, var3451=java.lang.Object, var1113=$r57, var3688=$r58}
; {com.mysql.cj.xdevapi.ColumnImpl=var1020, r0=var3786, com.mysql.cj.xdevapi.ColumnImpl$1=var882, $r2=var643, com.mysql.cj.result.Field=var3902, $r1=var2618, com.mysql.cj.MysqlType=var3226, $r3=var3682, java.lang.Enum=var1325, $i0=var1613, $i1=var3167, java.lang.IllegalArgumentException=var912, $r52=var222, $r53=var3712, $r56=var1700, $r54=var1870, $r55=var302, java.lang.Object=var3451, $r57=var1113, $r58=var3688}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.xdevapi.ColumnImpl;	$r2 = <com.mysql.cj.xdevapi.ColumnImpl$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r1 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;	$r3 = virtualinvoke $r1.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r3.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r51 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type BIT>;     case 2: goto $r38 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;     case 3: goto $r25 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;     case 4: goto $r24 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type FLOAT>;     case 5: goto $r24 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type FLOAT>;     case 6: goto $r23 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DECIMAL>;     case 7: goto $r23 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DECIMAL>;     case 8: goto $r22 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DOUBLE>;     case 9: goto $r22 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type DOUBLE>;     case 10: goto $r21 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type STRING>;     case 11: goto $r21 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type STRING>;     case 12: goto $r20 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type JSON>;     case 13: goto $r19 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type BYTES>;     case 14: goto $r18 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type TIME>;     case 15: goto $r8 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;     case 16: goto $r7 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type TIMESTAMP>;     case 17: goto $r6 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type SET>;     case 18: goto $r5 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type ENUM>;     case 19: goto $r4 = <com.mysql.cj.xdevapi.Type: com.mysql.cj.xdevapi.Type GEOMETRY>;     default: goto $r52 = new java.lang.IllegalArgumentException; };	$r52 = new java.lang.IllegalArgumentException;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type in metadata: ");	$r54 = r0.<com.mysql.cj.xdevapi.ColumnImpl: com.mysql.cj.result.Field field>;	$r55 = virtualinvoke $r54.<com.mysql.cj.result.Field: com.mysql.cj.MysqlType getMysqlType()>();	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r55);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r52.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r58);	throw $r52
;block_num 2