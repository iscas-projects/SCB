(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var239 0)
(declare-sort var1008 0)
(declare-sort var1205 0)
(declare-sort var2276 0)
(declare-sort var1771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1205_getByName/-358960852 (String) var1205)
(declare-fun arr-__Array__Int__Int__-init () (Array Int (Array Int Int)))
(declare-fun s2b/-450202684 (var239 String) (Array Int Int))
(declare-fun getJdbcType/389098195 (var1205) Int)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-fun getPrecision/-479410283 (var1205) Int)
(declare-fun longValue/1313863450 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun ordinal/-291641772 (var1771) Int)
(declare-fun cast-from-var1205-to-var1771 (var1205) var1771)
(declare-fun getCreateParams/2067265168 (var1205) String)
(declare-fun isAllowed/-888104558 (var1205 Int) Bool)
(declare-fun getName/1307715079 (var1205) String)
(declare-const null-var239 var239)
(declare-const null-String String)
(declare-const null-__Array__Int____Array__Int__Int____ (Array Int (Array Int Int)))
(declare-const var1205-YEAR var1205)
(declare-const var2276-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3651 var239) ; Statement: r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3651 null-var239)))
(declare-const var3979 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3979 null-String)))
(define-const var2762 var1205 (var1205_getByName/-358960852 var3979)) ; Statement: r1 = staticinvoke <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType getByName(java.lang.String)>(r0) 
(define-const var2479 (Array Int (Array Int Int)) arr-__Array__Int__Int__-init) ; Statement: r2 = newarray (byte[])[18] 
(assert true)
(define-const var3548 (Array Int Int) (s2b/-450202684 var3651 var3979)) ; Statement: $r4 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r0) 
(declare-const var2479!1 (Array Int (Array Int Int)))
(assert (not (= var2479!1 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!1 0) var3548)) ; Statement: r2[0] = $r4 
(define-const var1882 var1205 var1205-YEAR) ; Statement: $r5 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: if r1 != $r5 goto $i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(assert (not (= var2762 var1882))) ; Cond: r1 != $r5 
(assert true)
(define-const var2315 Int (getJdbcType/389098195 var2762)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>() 
(assert true) ; Non Conditional
(define-const var861 String (Int_toString/1350422511 var2315)) ; Statement: $r33 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i4) 
(assert true)
(define-const var1211 (Array Int Int) (getBytes/1068683673 var861)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.String: byte[] getBytes()>() 
(declare-const var2479!2 (Array Int (Array Int Int)))
(assert (not (= var2479!2 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!2 1) var1211)) ; Statement: r2[1] = $r34 
(assert true)
(define-const var3803 Int (getPrecision/-479410283 var2762)) ; Statement: $r35 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>() 
(assert true)
(define-const var1945 Int (longValue/1313863450 var3803)) ; Statement: $l5 = virtualinvoke $r35.<java.lang.Long: long longValue()>() 
(define-const var1057 Int (ite (> var1945 2147483647) 1 (ite (< var1945 2147483647) (- 1) 0))) ; Statement: $b6 = $l5 cmp 2147483647L 
(define-const var2020 Int (cast-from-Int-to-Int var1057)) ; Statement: $i10 = (int) $b6 
 ; Statement: if $i10 <= 0 goto $r6 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>() 
(assert (not (<= var2020 0))) ; Negate: Cond: $i10 <= 0  
(define-const var1554 Int 2147483647) ; Statement: $i7 = 2147483647 
 ; Statement: goto [?= $r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7)] 
(assert true) ; Non Conditional
(define-const var3351 String (Int_toString/1350422511 var1554)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7) 
(assert true)
(define-const var1978 (Array Int Int) (getBytes/1068683673 var3351)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>() 
(declare-const var2479!3 (Array Int (Array Int Int)))
(assert (not (= var2479!3 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!3 2) var1978)) ; Statement: r2[2] = $r8 
(define-const var1977 (Array Int Int) var2276-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r9 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(assert true)
(define-const var598 Int (ordinal/-291641772 (cast-from-var1205-to-var1771 var2762))) ; Statement: $i0 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var769 Int (select var1977 var598)) ; Statement: $i1 = $r9[$i0] 
 ; Statement: tableswitch($i1) {     case 5: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 6: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 7: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 8: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 9: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 10: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 11: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 12: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 13: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 14: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 15: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 16: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 17: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 18: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 19: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 20: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 21: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 22: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 23: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 24: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 25: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 26: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 27: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 28: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 29: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 30: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 31: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 32: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 33: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 34: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     default: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(""); } 
(assert (and (= var769 5) true)) ; Intersect: Cond: $i1 == 5  and Non Conditional 
(assert true)
(define-const var1647 (Array Int Int) (s2b/-450202684 var3651 "\u0027")) ; Statement: $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'") 
(declare-const var2479!4 (Array Int (Array Int Int)))
(assert (not (= var2479!4 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!4 3) var1647)) ; Statement: r2[3] = $r10 
(assert true)
(define-const var2852 (Array Int Int) (s2b/-450202684 var3651 "\u0027")) ; Statement: $r11 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'") 
(declare-const var2479!5 (Array Int (Array Int Int)))
(assert (not (= var2479!5 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!5 4) var2852)) ; Statement: r2[4] = $r11 
 ; Statement: goto [?= $r12 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getCreateParams()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1449 String (getCreateParams/2067265168 var2762)) ; Statement: $r12 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getCreateParams()>() 
(assert true)
(define-const var3478 (Array Int Int) (s2b/-450202684 var3651 var1449)) ; Statement: $r13 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12) 
(declare-const var2479!6 (Array Int (Array Int Int)))
(assert (not (= var2479!6 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!6 5) var3478)) ; Statement: r2[5] = $r13 
(define-const var3291 String (Int_toString/1350422511 1)) ; Statement: $r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(1) 
(assert true)
(define-const var97 (Array Int Int) (getBytes/1068683673 var3291)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.String: byte[] getBytes()>() 
(declare-const var2479!7 (Array Int (Array Int Int)))
(assert (not (= var2479!7 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!7 6) var97)) ; Statement: r2[6] = $r15 
(assert true)
(define-const var2356 (Array Int Int) (s2b/-450202684 var3651 "true")) ; Statement: $r16 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true") 
(declare-const var2479!8 (Array Int (Array Int Int)))
(assert (not (= var2479!8 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!8 7) var2356)) ; Statement: r2[7] = $r16 
(define-const var2282 String (Int_toString/1350422511 3)) ; Statement: $r17 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(3) 
(assert true)
(define-const var3211 (Array Int Int) (getBytes/1068683673 var2282)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.String: byte[] getBytes()>() 
(declare-const var2479!9 (Array Int (Array Int Int)))
(assert (not (= var2479!9 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!9 8) var3211)) ; Statement: r2[8] = $r18 
(assert true)
(define-const var3148 Bool (isAllowed/-888104558 var2762 32)) ; Statement: $z0 = virtualinvoke r1.<com.mysql.cj.MysqlType: boolean isAllowed(int)>(32) 
 ; Statement: if $z0 == 0 goto $r36 = "false" 
(assert (not (= (ite var3148 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var875 String "true") ; Statement: $r36 = "true" 
 ; Statement: goto [?= $r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2145 (Array Int Int) (s2b/-450202684 var3651 var875)) ; Statement: $r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36) 
(declare-const var2479!10 (Array Int (Array Int Int)))
(assert (not (= var2479!10 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!10 9) var2145)) ; Statement: r2[9] = $r19 
(assert true)
(define-const var920 (Array Int Int) (s2b/-450202684 var3651 "false")) ; Statement: $r20 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false") 
(declare-const var2479!11 (Array Int (Array Int Int)))
(assert (not (= var2479!11 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!11 10) var920)) ; Statement: r2[10] = $r20 
(define-const var2633 (Array Int Int) var2276-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r21 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(assert true)
(define-const var1084 Int (ordinal/-291641772 (cast-from-var1205-to-var1771 var2762))) ; Statement: $i2 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2030 Int (select var2633 var1084)) ; Statement: $i3 = $r21[$i2] 
 ; Statement: tableswitch($i3) {     case 3: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 4: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 5: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 6: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 7: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 8: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 9: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 10: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 11: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 12: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 13: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 14: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 15: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 16: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 17: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 18: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 19: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 20: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 21: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 22: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 23: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 24: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 25: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 26: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 27: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 28: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 29: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 30: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 31: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 32: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 33: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 34: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 35: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 36: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 37: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 38: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 39: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 40: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 41: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 42: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     default: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false"); } 
(assert (and (not (= var2030 4)) (and (not (= var2030 3)) true))) ; Intersect: Negate: Cond: $i3 == 4   and Intersect: Negate: Cond: $i3 == 3   and Non Conditional  
(assert true)
(define-const var955 (Array Int Int) (s2b/-450202684 var3651 "false")) ; Statement: $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false") 
(declare-const var2479!12 (Array Int (Array Int Int)))
(assert (not (= var2479!12 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!12 11) var955)) ; Statement: r2[11] = $r30 
(assert true) ; Non Conditional
(assert true)
(define-const var1830 String (getName/1307715079 var2762)) ; Statement: $r38 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getName()>() 
(assert true)
(define-const var3378 (Array Int Int) (s2b/-450202684 var3651 var1830)) ; Statement: $r39 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r38) 
(declare-const var2479!13 (Array Int (Array Int Int)))
(assert (not (= var2479!13 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!13 12) var3378)) ; Statement: r2[12] = $r39 
(define-const var2334 (Array Int Int) var2276-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r40 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(assert true)
(define-const var1247 Int (ordinal/-291641772 (cast-from-var1205-to-var1771 var2762))) ; Statement: $i8 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var652 Int (select var2334 var1247)) ; Statement: $i9 = $r40[$i8] 
 ; Statement: tableswitch($i9) {     case 1: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 2: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 3: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 4: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 5: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 6: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 7: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     case 8: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     default: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0"); } 
(assert (and (= var652 1) true)) ; Intersect: Cond: $i9 == 1  and Non Conditional 
(assert true)
(define-const var886 (Array Int Int) (s2b/-450202684 var3651 "-308")) ; Statement: $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308") 
(declare-const var2479!14 (Array Int (Array Int Int)))
(assert (not (= var2479!14 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!14 13) var886)) ; Statement: r2[13] = $r25 
(assert true)
(define-const var2298 (Array Int Int) (s2b/-450202684 var3651 "308")) ; Statement: $r26 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("308") 
(declare-const var2479!15 (Array Int (Array Int Int)))
(assert (not (= var2479!15 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!15 14) var2298)) ; Statement: r2[14] = $r26 
 ; Statement: goto [?= $r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2205 (Array Int Int) (s2b/-450202684 var3651 "0")) ; Statement: $r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0") 
(declare-const var2479!16 (Array Int (Array Int Int)))
(assert (not (= var2479!16 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!16 15) var2205)) ; Statement: r2[15] = $r41 
(assert true)
(define-const var2793 (Array Int Int) (s2b/-450202684 var3651 "0")) ; Statement: $r42 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0") 
(declare-const var2479!17 (Array Int (Array Int Int)))
(assert (not (= var2479!17 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!17 16) var2793)) ; Statement: r2[16] = $r42 
(assert true)
(define-const var3686 (Array Int Int) (s2b/-450202684 var3651 "10")) ; Statement: $r43 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("10") 
(declare-const var2479!18 (Array Int (Array Int Int)))
(assert (not (= var2479!18 null-__Array__Int____Array__Int__Int____)))
(assert (= (select var2479!18 17) var3686)) ; Statement: r2[17] = $r43 
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1205_getByName/-358960852=([java.lang.String], com.mysql.cj.MysqlType), arr-__Array__Int__Int__-init=([], byte[][]), s2b/-450202684=([com.mysql.cj.jdbc.DatabaseMetaData, java.lang.String], byte[]), getJdbcType/389098195=([com.mysql.cj.MysqlType], int), Int_toString/1350422511=([int], java.lang.String), getBytes/1068683673=([java.lang.String], byte[]), getPrecision/-479410283=([com.mysql.cj.MysqlType], java.lang.Long), longValue/1313863450=([java.lang.Long], long), cast-from-Int-to-Int=([byte], int), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1205-to-var1771=([com.mysql.cj.MysqlType], java.lang.Enum), getCreateParams/2067265168=([com.mysql.cj.MysqlType], java.lang.String), isAllowed/-888104558=([com.mysql.cj.MysqlType, int], boolean), getName/1307715079=([com.mysql.cj.MysqlType], java.lang.String)}
; {var239=com.mysql.cj.jdbc.DatabaseMetaData, var3651=r3, var3979=r0, var1008=null_type, var1205=com.mysql.cj.MysqlType, var2762=r1, var2479=r2, var3548=$r4, var1882=$r5, var2315=$i4, var861=$r33, var1211=$r34, var3803=$r35, var1945=$l5, var1057=$b6, var2020=$i10, var1554=$i7, var3351=$r7, var1978=$r8, var2276=com.mysql.cj.jdbc.DatabaseMetaData$11, var1977=$r9, var1771=java.lang.Enum, var598=$i0, var769=$i1, var1647=$r10, var2852=$r11, var1449=$r12, var3478=$r13, var3291=$r14, var97=$r15, var2356=$r16, var2282=$r17, var3211=$r18, var3148=$z0, var875=$r36, var2145=$r19, var920=$r20, var2633=$r21, var1084=$i2, var2030=$i3, var955=$r30, var1830=$r38, var3378=$r39, var2334=$r40, var1247=$i8, var652=$i9, var886=$r25, var2298=$r26, var2205=$r41, var2793=$r42, var3686=$r43}
; {com.mysql.cj.jdbc.DatabaseMetaData=var239, r3=var3651, r0=var3979, null_type=var1008, com.mysql.cj.MysqlType=var1205, r1=var2762, r2=var2479, $r4=var3548, $r5=var1882, $i4=var2315, $r33=var861, $r34=var1211, $r35=var3803, $l5=var1945, $b6=var1057, $i10=var2020, $i7=var1554, $r7=var3351, $r8=var1978, com.mysql.cj.jdbc.DatabaseMetaData$11=var2276, $r9=var1977, java.lang.Enum=var1771, $i0=var598, $i1=var769, $r10=var1647, $r11=var2852, $r12=var1449, $r13=var3478, $r14=var3291, $r15=var97, $r16=var2356, $r17=var2282, $r18=var3211, $z0=var3148, $r36=var875, $r19=var2145, $r20=var920, $r21=var2633, $i2=var1084, $i3=var2030, $r30=var955, $r38=var1830, $r39=var3378, $r40=var2334, $i8=var1247, $i9=var652, $r25=var886, $r26=var2298, $r41=var2205, $r42=var2793, $r43=var3686}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>;	<java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: byte[] getBytes()>": 4}
;stmts r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r0 := @parameter0: java.lang.String;	r1 = staticinvoke <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType getByName(java.lang.String)>(r0);	r2 = newarray (byte[])[18];	$r4 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(r0);	r2[0] = $r4;	$r5 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	if r1 != $r5 goto $i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>();	$i4 = virtualinvoke r1.<com.mysql.cj.MysqlType: int getJdbcType()>();	$r33 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i4);	$r34 = virtualinvoke $r33.<java.lang.String: byte[] getBytes()>();	r2[1] = $r34;	$r35 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>();	$l5 = virtualinvoke $r35.<java.lang.Long: long longValue()>();	$b6 = $l5 cmp 2147483647L;	$i10 = (int) $b6;	if $i10 <= 0 goto $r6 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.Long getPrecision()>();	$i7 = 2147483647;	goto [?= $r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7)];	$r7 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>($i7);	$r8 = virtualinvoke $r7.<java.lang.String: byte[] getBytes()>();	r2[2] = $r8;	$r9 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$i0 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r9[$i0];	tableswitch($i1) {     case 5: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 6: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 7: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 8: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 9: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 10: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 11: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 12: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 13: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 14: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 15: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 16: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 17: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 18: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 19: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 20: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 21: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 22: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 23: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 24: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 25: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 26: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 27: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 28: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 29: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 30: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 31: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 32: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     case 33: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("");     case 34: goto $r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");     default: goto $r31 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>(""); };	$r10 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");	r2[3] = $r10;	$r11 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("\'");	r2[4] = $r11;	goto [?= $r12 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getCreateParams()>()];	$r12 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getCreateParams()>();	$r13 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r12);	r2[5] = $r13;	$r14 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(1);	$r15 = virtualinvoke $r14.<java.lang.String: byte[] getBytes()>();	r2[6] = $r15;	$r16 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");	r2[7] = $r16;	$r17 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(3);	$r18 = virtualinvoke $r17.<java.lang.String: byte[] getBytes()>();	r2[8] = $r18;	$z0 = virtualinvoke r1.<com.mysql.cj.MysqlType: boolean isAllowed(int)>(32);	if $z0 == 0 goto $r36 = "false";	$r36 = "true";	goto [?= $r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36)];	$r19 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r36);	r2[9] = $r19;	$r20 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");	r2[10] = $r20;	$r21 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$i2 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>();	$i3 = $r21[$i2];	tableswitch($i3) {     case 3: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 4: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 5: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 6: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 7: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 8: goto $r29 = r3.<com.mysql.cj.jdbc.DatabaseMetaData: com.mysql.cj.NativeSession session>;     case 9: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 10: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 11: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 12: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 13: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 14: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 15: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 16: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 17: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 18: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 19: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 20: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 21: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 22: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 23: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 24: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 25: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 26: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 27: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 28: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 29: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 30: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 31: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 32: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 33: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 34: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");     case 35: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 36: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 37: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 38: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 39: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 40: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 41: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     case 42: goto $r22 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("true");     default: goto $r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false"); };	$r30 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("false");	r2[11] = $r30;	$r38 = virtualinvoke r1.<com.mysql.cj.MysqlType: java.lang.String getName()>();	$r39 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>($r38);	r2[12] = $r39;	$r40 = <com.mysql.cj.jdbc.DatabaseMetaData$11: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$i8 = virtualinvoke r1.<com.mysql.cj.MysqlType: int ordinal()>();	$i9 = $r40[$i8];	tableswitch($i9) {     case 1: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 2: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 3: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 4: goto $r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");     case 5: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 6: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");     case 7: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     case 8: goto $r23 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-38");     default: goto $r27 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0"); };	$r25 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("-308");	r2[13] = $r25;	$r26 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("308");	r2[14] = $r26;	goto [?= $r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0")];	$r41 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");	r2[15] = $r41;	$r42 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("0");	r2[16] = $r42;	$r43 = virtualinvoke r3.<com.mysql.cj.jdbc.DatabaseMetaData: byte[] s2b(java.lang.String)>("10");	r2[17] = $r43;	return r2
;block_num 13