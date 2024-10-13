(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var199 0)
(declare-sort var3727 0)
(declare-sort var3696 0)
(declare-sort var1945 0)
(declare-sort var3645 0)
(declare-sort var1233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLockMode/2004258094 (var3727) var1945)
(declare-fun ordinal/-291641772 (var1233) Int)
(declare-fun cast-from-var1945-to-var1233 (var1945) var1233)
(declare-const null-var199 var199)
(declare-const null-var3727 var3727)
(declare-const null-String String)
(declare-const var3645-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var539 var199) ; Statement: r16 := @this: org.hibernate.dialect.SQLServerDialect 
(assert (not (= var539 null-var199)))
(declare-const var1855 var3727) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var1855 null-var3727)))
(declare-const var3013 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3013 null-String)))
(assert true)
(define-const var3030 var1945 (getLockMode/2004258094 var1855)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var303 (Array Int Int) var3645-$SwitchMap$org$hibernate$LockMode) ; Statement: $r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var3960 Int (ordinal/-291641772 (cast-from-var1945-to-var1233 var3030))) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>() 
(define-const var2604 Int (select var303 var3960)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; } 
(assert (and (not (= var2604 6)) (and (not (= var2604 5)) (and (not (= var2604 4)) (and (not (= var2604 3)) (and (not (= var2604 2)) (and (not (= var2604 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1945-to-var1233=([org.hibernate.LockMode], java.lang.Enum)}
; {var199=org.hibernate.dialect.SQLServerDialect, var539=r16, var3727=org.hibernate.LockOptions, var1855=r0, var3013=r4, var3696=null_type, var1945=org.hibernate.LockMode, var3030=r1, var3645=org.hibernate.dialect.SQLServerDialect$1, var303=$r2, var1233=java.lang.Enum, var3960=$i0, var2604=$i1}
; {org.hibernate.dialect.SQLServerDialect=var199, r16=var539, org.hibernate.LockOptions=var3727, r0=var1855, r4=var3013, null_type=var3696, org.hibernate.LockMode=var1945, r1=var3030, org.hibernate.dialect.SQLServerDialect$1=var3645, $r2=var303, java.lang.Enum=var1233, $i0=var3960, $i1=var2604}
;seq 
;cnt {}
;stmts r16 := @this: org.hibernate.dialect.SQLServerDialect;	r0 := @parameter0: org.hibernate.LockOptions;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode>;	$i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; };	return r4
;block_num 2