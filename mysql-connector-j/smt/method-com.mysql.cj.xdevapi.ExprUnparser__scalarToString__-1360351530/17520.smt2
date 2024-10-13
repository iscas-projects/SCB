(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2752 0)
(declare-sort var108 0)
(declare-sort var833 0)
(declare-sort var3965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1556141661 (var2752) var833)
(declare-fun ordinal/-291641772 (var3965) Int)
(declare-fun cast-from-var833-to-var3965 (var833) var3965)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getVSignedInt/-1061229322 (var2752) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2752 var2752)
(declare-const var108-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type (Array Int Int))
(declare-const var1171 var2752) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar 
(assert (not (= var1171 null-var2752)))
(define-const var2573 (Array Int Int) var108-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type> 
(assert true)
(define-const var2258 var833 (getType/1556141661 var1171)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>() 
(assert true)
(define-const var946 Int (ordinal/-291641772 (cast-from-var833-to-var3965 var2258))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>() 
(define-const var581 Int (select var2573 var946)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; } 
(assert (and (= var581 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
(define-const var1872 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1872)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1872!1 String)
(assert (= var1872!1 ""))
(assert true)
(define-const var2830 String (append/672562846 var1872!1 "")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var1872!2 String)
(assert (= var1872!2 (str.++ var1872!1 "")))
(assert true)
(define-const var2623 Int (getVSignedInt/-1061229322 var1171)) ; Statement: $l2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: long getVSignedInt()>() 
(assert true)
(define-const var2709 String (append/-901862667 var2830 var2623)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var2830!1 String)
(assert (str.prefixof var2830 var2830!1))
(assert true)
(define-const var1303 String (toString/-2075883882 var2709)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1556141661=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var833-to-var3965=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getVSignedInt/-1061229322=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2752=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var1171=r0, var108=com.mysql.cj.xdevapi.ExprUnparser$1, var2573=$r1, var833=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type, var2258=$r2, var3965=java.lang.Enum, var946=$i0, var581=$i1, var1872=$r25, var2830=$r26, var2623=$l2, var2709=$r27, var1303=$r28}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var2752, r0=var1171, com.mysql.cj.xdevapi.ExprUnparser$1=var108, $r1=var2573, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type=var833, $r2=var2258, java.lang.Enum=var3965, $i0=var946, $i1=var581, $r25=var1872, $r26=var2830, $l2=var2623, $r27=var2709, $r28=var1303}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; };	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$l2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: long getVSignedInt()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r28
;block_num 2