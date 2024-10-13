(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var101 0)
(declare-sort var2693 0)
(declare-sort var61 0)
(declare-sort var102 0)
(declare-sort var2022 0)
(declare-sort var617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLockMode/2004258094 (var2693) var102)
(declare-fun ordinal/-291641772 (var617) Int)
(declare-fun cast-from-var102-to-var617 (var102) var617)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var101 var101)
(declare-const null-var2693 var2693)
(declare-const null-String String)
(declare-const var2022-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var1264 var101) ; Statement: r16 := @this: org.hibernate.dialect.SQLServerDialect 
(assert (not (= var1264 null-var101)))
(declare-const var1155 var2693) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1155 null-var2693)))
(declare-const var421 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var421 null-String)))
(assert true)
(define-const var1240 var102 (getLockMode/2004258094 var1155)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var260 (Array Int Int) var2022-$SwitchMap$org$hibernate$LockMode) ; Statement: $r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var601 Int (ordinal/-291641772 (cast-from-var102-to-var617 var1240))) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1071 Int (select var260 var601)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; } 
(assert (and (= var1071 6) (and (not (= var1071 5)) (and (not (= var1071 4)) (and (not (= var1071 3)) (and (not (= var1071 2)) (and (not (= var1071 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var628 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var628)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var628!1 String)
(assert (= var628!1 ""))
(assert true)
(define-const var2422 String (append/672562846 var628!1 var421)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var628!2 String)
(assert (= var628!2 (str.++ var628!1 var421)))
(assert true)
(define-const var3437 String (append/672562846 var2422 " with (updlock, rowlock, readpast)")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast)") 
(declare-const var2422!1 String)
(assert (= var2422!1 (str.++ var2422 " with (updlock, rowlock, readpast)")))
(assert true)
(define-const var1962 String (toString/-2075883882 var3437)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), ordinal/-291641772=([java.lang.Enum], int), cast-from-var102-to-var617=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var101=org.hibernate.dialect.SQLServerDialect, var1264=r16, var2693=org.hibernate.LockOptions, var1155=r0, var421=r4, var61=null_type, var102=org.hibernate.LockMode, var1240=r1, var2022=org.hibernate.dialect.SQLServerDialect$1, var260=$r2, var617=java.lang.Enum, var601=$i0, var1071=$i1, var628=$r3, var2422=$r5, var3437=$r6, var1962=$r7}
; {org.hibernate.dialect.SQLServerDialect=var101, r16=var1264, org.hibernate.LockOptions=var2693, r0=var1155, r4=var421, null_type=var61, org.hibernate.LockMode=var102, r1=var1240, org.hibernate.dialect.SQLServerDialect$1=var2022, $r2=var260, java.lang.Enum=var617, $i0=var601, $i1=var1071, $r3=var628, $r5=var2422, $r6=var3437, $r7=var1962}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.SQLServerDialect;	r0 := @parameter0: org.hibernate.LockOptions;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode>;	$i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; };	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (updlock, rowlock, readpast)");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2