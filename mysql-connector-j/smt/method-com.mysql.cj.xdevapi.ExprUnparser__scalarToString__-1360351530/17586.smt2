(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3052 0)
(declare-sort var3292 0)
(declare-sort var1791 0)
(declare-sort var3666 0)
(declare-sort var2210 0)
(declare-sort var1253 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1556141661 (var3052) var1791)
(declare-fun ordinal/-291641772 (var3666) Int)
(declare-fun cast-from-var1791-to-var3666 (var1791) var3666)
(declare-fun var2210-init () var2210)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1253) String)
(declare-fun cast-from-var1791-to-var1253 (var1791) var1253)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2210 String) void)
(declare-const null-var3052 var3052)
(declare-const var3292-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type (Array Int Int))
(declare-const var665 var3052) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar 
(assert (not (= var665 null-var3052)))
(define-const var1469 (Array Int Int) var3292-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type> 
(assert true)
(define-const var51 var1791 (getType/1556141661 var665)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>() 
(assert true)
(define-const var1994 Int (ordinal/-291641772 (cast-from-var1791-to-var3666 var51))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>() 
(define-const var3869 Int (select var1469 var1994)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var3869 6)) (and (not (= var3869 5)) (and (not (= var3869 4)) (and (not (= var3869 3)) (and (not (= var3869 2)) (and (not (= var3869 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var2216 var2210 var2210-init) ; Statement: $r29 = new java.lang.IllegalArgumentException 
(define-const var896 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var896)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var896!1 String)
(assert (= var896!1 ""))
(assert true)
(define-const var2376 String (append/672562846 var896!1 "Unknown type tag: ")) ; Statement: $r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type tag: ") 
(declare-const var896!2 String)
(assert (= var896!2 (str.++ var896!1 "Unknown type tag: ")))
(assert true)
(define-const var3898 var1791 (getType/1556141661 var665)) ; Statement: $r31 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>() 
(assert true)
(define-const var2920 String (append/-1031950772 var2376 (cast-from-var1791-to-var1253 var3898))) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31) 
(declare-const var2376!1 String)
(assert (str.prefixof var2376 var2376!1))
(assert true)
(define-const var1300 String (toString/-2075883882 var2920)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2216 var1300)) ; Statement: specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r34) 

(declare-const var2216!1 var2210)
(declare-const var1300!1 String)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1556141661=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1791-to-var3666=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type], java.lang.Enum), var2210-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1791-to-var1253=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3052=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var665=r0, var3292=com.mysql.cj.xdevapi.ExprUnparser$1, var1469=$r1, var1791=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type, var51=$r2, var3666=java.lang.Enum, var1994=$i0, var3869=$i1, var2210=java.lang.IllegalArgumentException, var2216=$r29, var896=$r30, var2376=$r32, var3898=$r31, var1253=java.lang.Object, var2920=$r33, var1300=$r34}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var3052, r0=var665, com.mysql.cj.xdevapi.ExprUnparser$1=var3292, $r1=var1469, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type=var1791, $r2=var51, java.lang.Enum=var3666, $i0=var1994, $i1=var3869, java.lang.IllegalArgumentException=var2210, $r29=var2216, $r30=var896, $r32=var2376, $r31=var3898, java.lang.Object=var1253, $r33=var2920, $r34=var1300}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; };	$r29 = new java.lang.IllegalArgumentException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown type tag: ");	$r31 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r31);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r34);	throw $r29
;block_num 2