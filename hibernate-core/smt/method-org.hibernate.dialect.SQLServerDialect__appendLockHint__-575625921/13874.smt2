(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1530 0)
(declare-sort var1435 0)
(declare-sort var2808 0)
(declare-sort var3276 0)
(declare-sort var1248 0)
(declare-sort var3777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLockMode/2004258094 (var1435) var3276)
(declare-fun ordinal/-291641772 (var3777) Int)
(declare-fun cast-from-var3276-to-var3777 (var3276) var3777)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1530 var1530)
(declare-const null-var1435 var1435)
(declare-const null-String String)
(declare-const var1248-$SwitchMap$org$hibernate$LockMode (Array Int Int))
(declare-const var3183 var1530) ; Statement: r16 := @this: org.hibernate.dialect.SQLServerDialect 
(assert (not (= var3183 null-var1530)))
(declare-const var3061 var1435) ; Statement: r0 := @parameter0: org.hibernate.LockOptions 
(assert (not (= var3061 null-var1435)))
(declare-const var624 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var624 null-String)))
(assert true)
(define-const var3734 var3276 (getLockMode/2004258094 var3061)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>() 
(define-const var2747 (Array Int Int) var1248-$SwitchMap$org$hibernate$LockMode) ; Statement: $r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode> 
(assert true)
(define-const var2047 Int (ordinal/-291641772 (cast-from-var3276-to-var3777 var3734))) ; Statement: $i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>() 
(define-const var1020 Int (select var2747 var2047)) ; Statement: $i1 = $r2[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; } 
(assert (and (= var1020 5) (and (not (= var1020 4)) (and (not (= var1020 3)) (and (not (= var1020 2)) (and (not (= var1020 1)) true)))))) ; Intersect: Cond: $i1 == 5  and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional     
(define-const var3620 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3620)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3620!1 String)
(assert (= var3620!1 ""))
(assert true)
(define-const var362 String (append/672562846 var3620!1 var624)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3620!2 String)
(assert (= var3620!2 (str.++ var3620!1 var624)))
(assert true)
(define-const var3279 String (append/672562846 var362 " with (holdlock, rowlock)")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (holdlock, rowlock)") 
(declare-const var362!1 String)
(assert (= var362!1 (str.++ var362 " with (holdlock, rowlock)")))
(assert true)
(define-const var1848 String (toString/-2075883882 var3279)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getLockMode/2004258094=([org.hibernate.LockOptions], org.hibernate.LockMode), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3276-to-var3777=([org.hibernate.LockMode], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1530=org.hibernate.dialect.SQLServerDialect, var3183=r16, var1435=org.hibernate.LockOptions, var3061=r0, var624=r4, var2808=null_type, var3276=org.hibernate.LockMode, var3734=r1, var1248=org.hibernate.dialect.SQLServerDialect$1, var2747=$r2, var3777=java.lang.Enum, var2047=$i0, var1020=$i1, var3620=$r8, var362=$r9, var3279=$r10, var1848=$r11}
; {org.hibernate.dialect.SQLServerDialect=var1530, r16=var3183, org.hibernate.LockOptions=var1435, r0=var3061, r4=var624, null_type=var2808, org.hibernate.LockMode=var3276, r1=var3734, org.hibernate.dialect.SQLServerDialect$1=var1248, $r2=var2747, java.lang.Enum=var3777, $i0=var2047, $i1=var1020, $r8=var3620, $r9=var362, $r10=var3279, $r11=var1848}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r16 := @this: org.hibernate.dialect.SQLServerDialect;	r0 := @parameter0: org.hibernate.LockOptions;	r4 := @parameter1: java.lang.String;	r1 = virtualinvoke r0.<org.hibernate.LockOptions: org.hibernate.LockMode getLockMode()>();	$r2 = <org.hibernate.dialect.SQLServerDialect$1: int[] $SwitchMap$org$hibernate$LockMode>;	$i0 = virtualinvoke r1.<org.hibernate.LockMode: int ordinal()>();	$i1 = $r2[$i0];	tableswitch($i1) {     case 1: goto $r12 = new java.lang.StringBuilder;     case 2: goto $r12 = new java.lang.StringBuilder;     case 3: goto $r12 = new java.lang.StringBuilder;     case 4: goto $r12 = new java.lang.StringBuilder;     case 5: goto $r8 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     default: goto return r4; };	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with (holdlock, rowlock)");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2