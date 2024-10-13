(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1352 0)
(declare-sort var3934 0)
(declare-sort var754 0)
(declare-sort var3759 0)
(declare-sort var1397 0)
(declare-sort var2202 0)
(declare-sort var1295 0)
(declare-sort var985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3934_getMysqlType/-215853011 (var3934) var3759)
(declare-fun ordinal/-291641772 (var1397) Int)
(declare-fun cast-from-var3759-to-var1397 (var3759) var1397)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var3934_getValue/1809189437 (var3934) var2202)
(declare-fun cast-from-var2202-to-var1295 (var2202) var1295)
(declare-fun var985_getDurationString/-1224163401 (var1295) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1352 var1352)
(declare-const null-var3934 var3934)
(declare-const var754-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1549 var1352) ; Statement: r9 := @this: com.mysql.cj.protocol.a.DurationValueEncoder 
(assert (not (= var1549 null-var1352)))
(declare-const var3945 var3934) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3945 null-var3934)))
(define-const var3026 (Array Int Int) var754-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.DurationValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var364 var3759 (var3934_getMysqlType/-215853011 var3945)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2327 Int (ordinal/-291641772 (cast-from-var3759-to-var1397 var364))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var582 Int (select var3026 var2327)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r8 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r17 = newarray (java.lang.Object)[2]; } 
(assert (and (= var582 3) (and (not (= var582 2)) (and (not (= var582 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var2323 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2323 "\u0027")) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var2323!1 String)
(assert (= var2323!1 "\u0027"))
(define-const var2443 var2202 (var3934_getValue/1809189437 var3945)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var495 var1295 (cast-from-var2202-to-var1295 var2443)) ; Statement: $r5 = (java.time.Duration) $r4 
(define-const var3154 String (var985_getDurationString/-1224163401 var495)) ; Statement: $r6 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getDurationString(java.time.Duration)>($r5) 
(assert true)
;(assert (append/672562846 var2323!1 var3154)) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2323!2 String)
(assert (= var2323!2 (str.++ var2323!1 var3154)))
(assert true)
;(assert (append/672562846 var2323!2 "\u0027")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2323!3 String)
(assert (= var2323!3 (str.++ var2323!2 "\u0027")))
(assert true)
(define-const var964 String (toString/-2075883882 var2323!3)) ; Statement: $r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3934_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3759-to-var1397=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var3934_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2202-to-var1295=([java.lang.Object], java.time.Duration), var985_getDurationString/-1224163401=([java.time.Duration], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1352=com.mysql.cj.protocol.a.DurationValueEncoder, var1549=r9, var3934=com.mysql.cj.BindValue, var3945=r0, var754=com.mysql.cj.protocol.a.DurationValueEncoder$1, var3026=$r1, var3759=com.mysql.cj.MysqlType, var364=$r2, var1397=java.lang.Enum, var2327=$i0, var582=$i1, var2323=$r3, var2202=java.lang.Object, var2443=$r4, var1295=java.time.Duration, var495=$r5, var985=com.mysql.cj.util.TimeUtil, var3154=$r6, var964=$r7}
; {com.mysql.cj.protocol.a.DurationValueEncoder=var1352, r9=var1549, com.mysql.cj.BindValue=var3934, r0=var3945, com.mysql.cj.protocol.a.DurationValueEncoder$1=var754, $r1=var3026, com.mysql.cj.MysqlType=var3759, $r2=var364, java.lang.Enum=var1397, $i0=var2327, $i1=var582, $r3=var2323, java.lang.Object=var2202, $r4=var2443, java.time.Duration=var1295, $r5=var495, com.mysql.cj.util.TimeUtil=var985, $r6=var3154, $r7=var964}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: com.mysql.cj.protocol.a.DurationValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.DurationValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r8 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r17 = newarray (java.lang.Object)[2]; };	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r5 = (java.time.Duration) $r4;	$r6 = staticinvoke <com.mysql.cj.util.TimeUtil: java.lang.String getDurationString(java.time.Duration)>($r5);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r7 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2