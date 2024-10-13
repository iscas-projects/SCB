(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var87 0)
(declare-sort var3814 0)
(declare-sort var3143 0)
(declare-sort var1535 0)
(declare-sort var386 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3143_getByName/-358960852 (String) var3143)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun s2b/-450202684 (var87 String) (Array Int Int))
(declare-fun getJdbcType/389098195 (var3143) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getPrecision/-479410283 (var3143) Int)
(declare-fun longValue/1313863450 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var386) Int)
(declare-fun cast-from-var3143-to-var386 (var3143) var386)
(declare-fun getCreateParams/2067265168 (var3143) String)
(declare-fun isAllowed/-888104558 (var3143 Int) Bool)
(declare-fun getName/1307715079 (var3143) String)
(declare-const null-var87 var87)
(declare-const null-String String)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var3143-YEAR var3143)
(declare-const var1535-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1491 var87) ; Statement: r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var1491 null-var87)))
(declare-const var1053 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1053 null-String)))
(define-const var3942 var3143 (var3143_getByName/-358960852 var1053)) ; Statement: r1 = staticinvoke <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType getByName(java.lang.String)>(r0) 
(define-const var3821 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: r2 = newarray (byte[])[18] 
(assert true)
(define-const var239 (Array Int Int) (s2b/-450202684 var1491 var1053)) ; Statement: $r4 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r0) 
(declare-const var3821!1 (Array Int (Array Int Int)))
(assert (not (= var3821!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!1 0) var239)) ; Statement: r2[0] = $r4 
(define-const var2703 var3143 var3143-YEAR) ; Statement: $r5 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if r1 != $r5 goto $i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(assert (not (= var3942 var2703))) ; Cond: r1 != $r5 
(assert true)
(define-const var897 Int (getJdbcType/389098195 var3942)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(assert true) ; Non Conditional
(define-const var1829 String (Int_toString/1350422511 var897)) ; Statement: $r33 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i4) 
(assert true)
(define-const var2906 (Array Int Int) (getBytes/1068683673 var1829)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.String: byte[] getBytes()>() 
(declare-const var3821!2 (Array Int (Array Int Int)))
(assert (not (= var3821!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!2 1) var2906)) ; Statement: r2[1] = $r34 
(assert true)
(define-const var3770 Int (getPrecision/-479410283 var3942)) ; Statement: $r35 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>() 
(assert true)
(define-const var2940 Int (longValue/1313863450 var3770)) ; Statement: $l5 = virtualinvoke $r35.<java.lang.Long: long longValue()>() 
(define-const var2576 Int (ite (> var2940 2147483647) 1 (ite (< var2940 2147483647) (- 1) 0))) ; Statement: $b6 = $l5 cmp 2147483647L 
(define-const var994 Int (cast-from-Int-to-Int var2576)) ; Statement: $i10 = (int) $b6 
 ; Statement: if $i10 <= 0 goto $r6 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>() 
(assert (not (<= var994 0))) ; Negate: Cond: $i10 <= 0  
(define-const var3445 Int 2147483647) ; Statement: $i7 = 2147483647 
 ; Statement: goto [?= $r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7)] 
(assert true) ; Non Conditional
(define-const var2683 String (Int_toString/1350422511 var3445)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7) 
(assert true)
(define-const var1699 (Array Int Int) (getBytes/1068683673 var2683)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>() 
(declare-const var3821!3 (Array Int (Array Int Int)))
(assert (not (= var3821!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!3 2) var1699)) ; Statement: r2[2] = $r8 
(define-const var318 (Array Int Int) var1535-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r9 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(assert true)
(define-const var3857 Int (ordinal/-291641772 (cast-from-var3143-to-var386 var3942))) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1064 Int (select var318 var3857)) ; Statement: $i1 = $r9[$i0] 
 ; Statement: tableswitch($i1) {     case 5: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 6: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 7: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 8: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 9: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 10: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 11: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 12: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 13: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 14: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 15: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 16: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 17: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 18: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 19: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 20: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 21: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 22: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 23: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 24: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 25: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 26: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 27: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 28: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 29: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 30: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 31: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 32: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 33: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 34: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     default: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(""); } 
(assert (and (not (= var1064 6)) (and (not (= var1064 5)) true))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Non Conditional  
(assert true)
(define-const var3416 (Array Int Int) (s2b/-450202684 var1491 "")) ; Statement: $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("") 
(declare-const var3821!4 (Array Int (Array Int Int)))
(assert (not (= var3821!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!4 3) var3416)) ; Statement: r2[3] = $r31 
(assert true)
(define-const var2992 (Array Int Int) (s2b/-450202684 var1491 "")) ; Statement: $r32 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("") 
(declare-const var3821!5 (Array Int (Array Int Int)))
(assert (not (= var3821!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!5 4) var2992)) ; Statement: r2[4] = $r32 
(assert true) ; Non Conditional
(assert true)
(define-const var425 String (getCreateParams/2067265168 var3942)) ; Statement: $r12 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getCreateParams()>() 
(assert true)
(define-const var1366 (Array Int Int) (s2b/-450202684 var1491 var425)) ; Statement: $r13 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var3821!6 (Array Int (Array Int Int)))
(assert (not (= var3821!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!6 5) var1366)) ; Statement: r2[5] = $r13 
(define-const var2924 String (Int_toString/1350422511 1)) ; Statement: $r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(1) 
(assert true)
(define-const var2201 (Array Int Int) (getBytes/1068683673 var2924)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: byte[] getBytes()>() 
(declare-const var3821!7 (Array Int (Array Int Int)))
(assert (not (= var3821!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!7 6) var2201)) ; Statement: r2[6] = $r15 
(assert true)
(define-const var2763 (Array Int Int) (s2b/-450202684 var1491 "true")) ; Statement: $r16 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true") 
(declare-const var3821!8 (Array Int (Array Int Int)))
(assert (not (= var3821!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!8 7) var2763)) ; Statement: r2[7] = $r16 
(define-const var3227 String (Int_toString/1350422511 3)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(3) 
(assert true)
(define-const var2523 (Array Int Int) (getBytes/1068683673 var3227)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.String: byte[] getBytes()>() 
(declare-const var3821!9 (Array Int (Array Int Int)))
(assert (not (= var3821!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!9 8) var2523)) ; Statement: r2[8] = $r18 
(assert true)
(define-const var1537 Bool (isAllowed/-888104558 var3942 32)) ; Statement: $z0 = virtualinvoke r1.<com.mysql.cj.MysqlType: boolean isAllowed(int)>(32) 
 ; Statement: if $z0 == 0 goto $r36 = "false" 
(assert (not (= (ite var1537 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1026 String "true") ; Statement: $r36 = "true" 
 ; Statement: goto [?= $r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36)] 
(assert true) ; Non Conditional
(assert true)
(define-const var451 (Array Int Int) (s2b/-450202684 var1491 var1026)) ; Statement: $r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36) 
(declare-const var3821!10 (Array Int (Array Int Int)))
(assert (not (= var3821!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!10 9) var451)) ; Statement: r2[9] = $r19 
(assert true)
(define-const var2981 (Array Int Int) (s2b/-450202684 var1491 "false")) ; Statement: $r20 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false") 
(declare-const var3821!11 (Array Int (Array Int Int)))
(assert (not (= var3821!11 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!11 10) var2981)) ; Statement: r2[10] = $r20 
(define-const var3781 (Array Int Int) var1535-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r21 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(assert true)
(define-const var3868 Int (ordinal/-291641772 (cast-from-var3143-to-var386 var3942))) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3932 Int (select var3781 var3868)) ; Statement: $i3 = $r21[$i2] 
 ; Statement: tableswitch($i3) {     case 3: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 4: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 5: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 6: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 7: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 8: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 9: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 10: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 11: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 12: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 13: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 14: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 15: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 16: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 17: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 18: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 19: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 20: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 21: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 22: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 23: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 24: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 25: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 26: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 27: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 28: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 29: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 30: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 31: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 32: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 33: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 34: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 35: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 36: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 37: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 38: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 39: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 40: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 41: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 42: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     default: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false"); } 
(assert (and (not (= var3932 4)) (and (not (= var3932 3)) true))) ; Intersect: Negate: Cond: $i3 == 4   and Intersect: Negate: Cond: $i3 == 3   and Non Conditional  
(assert true)
(define-const var558 (Array Int Int) (s2b/-450202684 var1491 "false")) ; Statement: $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false") 
(declare-const var3821!12 (Array Int (Array Int Int)))
(assert (not (= var3821!12 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!12 11) var558)) ; Statement: r2[11] = $r30 
(assert true) ; Non Conditional
(assert true)
(define-const var736 String (getName/1307715079 var3942)) ; Statement: $r38 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var1809 (Array Int Int) (s2b/-450202684 var1491 var736)) ; Statement: $r39 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r38) 
(declare-const var3821!13 (Array Int (Array Int Int)))
(assert (not (= var3821!13 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!13 12) var1809)) ; Statement: r2[12] = $r39 
(define-const var189 (Array Int Int) var1535-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r40 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(assert true)
(define-const var1792 Int (ordinal/-291641772 (cast-from-var3143-to-var386 var3942))) ; Statement: $i8 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2951 Int (select var189 var1792)) ; Statement: $i9 = $r40[$i8] 
 ; Statement: tableswitch($i9) {     case 1: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 2: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 3: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 4: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 5: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 6: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 7: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     case 8: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     default: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0"); } 
(assert (and (= var2951 1) true)) ; Intersect: Cond: $i9 == 1  and Non Conditional 
(assert true)
(define-const var2692 (Array Int Int) (s2b/-450202684 var1491 "-308")) ; Statement: $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308") 
(declare-const var3821!14 (Array Int (Array Int Int)))
(assert (not (= var3821!14 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!14 13) var2692)) ; Statement: r2[13] = $r25 
(assert true)
(define-const var2510 (Array Int Int) (s2b/-450202684 var1491 "308")) ; Statement: $r26 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("308") 
(declare-const var3821!15 (Array Int (Array Int Int)))
(assert (not (= var3821!15 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!15 14) var2510)) ; Statement: r2[14] = $r26 
 ; Statement: goto [?= $r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2429 (Array Int Int) (s2b/-450202684 var1491 "0")) ; Statement: $r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0") 
(declare-const var3821!16 (Array Int (Array Int Int)))
(assert (not (= var3821!16 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!16 15) var2429)) ; Statement: r2[15] = $r41 
(assert true)
(define-const var3883 (Array Int Int) (s2b/-450202684 var1491 "0")) ; Statement: $r42 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0") 
(declare-const var3821!17 (Array Int (Array Int Int)))
(assert (not (= var3821!17 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!17 16) var3883)) ; Statement: r2[16] = $r42 
(assert true)
(define-const var3335 (Array Int Int) (s2b/-450202684 var1491 "10")) ; Statement: $r43 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("10") 
(declare-const var3821!18 (Array Int (Array Int Int)))
(assert (not (= var3821!18 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var3821!18 17) var3335)) ; Statement: r2[17] = $r43 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3143_getByName/-358960852=([java.lang.String], com.mysql.cj.MysqlType), arr-__Array__Int__Int__-init=([], byte[][]), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), Int_toString/1350422511=([int], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getPrecision/-479410283=([com.mysql.cj.MysqlType], java.lang.Long), longValue/1313863450=([java.lang.Long], long), cast-from-Int-to-Int=([byte], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3143-to-var386=([com.mysql.cj.MysqlType], java.lang.Enum), getCreateParams/2067265168=([com.mysql.cj.MysqlType], java.lang.String), isAllowed/-888104558=([com.mysql.cj.MysqlType, int], boolean), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String)}
; {var87=com.mysql.cj.jdbc.DatabaseMetaData, var1491=r3, var1053=r0, var3814=null_type, var3143=com.mysql.cj.MysqlType, var3942=r1, var3821=r2, var239=$r4, var2703=$r5, var897=$i4, var1829=$r33, var2906=$r34, var3770=$r35, var2940=$l5, var2576=$b6, var994=$i10, var3445=$i7, var2683=$r7, var1699=$r8, var1535=com.mysql.cj.jdbc.DatabaseMetaData$11, var318=$r9, var386=java.lang.Enum, var3857=$i0, var1064=$i1, var3416=$r31, var2992=$r32, var425=$r12, var1366=$r13, var2924=$r14, var2201=$r15, var2763=$r16, var3227=$r17, var2523=$r18, var1537=$z0, var1026=$r36, var451=$r19, var2981=$r20, var3781=$r21, var3868=$i2, var3932=$i3, var558=$r30, var736=$r38, var1809=$r39, var189=$r40, var1792=$i8, var2951=$i9, var2692=$r25, var2510=$r26, var2429=$r41, var3883=$r42, var3335=$r43}
; {com.mysql.cj.jdbc.DatabaseMetaData=var87, r3=var1491, r0=var1053, null_type=var3814, com.mysql.cj.MysqlType=var3143, r1=var3942, r2=var3821, $r4=var239, $r5=var2703, $i4=var897, $r33=var1829, $r34=var2906, $r35=var3770, $l5=var2940, $b6=var2576, $i10=var994, $i7=var3445, $r7=var2683, $r8=var1699, com.mysql.cj.jdbc.DatabaseMetaData$11=var1535, $r9=var318, java.lang.Enum=var386, $i0=var3857, $i1=var1064, $r31=var3416, $r32=var2992, $r12=var425, $r13=var1366, $r14=var2924, $r15=var2201, $r16=var2763, $r17=var3227, $r18=var2523, $z0=var1537, $r36=var1026, $r19=var451, $r20=var2981, $r21=var3781, $i2=var3868, $i3=var3932, $r30=var558, $r38=var736, $r39=var1809, $r40=var189, $i8=var1792, $i9=var2951, $r25=var2692, $r26=var2510, $r41=var2429, $r42=var3883, $r43=var3335}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 4}
;stmts r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType getByName(java.lang.String)>(r0);	r2 = newarray (byte[])[18];	$r4 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r0);	r2[0] = $r4;	$r5 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if r1 != $r5 goto $i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>();	$i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>();	$r33 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i4);	$r34 = virtualinvoke $r33.<java.lang.String: byte[] getBytes()>();	r2[1] = $r34;	$r35 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>();	$l5 = virtualinvoke $r35.<java.lang.Long: long longValue()>();	$b6 = $l5 cmp 2147483647L;	$i10 = (int) $b6;	if $i10 <= 0 goto $r6 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>();	$i7 = 2147483647;	goto [?= $r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7)];	$r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7);	$r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>();	r2[2] = $r8;	$r9 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$i0 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r9[$i0];	tableswitch($i1) {     case 5: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 6: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 7: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 8: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 9: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 10: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 11: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 12: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 13: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 14: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 15: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 16: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 17: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 18: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 19: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 20: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 21: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 22: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 23: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 24: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 25: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 26: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 27: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 28: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 29: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 30: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 31: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 32: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 33: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 34: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     default: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(""); };	$r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");	r2[3] = $r31;	$r32 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");	r2[4] = $r32;	$r12 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getCreateParams()>();	$r13 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r2[5] = $r13;	$r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(1);	$r15 = virtualinvoke $r14.<java.lang.String: byte[] getBytes()>();	r2[6] = $r15;	$r16 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");	r2[7] = $r16;	$r17 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(3);	$r18 = virtualinvoke $r17.<java.lang.String: byte[] getBytes()>();	r2[8] = $r18;	$z0 = virtualinvoke r1.<com.mysql.cj.MysqlType: boolean isAllowed(int)>(32);	if $z0 == 0 goto $r36 = "false";	$r36 = "true";	goto [?= $r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36)];	$r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36);	r2[9] = $r19;	$r20 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");	r2[10] = $r20;	$r21 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$i2 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>();	$i3 = $r21[$i2];	tableswitch($i3) {     case 3: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 4: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 5: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 6: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 7: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 8: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 9: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 10: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 11: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 12: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 13: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 14: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 15: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 16: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 17: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 18: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 19: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 20: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 21: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 22: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 23: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 24: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 25: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 26: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 27: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 28: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 29: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 30: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 31: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 32: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 33: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 34: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 35: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 36: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 37: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 38: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 39: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 40: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 41: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 42: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     default: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false"); };	$r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");	r2[11] = $r30;	$r38 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r39 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r38);	r2[12] = $r39;	$r40 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$i8 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>();	$i9 = $r40[$i8];	tableswitch($i9) {     case 1: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 2: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 3: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 4: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 5: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 6: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 7: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     case 8: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     default: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0"); };	$r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");	r2[13] = $r25;	$r26 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("308");	r2[14] = $r26;	goto [?= $r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0")];	$r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");	r2[15] = $r41;	$r42 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");	r2[16] = $r42;	$r43 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("10");	r2[17] = $r43;	return r2
;block_num 13