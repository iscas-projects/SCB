(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var898 0)
(declare-sort var2117 0)
(declare-sort var566 0)
(declare-sort var1714 0)
(declare-sort var1867 0)
(declare-sort var1056 0)
(declare-sort var127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1556141661 (var898) var566)
(declare-fun ordinal/-291641772 (var1714) Int)
(declare-fun cast-from-var566-to-var1714 (var566) var1714)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getVString/-1643292109 (var898) var1867)
(declare-fun getValue/-634796257 (var1867) var1056)
(declare-fun toStringUtf8/-783695909 (var1056) String)
(declare-fun var127_escapeLiteral/-670339527 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var898 var898)
(declare-const var2117-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type (Array Int Int))
(declare-const var299 var898) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar 
(assert (not (= var299 null-var898)))
(define-const var2454 (Array Int Int) var2117-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type> 
(assert true)
(define-const var285 var566 (getType/1556141661 var299)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>() 
(assert true)
(define-const var2148 Int (ordinal/-291641772 (cast-from-var566-to-var1714 var285))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>() 
(define-const var3075 Int (select var2454 var2148)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; } 
(assert (and (= var3075 3) (and (not (= var3075 2)) (and (not (= var3075 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3099 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3099)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3099!1 String)
(assert (= var3099!1 ""))
(assert true)
(define-const var3412 String (append/672562846 var3099!1 "\u0022")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var3099!2 String)
(assert (= var3099!2 (str.++ var3099!1 "\u0022")))
(assert true)
(define-const var1400 var1867 (getVString/-1643292109 var299)) ; Statement: $r8 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String getVString()>() 
(assert true)
(define-const var220 var1056 (getValue/-634796257 var1400)) ; Statement: $r9 = virtualinvoke $r8.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String: com.google.protobuf.ByteString getValue()>() 
(assert true)
(define-const var3651 String (toStringUtf8/-783695909 var220)) ; Statement: $r10 = virtualinvoke $r9.<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>() 
(define-const var864 String (var127_escapeLiteral/-670339527 var3651)) ; Statement: $r11 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String escapeLiteral(java.lang.String)>($r10) 
(assert true)
(define-const var2613 String (append/672562846 var3412 var864)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3412!1 String)
(assert (= var3412!1 (str.++ var3412 var864)))
(assert true)
(define-const var2910 String (append/672562846 var2613 "\u0022")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2613!1 String)
(assert (= var2613!1 (str.++ var2613 "\u0022")))
(assert true)
(define-const var665 String (toString/-2075883882 var2910)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1556141661=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var566-to-var1714=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getVString/-1643292109=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String), getValue/-634796257=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String], com.google.protobuf.ByteString), toStringUtf8/-783695909=([com.google.protobuf.ByteString], java.lang.String), var127_escapeLiteral/-670339527=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var898=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var299=r0, var2117=com.mysql.cj.xdevapi.ExprUnparser$1, var2454=$r1, var566=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type, var285=$r2, var1714=java.lang.Enum, var2148=$i0, var3075=$i1, var3099=$r7, var3412=$r12, var1867=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String, var1400=$r8, var1056=com.google.protobuf.ByteString, var220=$r9, var3651=$r10, var127=com.mysql.cj.xdevapi.ExprUnparser, var864=$r11, var2613=$r13, var2910=$r14, var665=$r15}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var898, r0=var299, com.mysql.cj.xdevapi.ExprUnparser$1=var2117, $r1=var2454, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type=var566, $r2=var285, java.lang.Enum=var1714, $i0=var2148, $i1=var3075, $r7=var3099, $r12=var3412, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String=var1867, $r8=var1400, com.google.protobuf.ByteString=var1056, $r9=var220, $r10=var3651, com.mysql.cj.xdevapi.ExprUnparser=var127, $r11=var864, $r13=var2613, $r14=var2910, $r15=var665}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; };	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r8 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String getVString()>();	$r9 = virtualinvoke $r8.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$String: com.google.protobuf.ByteString getValue()>();	$r10 = virtualinvoke $r9.<com.google.protobuf.ByteString: java.lang.String toStringUtf8()>();	$r11 = staticinvoke <com.mysql.cj.xdevapi.ExprUnparser: java.lang.String escapeLiteral(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 2