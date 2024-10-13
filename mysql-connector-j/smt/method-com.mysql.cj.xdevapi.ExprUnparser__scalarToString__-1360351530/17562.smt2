(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var32 0)
(declare-sort var3949 0)
(declare-sort var335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getType/1556141661 (var3386) var3949)
(declare-fun ordinal/-291641772 (var335) Int)
(declare-fun cast-from-var3949-to-var335 (var3949) var335)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getVDouble/1114798677 (var3386) Float64)
(declare-fun append/33611274 (String Float64) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3386 var3386)
(declare-const var32-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type (Array Int Int))
(declare-const var649 var3386) ; Statement: r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar 
(assert (not (= var649 null-var3386)))
(define-const var1632 (Array Int Int) var32-$SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type) ; Statement: $r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type> 
(assert true)
(define-const var1961 var3949 (getType/1556141661 var649)) ; Statement: $r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>() 
(assert true)
(define-const var1386 Int (ordinal/-291641772 (cast-from-var3949-to-var335 var1961))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>() 
(define-const var501 Int (select var1632 var1386)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; } 
(assert (and (= var501 4) (and (not (= var501 3)) (and (not (= var501 2)) (and (not (= var501 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var2653 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2653)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2653!1 String)
(assert (= var2653!1 ""))
(assert true)
(define-const var1019 String (append/672562846 var2653!1 "")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var2653!2 String)
(assert (= var2653!2 (str.++ var2653!1 "")))
(assert true)
(define-const var3323 Float64 (getVDouble/1114798677 var649)) ; Statement: $d0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: double getVDouble()>() 
(assert true)
(define-const var622 String (append/33611274 var1019 var3323)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0) 
(declare-const var1019!1 String)
(assert (str.prefixof var1019 var1019!1))
(assert true)
(define-const var1716 String (toString/-2075883882 var622)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getType/1556141661=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3949-to-var335=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getVDouble/1114798677=([com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar], double), append/33611274=([java.lang.StringBuilder, double], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3386=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar, var649=r0, var32=com.mysql.cj.xdevapi.ExprUnparser$1, var1632=$r1, var3949=com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type, var1961=$r2, var335=java.lang.Enum, var1386=$i0, var501=$i1, var2653=$r3, var1019=$r4, var3323=$d0, var622=$r5, var1716=$r6}
; {com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar=var3386, r0=var649, com.mysql.cj.xdevapi.ExprUnparser$1=var32, $r1=var1632, com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type=var3949, $r2=var1961, java.lang.Enum=var335, $i0=var1386, $i1=var501, $r3=var2653, $r4=var1019, $d0=var3323, $r5=var622, $r6=var1716}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(double)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(double)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar;	$r1 = <com.mysql.cj.xdevapi.ExprUnparser$1: int[] $SwitchMap$com$mysql$cj$x$protobuf$MysqlxDatatypes$Scalar$Type>;	$r2 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type getType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar$Type: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r25 = new java.lang.StringBuilder;     case 2: goto $r16 = new java.lang.StringBuilder;     case 3: goto $r7 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $z0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: boolean getVBool()>();     case 6: goto return "NULL";     default: goto $r29 = new java.lang.IllegalArgumentException; };	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$d0 = virtualinvoke r0.<com.mysql.cj.x.protobuf.MysqlxDatatypes$Scalar: double getVDouble()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(double)>($d0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2