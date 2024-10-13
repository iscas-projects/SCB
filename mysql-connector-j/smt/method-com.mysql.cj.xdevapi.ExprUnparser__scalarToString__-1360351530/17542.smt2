(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var160 0)
(declare-sort var3342 0)
(declare-sort var528 0)
(declare-sort var3113 0)
(declare-sort var3278 0)
(declare-sort var3922 0)
(declare-sort var3726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1556141661 (var160) var528)
(declare-fun ordinal/-291641772 (var3113) Int)
(declare-fun cast-from-var528-to-var3113 (var528) var3113)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getVOctets/1236491283 (var160) var3278)
(declare-fun getValue/1365446418 (var3278) var3922)
(declare-fun toStringUtf8/-783695909 (var3922) String)
(declare-fun var3726_escapeLiteral/-670339527 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var160 var160)
(declare-const var3342-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type (Array Int Int))
(declare-const var367 var160) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar 
(assert (not (= var367 null-var160)))
(define-const var497 (Array Int Int) var3342-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type> 
(assert true)
(define-const var2787 var528 (getType/1556141661 var367)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>() 
(assert true)
(define-const var1521 Int (ordinal/-291641772 (cast-from-var528-to-var3113 var2787))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>() 
(define-const var3898 Int (select var497 var1521)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; } 
(assert (and (= var3898 2) (and (not (= var3898 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1862 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1862)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1862!1 String)
(assert (= var1862!1 ""))
(assert true)
(define-const var330 String (append/672562846 var1862!1 "\u0022")) ; Statement: $r21 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var1862!2 String)
(assert (= var1862!2 (str.++ var1862!1 "\u0022")))
(assert true)
(define-const var2532 var3278 (getVOctets/1236491283 var367)) ; Statement: $r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets getVOctets()>() 
(assert true)
(define-const var882 var3922 (getValue/1365446418 var2532)) ; Statement: $r18 = virtualinvoke $r17.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets: com.google.protobuf.ByteString getValue()>() 
(assert true)
(define-const var3377 String (toStringUtf8/-783695909 var882)) ; Statement: $r19 = virtualinvoke $r18.<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>() 
(define-const var2613 String (var3726_escapeLiteral/-670339527 var3377)) ; Statement: $r20 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String escapeLiteral(java.lang.String)>($r19) 
(assert true)
(define-const var390 String (append/672562846 var330 var2613)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var330!1 String)
(assert (= var330!1 (str.++ var330 var2613)))
(assert true)
(define-const var1599 String (append/672562846 var390 "\u0022")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var390!1 String)
(assert (= var390!1 (str.++ var390 "\u0022")))
(assert true)
(define-const var769 String (toString/-2075883882 var1599)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1556141661=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var528-to-var3113=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getVOctets/1236491283=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets), getValue/1365446418=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets], com.google.protobuf.ByteString), toStringUtf8/-783695909=([com.google.protobuf.ByteString], java.lang.String), var3726_escapeLiteral/-670339527=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var160=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var367=r0, var3342=com.mysql.cj.xdevapi.ExprUnparser$1, var497=$r1, var528=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type, var2787=$r2, var3113=java.lang.Enum, var1521=$i0, var3898=$i1, var1862=$r16, var330=$r21, var3278=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets, var2532=$r17, var3922=com.google.protobuf.ByteString, var882=$r18, var3377=$r19, var3726=com.mysql.cj.xdevapi.ExprUnparser, var2613=$r20, var390=$r22, var1599=$r23, var769=$r24}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var160, r0=var367, com.mysql.cj.xdevapi.ExprUnparser$1=var3342, $r1=var497, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type=var528, $r2=var2787, java.lang.Enum=var3113, $i0=var1521, $i1=var3898, $r16=var1862, $r21=var330, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets=var3278, $r17=var2532, com.google.protobuf.ByteString=var3922, $r18=var882, $r19=var3377, com.mysql.cj.xdevapi.ExprUnparser=var3726, $r20=var2613, $r22=var390, $r23=var1599, $r24=var769}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; };	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r17 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets getVOctets()>();	$r18 = virtualinvoke $r17.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Octets: com.google.protobuf.ByteString getValue()>();	$r19 = virtualinvoke $r18.<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>();	$r20 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String escapeLiteral(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	return $r24
;block_num 2