(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1244 0)
(declare-sort var244 0)
(declare-sort var2289 0)
(declare-sort var2950 0)
(declare-sort var2404 0)
(declare-sort var793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2950) Int)
(declare-fun cast-from-var244-to-var2950 (var244) var2950)
(declare-fun var2404-init () var2404)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var793) String)
(declare-fun cast-from-var244-to-var793 (var244) var793)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var2404 String) void)
(declare-const null-var1244 var1244)
(declare-const null-var244 var244)
(declare-const null-Int Int)
(declare-const var2289-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType (Array Int Int))
(declare-const var3214 var1244) ; Statement: r18 := @this: com.mysql.cj.protocol.x.FieldFactory 
(assert (not (= var3214 null-var1244)))
(declare-const var1912 var244) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType 
(assert (not (= var1912 null-var244)))
(declare-const var2353 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2353 null-Int)))
(declare-const var673 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var673 null-Int)))
(declare-const var873 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var873 null-Int)))
(define-const var2494 (Array Int Int) var2289-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType) ; Statement: $r1 = <com.mysql.cj.protocol.x.FieldFactory$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType> 
(assert true)
(define-const var1507 Int (ordinal/-291641772 (cast-from-var244-to-var2950 var1912))) ; Statement: $i0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType: int ordinal()>() 
(define-const var1599 Int (select var2494 var1507)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r12 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 2: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT_UNSIGNED>;     case 3: goto $i7 = i4 & 1;     case 4: goto $i6 = i4 & 1;     case 5: goto $i5 = i4 & 1;     case 6: goto lookupswitch(i2) {     case 1: goto $r8 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     case 2: goto $r7 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     default: goto if i3 != 33 goto $r9 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>; };     case 7: goto $r6 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 8: goto $r5 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 9: goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 10: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 11: goto $r2 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     default: goto $r13 = new com.mysql.cj.exceptions.WrongArgumentException; } 
(assert (and (not (= var1599 11)) (and (not (= var1599 10)) (and (not (= var1599 9)) (and (not (= var1599 8)) (and (not (= var1599 7)) (and (not (= var1599 6)) (and (not (= var1599 5)) (and (not (= var1599 4)) (and (not (= var1599 3)) (and (not (= var1599 2)) (and (not (= var1599 1)) true)))))))))))) ; Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var1144 var2404 var2404-init) ; Statement: $r13 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var492 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var492)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var492!1 String)
(assert (= var492!1 ""))
(assert true)
(define-const var3680 String (append/672562846 var492!1 "TODO: unknown field type: ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO: unknown field type: ") 
(declare-const var492!2 String)
(assert (= var492!2 (str.++ var492!1 "TODO: unknown field type: ")))
(assert true)
(define-const var2697 String (append/-1031950772 var3680 (cast-from-var244-to-var793 var1912))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3680!1 String)
(assert (str.prefixof var3680 var3680!1))
(assert true)
(define-const var671 String (toString/-2075883882 var2697)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var1144 var671)) ; Statement: specialinvoke $r13.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r17) 

(declare-const var1144!1 var2404)
(declare-const var671!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var244-to-var2950=([com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType], java.lang.Enum), var2404-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var244-to-var793=([com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var1244=com.mysql.cj.protocol.x.FieldFactory, var3214=r18, var244=com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType, var1912=r0, var2353=i2, var673=i4, var873=i3, var2289=com.mysql.cj.protocol.x.FieldFactory$1, var2494=$r1, var2950=java.lang.Enum, var1507=$i0, var1599=$i1, var2404=com.mysql.cj.exceptions.WrongArgumentException, var1144=$r13, var492=$r14, var3680=$r15, var793=java.lang.Object, var2697=$r16, var671=$r17}
; {com.mysql.cj.protocol.x.FieldFactory=var1244, r18=var3214, com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType=var244, r0=var1912, i2=var2353, i4=var673, i3=var873, com.mysql.cj.protocol.x.FieldFactory$1=var2289, $r1=var2494, java.lang.Enum=var2950, $i0=var1507, $i1=var1599, com.mysql.cj.exceptions.WrongArgumentException=var2404, $r13=var1144, $r14=var492, $r15=var3680, java.lang.Object=var793, $r16=var2697, $r17=var671}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.mysql.cj.protocol.x.FieldFactory;	r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType;	i2 := @parameter1: int;	i4 := @parameter2: int;	i3 := @parameter3: int;	$r1 = <com.mysql.cj.protocol.x.FieldFactory$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType>;	$i0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r12 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 2: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT_UNSIGNED>;     case 3: goto $i7 = i4 & 1;     case 4: goto $i6 = i4 & 1;     case 5: goto $i5 = i4 & 1;     case 6: goto lookupswitch(i2) {     case 1: goto $r8 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     case 2: goto $r7 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     default: goto if i3 != 33 goto $r9 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>; };     case 7: goto $r6 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 8: goto $r5 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 9: goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 10: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 11: goto $r2 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     default: goto $r13 = new com.mysql.cj.exceptions.WrongArgumentException; };	$r13 = new com.mysql.cj.exceptions.WrongArgumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO: unknown field type: ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r17);	throw $r13
;block_num 2