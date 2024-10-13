(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1806 0)
(declare-sort var2973 0)
(declare-sort var961 0)
(declare-sort var424 0)
(declare-sort var1705 0)
(declare-sort var1846 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2973_getMysqlType/-215853011 (var2973) var424)
(declare-fun ordinal/-291641772 (var1705) Int)
(declare-fun cast-from-var424-to-var1705 (var424) var1705)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2973_getValue/1809189437 (var2973) var1846)
(declare-fun toString/-522406933 (var1846) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1806 var1806)
(declare-const null-var2973 var2973)
(declare-const var961-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1901 var1806) ; Statement: r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder 
(assert (not (= var1901 null-var1806)))
(declare-const var2512 var2973) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2512 null-var2973)))
(define-const var3476 (Array Int Int) var961-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3634 var424 (var2973_getMysqlType/-215853011 var2512)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2602 Int (ordinal/-291641772 (cast-from-var424-to-var1705 var3634))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2736 Int (select var3476 var2602)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2736 6) (and (not (= var2736 5)) (and (not (= var2736 4)) (and (not (= var2736 3)) (and (not (= var2736 2)) (and (not (= var2736 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var695 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var695 "\u0027")) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var695!1 String)
(assert (= var695!1 "\u0027"))
(define-const var1688 var1846 (var2973_getValue/1809189437 var2512)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert true)
(define-const var2473 String (toString/-522406933 var1688)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var695!1 var2473)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var695!2 String)
(assert (= var695!2 (str.++ var695!1 var2473)))
(assert true)
;(assert (append/672562846 var695!2 "\u0027")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var695!3 String)
(assert (= var695!3 (str.++ var695!2 "\u0027")))
(assert true)
(define-const var720 String (toString/-2075883882 var695!3)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2973_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var424-to-var1705=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2973_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1806=com.mysql.cj.protocol.a.LocalDateValueEncoder, var1901=r30, var2973=com.mysql.cj.BindValue, var2512=r0, var961=com.mysql.cj.protocol.a.LocalDateValueEncoder$1, var3476=$r1, var424=com.mysql.cj.MysqlType, var3634=$r2, var1705=java.lang.Enum, var2602=$i0, var2736=$i1, var695=$r3, var1846=java.lang.Object, var1688=$r4, var2473=$r5, var720=$r6}
; {com.mysql.cj.protocol.a.LocalDateValueEncoder=var1806, r30=var1901, com.mysql.cj.BindValue=var2973, r0=var2512, com.mysql.cj.protocol.a.LocalDateValueEncoder$1=var961, $r1=var3476, com.mysql.cj.MysqlType=var424, $r2=var3634, java.lang.Enum=var1705, $i0=var2602, $i1=var2736, $r3=var695, java.lang.Object=var1846, $r4=var1688, $r5=var2473, $r6=var720}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; };	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2