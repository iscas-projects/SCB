(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2492 0)
(declare-sort var3594 0)
(declare-sort var3852 0)
(declare-sort var2433 0)
(declare-sort var3683 0)
(declare-sort var665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2433) Int)
(declare-fun cast-from-var3594-to-var2433 (var3594) var2433)
(declare-fun var3683-init () var3683)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var665) String)
(declare-fun cast-from-var3594-to-var665 (var3594) var665)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/302830823 (var3683 String) void)
(declare-const null-var2492 var2492)
(declare-const null-var3594 var3594)
(declare-const null-Int Int)
(declare-const var3852-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType (Array Int Int))
(declare-const var3949 var2492) ; Statement: r7 := @this: com.mysql.cj.protocol.x.FieldFactory 
(assert (not (= var3949 null-var2492)))
(declare-const var196 var3594) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType 
(assert (not (= var196 null-var3594)))
(declare-const var616 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var616 null-Int)))
(define-const var1646 (Array Int Int) var3852-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType) ; Statement: $r1 = <com.mysql.cj.protocol.x.FieldFactory$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType> 
(assert true)
(define-const var2589 Int (ordinal/-291641772 (cast-from-var3594-to-var2433 var196))) ; Statement: $i0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType: int ordinal()>() 
(define-const var2165 Int (select var1646 var2589)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return 8;     case 2: goto return 8;     case 3: goto return 4;     case 4: goto return 5;     case 5: goto return 246;     case 6: goto lookupswitch(i2) {     case 1: goto return 255;     case 2: goto return 245;     default: goto return 15; };     case 7: goto return 11;     case 8: goto return 12;     case 9: goto return 248;     case 10: goto return 247;     case 11: goto return 16;     default: goto $r2 = new com.mysql.cj.exceptions.WrongArgumentException; } 
(assert (and (not (= var2165 11)) (and (not (= var2165 10)) (and (not (= var2165 9)) (and (not (= var2165 8)) (and (not (= var2165 7)) (and (not (= var2165 6)) (and (not (= var2165 5)) (and (not (= var2165 4)) (and (not (= var2165 3)) (and (not (= var2165 2)) (and (not (= var2165 1)) true)))))))))))) ; Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var2520 var3683 var3683-init) ; Statement: $r2 = new com.mysql.cj.exceptions.WrongArgumentException 
(define-const var1450 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1450)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1450!1 String)
(assert (= var1450!1 ""))
(assert true)
(define-const var2105 String (append/672562846 var1450!1 "TODO: unknown field type: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO: unknown field type: ") 
(declare-const var1450!2 String)
(assert (= var1450!2 (str.++ var1450!1 "TODO: unknown field type: ")))
(assert true)
(define-const var1429 String (append/-1031950772 var2105 (cast-from-var3594-to-var665 var196))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2105!1 String)
(assert (str.prefixof var2105 var2105!1))
(assert true)
(define-const var901 String (toString/-2075883882 var1429)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/302830823 var2520 var901)) ; Statement: specialinvoke $r2.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var2520!1 var3683)
(declare-const var901!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var3594-to-var2433=([com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType], java.lang.Enum), var3683-init=([], com.mysql.cj.exceptions.WrongArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3594-to-var665=([com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/302830823=([com.mysql.cj.exceptions.WrongArgumentException, java.lang.String], void)}
; {var2492=com.mysql.cj.protocol.x.FieldFactory, var3949=r7, var3594=com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType, var196=r0, var616=i2, var3852=com.mysql.cj.protocol.x.FieldFactory$1, var1646=$r1, var2433=java.lang.Enum, var2589=$i0, var2165=$i1, var3683=com.mysql.cj.exceptions.WrongArgumentException, var2520=$r2, var1450=$r3, var2105=$r4, var665=java.lang.Object, var1429=$r5, var901=$r6}
; {com.mysql.cj.protocol.x.FieldFactory=var2492, r7=var3949, com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType=var3594, r0=var196, i2=var616, com.mysql.cj.protocol.x.FieldFactory$1=var3852, $r1=var1646, java.lang.Enum=var2433, $i0=var2589, $i1=var2165, com.mysql.cj.exceptions.WrongArgumentException=var3683, $r2=var2520, $r3=var1450, $r4=var2105, java.lang.Object=var665, $r5=var1429, $r6=var901}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.mysql.cj.protocol.x.FieldFactory;	r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType;	i2 := @parameter1: int;	$r1 = <com.mysql.cj.protocol.x.FieldFactory$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxResultset$ColumnMetaData$FieldType>;	$i0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxResultset$ColumnMetaData$FieldType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return 8;     case 2: goto return 8;     case 3: goto return 4;     case 4: goto return 5;     case 5: goto return 246;     case 6: goto lookupswitch(i2) {     case 1: goto return 255;     case 2: goto return 245;     default: goto return 15; };     case 7: goto return 11;     case 8: goto return 12;     case 9: goto return 248;     case 10: goto return 247;     case 11: goto return 16;     default: goto $r2 = new com.mysql.cj.exceptions.WrongArgumentException; };	$r2 = new com.mysql.cj.exceptions.WrongArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO: unknown field type: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.mysql.cj.exceptions.WrongArgumentException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 2